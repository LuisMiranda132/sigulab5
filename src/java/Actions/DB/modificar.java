/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Empleado;
import Clases.LoginForm;
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
public class modificar extends org.apache.struts.action.Action {
    
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
        HttpSession session = request.getSession(true);
        
        ActionErrors error = null;
        ActionErrors error_anos_pub = null;
        ActionErrors error_anos_for = null;
        
        boolean huboError = false;
        boolean huboError_anos_pub = false;
        boolean huboError_anos_for = false;
        
        error = u.validateTodoE(mapping, request);
        /*
        if (!u.getAno_for().equals("")){
            error_anos_for = u.validateAnos(mapping, request);
            if (error_anos_for.size() != 0){
                huboError_anos_for = true;
            }
            if (huboError_anos_for){
                saveErrors(request, error_anos_for);
                session.removeAttribute("lologre");
                return mapping.findForward(FAILURE);
            }
        }
        if (!u.getAno_pub().equals("")){
            error_anos_pub = u.validateAnos(mapping, request);
            if (error_anos_pub.size() != 0){
                huboError_anos_pub = true;
            }
            if (huboError_anos_pub){
                saveErrors(request, error_anos_pub);
                session.removeAttribute("lologre");
                return mapping.findForward(FAILURE);
            }
        }      */         
        
        if (error.size() != 0) {
            huboError = true;
        }
        
        if (huboError) {
            
            saveErrors(request, error);
            session.removeAttribute("lologre");
            return mapping.findForward(FAILURE);
            
        } else {
            
            DBMS db = DBMS.getInstance();
            
            boolean agrego = db.modificarEmpleado(u);
            

            if (agrego) {
                if (!u.getHabilidad().equals("")){
                    db.agregarHabilidad(u);
                }
                if (!u.getPublicacion().equals("")){
                    error = u.validateAno_pub(mapping, request);
                    if (error.size() != 0) {
                        huboError = true;
                    }
                    if (huboError) {
            
                        saveErrors(request, error);
                        session.removeAttribute("lologre");
                        return mapping.findForward(FAILURE);
                    }
                    db.agregarPublicacion(u);
                }
                if (!u.getFormacion().equals("")){
                    error = u.validateAno_for(mapping, request);
                    if (error.size() != 0) {
                        huboError = true;
                    }
                    if (huboError) {
            
                        saveErrors(request, error);
                        session.removeAttribute("lologre");
                        return mapping.findForward(FAILURE);
                    }
                    db.agregarFormacion(u);
                }
                
                session.setAttribute("lologre","conga!");
                return mapping.findForward(SUCCESS);
            } else {
                session.removeAttribute("lologre");
                return mapping.findForward(FAILURE);
            }
        }
        
//        Recuerden que esto es una plantilla trabajada con condicionales
//        dentro de su sistema ustedes deben modelar tal cual si fuera un programa
//        comun y corriente, es decir, pueden usar IF, ELSE, WHILE, entre otras
//        herramientas que provea java para realizar su flujo en el sistema.
    }
        
}
