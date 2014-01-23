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
    private static final String PRUEBA = "prueba";
    
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
        
        boolean existeServicio;
        boolean agregoServicio;
        
        String codigo;
        
        instance = DBMS.getInstance();

        session.removeAttribute("servicioAgregado");
        session.removeAttribute("operacionFallida");
        session.removeAttribute("servicioExistente");        
        
        // Validaciones del formulario.
        error = s.validateTodo(mapping, request);

        // Si hay errores en el formulario, retorna FAILURE.
        if (error.size() != 0) {
            saveErrors(request, error);
            return mapping.findForward(FAILURE);
        }
                
        // Verifica que dicho servicio no haya sido agregado anteriormente.
        existeServicio = (instance.obtenerServicio(s) != null);
        
        // Si no existe el servicio, se agrega.
        if (!existeServicio) {
        
            agregoServicio = instance.agregarServicio(s);
            System.out.println("agregoServicio " + agregoServicio);
            
            if (agregoServicio) {

                s.limpiar();
                session.setAttribute("servicioAgregado", s);
                return mapping.findForward(SUCCESS);

            } else {

                session.setAttribute("operacionFallida", s);
                return mapping.findForward(FAILURE);

            }
            
        // Si el servicio existe, se notifica que dicho servicio ya ha sido
        // agregado
        } else {
            s.limpiar();
            session.setAttribute("servicioExistente", s);
            return mapping.findForward(FAILURE);             
            
        }
        
    }
}
