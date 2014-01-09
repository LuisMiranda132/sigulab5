/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Laboratorio;
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
public class agregarLaboratorio extends org.apache.struts.action.Action {
    
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
        
        Laboratorio u = (Laboratorio) form;
                
        ActionErrors error = null;
        HttpSession session = request.getSession(true);
        
        error = u.validateTodo(mapping, request);
                
//        boolean huboError = false;
        
        System.out.println(error.size());
        
        if (error.size() != 0) {
            saveErrors(request, error);
            session.removeAttribute("lologreA");
            return mapping.findForward(FAILURE);
        } else {
                        
            boolean agrego = DBMS.getInstance().agregarLaboratorio(u);
                
            if (agrego){
                u.limpiarE();
                session.setAttribute("lologreA","conga!");
                return mapping.findForward(SUCCESS);
                
            } else {
                session.removeAttribute("lologreA");
                return mapping.findForward(FAILURE);
            }
                
        }
        
//        Recuerden que esto es una plantilla trabajada con condicionales
//        dentro de su sistema ustedes deben modelar tal cual si fuera un programa
//        comun y corriente, es decir, pueden usar IF, ELSE, WHILE, entre otras
//        herramientas que provea java para realizar su flujo en el sistema.
    }
    
}
