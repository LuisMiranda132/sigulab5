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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        
        ActionErrors errors = bean.validate(mapping, request);
        
        if (errors.size() != 0) {
            bean.reset();
            return mapping.findForward(FAILURE);
        }

        Empleado dummy = new Empleado();
        dummy.setUsbid(bean.getUsbid());
        
        DBMS db = DBMS.getInstance();
        Empleado user = db.obtenerEmpleado(dummy);
                
        if (user == null) {
            bean.reset();
//            errors.add("credenciales", new ActionMessage("error.credenciales"));
            return mapping.findForward(FAILURE);
        }
                
        if (user.getTipoE().contentEquals("jefe")){
            return mapping.findForward(JEFE);
        }else if(user.getTipoE().contentEquals("tecnico")){
            return mapping.findForward(TECNICO);
        }
                
        return mapping.findForward(TECNICO);
    }
}
