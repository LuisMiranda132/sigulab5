package Actions.Login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.*;
import DBMS.DBMS;
import Clases.LoginForm;
import Clases.Empleado;
import Clases.Usuario;

import java.util.ArrayList;
import DBMS.DBMS;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author michelle
 */
public class LoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";
    private static final String JEFE = "jefe";
    private static final String TECNICO = "tecnico";
    
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
        
        LoginForm bean = (LoginForm) form;
        Empleado dummy = new Empleado();
        Empleado user;
        
        ActionErrors error = null;
        HttpSession session = request.getSession(true);
        DBMS db;
        
        session.removeAttribute("errorCredenciales");
        
        // Validaciones del formulario.
        error = bean.validate(mapping, request);
        
        if (error.size() != 0) {
            saveErrors(request, error);
            return mapping.findForward(FAILURE);
        }
                        
        dummy.setUsbid(bean.getUsbid());
        
        db = DBMS.getInstance();

        user = db.obtenerEmpleado(dummy);

        Empleado usuario = new Empleado();
        usuario.setUsbid(bean.getUsbid());

        //Empleado
        ArrayList<Empleado> EmpleadoPerfil = new ArrayList<Empleado>();
        Empleado emp = DBMS.getInstance().obtenerEmpleado(usuario);
        EmpleadoPerfil.add(emp);

        session.setAttribute("user", EmpleadoPerfil);
        session.setAttribute("usbid", bean.getUsbid());
        
        if ((user == null) || (user.getVisibilidad() == 0)) {
            System.out.println("No USER");
            bean.reset();
            System.out.println("Error Credenciales");
            session.setAttribute("errorCredenciales", "");
            return mapping.findForward(FAILURE);
        }
                
        if (user.getTipo_empleado().contentEquals("jefe")){
            return mapping.findForward(JEFE);
        }else if(user.getTipo_empleado().contentEquals("tecnico")){
            return mapping.findForward(TECNICO);
        }
                
        return mapping.findForward(TECNICO);
    }
}
