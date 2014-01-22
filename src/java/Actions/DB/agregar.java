/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Usuario;
import Clases.Empleado;
import DBMS.DBMS;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author luismiranda
 */
public class agregar extends org.apache.struts.action.Action {
    
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";
    
    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        Empleado u = (Empleado) form;
        Usuario usuario = new Usuario();
        
        ActionErrors error = null;
        HttpSession session = request.getSession(true);
        DBMS instance;
        
        boolean existePersona;
        boolean existeUsuario;
        boolean existeEmpleado;
        boolean agregoUsuario;
        boolean agregoEmpleado;
        
        String tipoUsuario;
        String usbid;
        String nombres;
        String apellidos;
        String cedula;
        
        instance = DBMS.getInstance();

        session.removeAttribute("usuarioAgregado");
        session.removeAttribute("operacionFallida");
        session.removeAttribute("tipoUsuarioInvalido");
        session.removeAttribute("usuarioExistente");
        session.removeAttribute("usuarioInexistente");
                        
        // Validaciones del formulario.
        error = u.validateAgregar(mapping, request);

        // Si hay errores en el formulario, retorna FAILURE.
        if (error.size() != 0) {
            saveErrors(request, error);
            return mapping.findForward(FAILURE);
        }
        
        usbid = u.getUsbid();
        
        // Busca si el personal a agregar se encuentra en el CAS.
        usuario = instance.consultarCas(usbid);
        
        // Si encuentra a la persona, agrega en la tabla de usuario y en la 
        // tabla correspondiente segun su cargo.
        if (usuario != null) {
            
            // Busca si la persona existe en la tabla de usuario.
            existeUsuario = (instance.obtenerUsuario(u) != null);
            
            if (!existeUsuario) {
             
                nombres = usuario.getNombres();
                apellidos = usuario.getApellidos();
                cedula = usuario.getCedula();
                       
                u.setNombres(nombres);
                u.setApellidos(apellidos);
                u.setCedula(cedula);
                u.setStatus("Inactivo");
                u.setImagen("images/user.png");
                
                agregoUsuario = instance.agregarUsuario(u);
                System.out.println("agregoUsuario " + agregoUsuario);
                
                tipoUsuario = u.getTipo_usuario();
                System.out.println(tipoUsuario);
             
                // Si el usuario es de tipo empleado, se agrega en la tabla 
                // de empleado.
                if (tipoUsuario.equals("empleado")) {
                    
                    agregoEmpleado = instance.agregarEmpleado(u);
                    System.out.println("agregoEmpleado " + agregoEmpleado);

                    if (agregoUsuario && agregoEmpleado) {
                        
                        u.limpiarE();
                        session.setAttribute("usuarioAgregado", u);
                        return mapping.findForward(SUCCESS);
                        
                    } else {
                        
                        session.setAttribute("operacionFallida", u);
                        return mapping.findForward(FAILURE);
                        
                    }

                } else {
                    
                    session.setAttribute("tipoUsuarioInvalido", u);
                    return mapping.findForward(FAILURE);
                    
                }
                
            // Si existe el usuario, se notifica que dicho usuario ya ha sido
            // agregado.
            } else {
                session.setAttribute("usuarioExistente", u);
                return mapping.findForward(FAILURE);
                
            }

        // Si no existe la persona en el CAS, se notifica.
        } else {
            
            session.setAttribute("usuarioInexistente", u);
            return mapping.findForward(FAILURE);            
            
        }

    }
    
}