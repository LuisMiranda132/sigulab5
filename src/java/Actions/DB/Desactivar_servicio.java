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
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author alejandro
 */
public class Desactivar_servicio extends org.apache.struts.action.Action {
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";
    private static final String NULO = "nulo";
    
    
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
 
        DBMS db = DBMS.getInstance();
                                
        Servicio servicio = new Servicio();
        servicio.setCodigo(request.getParameter("codigo"));
        Servicio ser = db.obtenerServicio(servicio);
        
        if (ser == null){
            return mapping.findForward(NULO);
        }else{
            if (db.desactivarVisibilidadSer(ser)){
                return mapping.findForward(SUCCESS);
            } else{
                return mapping.findForward(FAILURE);
            }
            
        }
    }
}