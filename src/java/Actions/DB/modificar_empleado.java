/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

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
 * @author donato
 */
public class modificar_empleado extends org.apache.struts.action.Action {
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
        
        Empleado u = (Empleado) form;
        
        ActionErrors error = null;
        HttpSession session = request.getSession(true);
        DBMS instance;

        instance = DBMS.getInstance();
        
        session.removeAttribute("usuarioModificado");
        session.removeAttribute("operacionFallida");        
        
        boolean empleadoModificado;        
        
        // Validaciones del formulario.
        error = u.validateModificarEmpleado(mapping, request);        
        
        // Si hay errores en el formulario, retorna FAILURE.
        if (error.size() != 0) {
            saveErrors(request, error);
            return mapping.findForward(FAILURE);
        }        
        
        // Dado que no hay errores en el formulario, se realizan las 
        // modificaciones en la base de datos.
        empleadoModificado = instance.modificarEmpleadoDesdeJefe(u);
        
        if (!empleadoModificado){
            session.setAttribute("operacionFallida", u);
            return mapping.findForward(FAILURE);
        }
        
        session.setAttribute("usuarioModificado", u);
        return mapping.findForward(SUCCESS);
        
    }
}
