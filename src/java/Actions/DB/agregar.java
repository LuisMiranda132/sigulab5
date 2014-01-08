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
                
        ActionErrors error = null;
        HttpSession session = request.getSession(true);
        
        boolean existeUsuario;
        boolean existeEmpleado;
        boolean agrego;
        
        DBMS instance = DBMS.getInstance();
                
        // Validaciones del formulario.
        error = u.validateAgregar(mapping, request);

        // Si hay errores en el formulario, retorna FAILURE.
        if (error.size() != 0) {
            saveErrors(request, error);
            session.removeAttribute("lologreA");
            return mapping.findForward(FAILURE);
        }
        
        // Busca si el empleado a agregar se encuentra en el CAS.
        existeUsuario = (instance.consultarCas(u) != null);
        
//        existeUsuario = (instance.obtenerUsuario(u) != null);
        
        // Si encuentra al usuario, lo busca en la tabla de empleado.
        if (existeUsuario) {
            
            // Busca si el usuario existe en la tabla de empleado.
            existeEmpleado = (instance.obtenerEmpleado(u) != null);
            
            // Si no existe el usuario en la tabla de empleado, lo agrega.
            if (!existeEmpleado) {
                agrego = instance.agregarEmpleado(u);

                if (agrego) {
                    u.limpiarE();
                    session.setAttribute("lologreA","conga!");
                    session.removeAttribute("noExistente");                
                    session.removeAttribute("empExistente");                                    
                    return mapping.findForward(SUCCESS);

                } else {
                    session.removeAttribute("lologreA");
                    return mapping.findForward(FAILURE);
                }
                
            // Si existe el usuario, se notifica que dicho usuario ya ha sido
            // agregado como empleado.
            } else {
                session.removeAttribute("lologreA");
                session.setAttribute("empExistente", "");
                return mapping.findForward(FAILURE);
            }
           
        // Si no consigue al usuario en la tabla de usuario, se notifica que
        // dicho usuario no existe.
        } else {
            session.removeAttribute("lologre");
            session.setAttribute("noExistente", "");
            return mapping.findForward(FAILURE);
        }

    }
    
}