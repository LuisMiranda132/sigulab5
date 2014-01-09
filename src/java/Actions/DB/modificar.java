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
        /*
        Empleado bean = (Empleado) form;
        
        DBMS db = DBMS.getInstance();
        
        Empleado dummy = new Empleado();
        dummy.setUsbid(bean.getUsbid());
        
        Empleado empleado = db.obtenerEmpleado(dummy);
        
        HttpSession session = request.getSession(true);
        
        ActionErrors error = null;
        
        error = empleado.validateTodoE(mapping, request);
        boolean huboError = false;
        
        if (error.size() != 0) {
            huboError = true;
        }
        
        if (huboError) {
            
            saveErrors(request, error);
            session.removeAttribute("nolologre");
            return mapping.findForward(FAILURE);
            
        } else {
            
            boolean agrego = db.modificarUsuario(empleado);
            

            if (agrego) {
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
    */
        
        Empleado u = (Empleado) form;
        HttpSession session = request.getSession(true);
        
        ActionErrors error = null;
        ActionErrors error_anos = null;
        
        boolean huboError = false;
        boolean huboError_anos = false;
        
        error = u.validateTodoE(mapping, request);
        
        if ((!u.getAno_for().equals(""))||(!u.getAno_pub().equals(""))){
            error_anos = u.validateAnos(mapping, request);
            if (error_anos.size() != 0){
                huboError_anos = true;
            }
            if (huboError_anos){
                saveErrors(request, error_anos);
                session.removeAttribute("lologre");
                return mapping.findForward(FAILURE);
            }
        }               
        
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
                    db.agregarPublicacion(u);
                }
                if (!u.getFormacion().equals("")){
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
