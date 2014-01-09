/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Empleado;
import Clases.Habilidad;
import Clases.Formacion;
import Clases.Publicacion;
import Clases.LoginForm;
import java.util.ArrayList;
import DBMS.DBMS;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author luismiranda
 */
public class perfilPersonalL extends org.apache.struts.action.Action {
    
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
        
        HttpSession session = request.getSession(true);

        Empleado usuario = new Empleado();
        usuario.setUsbid(request.getParameter("usbid"));

        //Empleado
        ArrayList<Empleado> EmpleadoPerfil = new ArrayList<Empleado>();
        Empleado emp = DBMS.getInstance().obtenerEmpleado(usuario);
        EmpleadoPerfil.add(emp);

        //Habilidad
        ArrayList<Habilidad> EmpleadoHabilidad = DBMS.getInstance().listarHabilidadEmpleado(usuario);
        
        //Publicacion
        ArrayList<Publicacion> EmpleadoPublicacion = DBMS.getInstance().listarPublicacionEmpleado(usuario);
        
        //Formacion
        ArrayList<Formacion> EmpleadoFormacion = DBMS.getInstance().listarFormacionEmpleado(usuario);

        session.setAttribute("user", EmpleadoPerfil);
        session.setAttribute("userHabilidad", EmpleadoHabilidad);
        session.setAttribute("userPublicacion", EmpleadoPublicacion);
        session.setAttribute("userFormacion", EmpleadoFormacion);
                
        return mapping.findForward(SUCCESS);
    }
        
    
}
