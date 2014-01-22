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

/**
 *
 * @author michelle
 */
public class agregarServicio extends org.apache.struts.action.Action {

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
        
        ActionErrors error = null;
        HttpSession session = request.getSession(true);
        DBMS instance;        
        
        String codigo;
        
        instance = DBMS.getInstance();

        // Validaciones del formulario.
//        error = s.validateAgregar(mapping, request);

        // Si hay errores en el formulario, retorna FAILURE.
//        if (error.size() != 0) {
//            saveErrors(request, error);
//            return mapping.findForward(FAILURE);
//        }
        
        codigo = s.getCodigo();
        
        // Verifica que dicho servicio no haya sido agregado anteriormente.
        
        
        
        return mapping.findForward(SUCCESS);
    }
}
