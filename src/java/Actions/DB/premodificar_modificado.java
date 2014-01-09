/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.LoginForm;
import Clases.Empleado;
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
public class premodificar_modificado extends org.apache.struts.action.Action {
    /* forward name="success" path="" */
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

        LoginForm l = (LoginForm) form;
        Empleado u = new Empleado();
        u.setUsbid(l.getUsbid());
        
        HttpSession session = request.getSession(true);
               
        ActionErrors error=null;
                
        if(u.getUsbid()==""){
            session.removeAttribute("lologre");
            return mapping.findForward(FAILURE);
        }
        
        error = u.validate(mapping, request);
        
        if(error == null){
            session.removeAttribute("lologre");
            return mapping.findForward(FAILURE);
        }
        
        boolean huboError = false;
        
        if (error.size() != 0) {
            
            huboError = true;
        }
        
                if (huboError) {
            session.removeAttribute("lologre");
            saveErrors(request, error);
            return mapping.findForward(FAILURE);
            
        } else {

            Empleado user = DBMS.getInstance().obtenerEmpleado(u);
            
            if (user == null) {
                u.limpiar();
                session.removeAttribute("lologre");
                return mapping.findForward(FAILURE);
            }
            
            user.limpiarFPH();
            u.limpiarFPH();
            session.setAttribute("Empleado", user);
            session.setAttribute("lologre","conga!");
            return mapping.findForward(SUCCESS);
        }
        
    }        
    
}