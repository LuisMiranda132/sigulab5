/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Servicio;
import DBMS.DBMS;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;

/**
 *
 * @author josefigueredo
 */
public class modificarServicio extends org.apache.struts.action.Action {

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
        
        Servicio s = (Servicio) form;
        HttpSession session = request.getSession(true);
        
        ActionErrors error = null;
        
        error = s.validateTodo(mapping, request);
        boolean huboError = false;
        
        if (error.size() != 0) {
            huboError = true;
        }
        
        if (huboError) {
            
            saveErrors(request, error);
            session.removeAttribute("lologre");
            return mapping.findForward(FAILURE);
            
        } else {
                        
            boolean agrego = DBMS.getInstance().modificarServicio(s);
            

            if (agrego) {
                session.setAttribute("lologre","conga!");
                return mapping.findForward(SUCCESS);
            } else {
                session.removeAttribute("lologre");
                return mapping.findForward(FAILURE);
            }
        }
    }
}
