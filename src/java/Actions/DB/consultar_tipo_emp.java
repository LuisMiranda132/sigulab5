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
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author luismiranda
 */
public class consultar_tipo_emp extends org.apache.struts.action.Action {
    /* forward name="success" path="" */
    private static final String JEFE = "jefe";
    private static final String EMPLEADO = "empleado";
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
         
        LoginForm bean = (LoginForm) form;
         
        Empleado dummy = new Empleado();
        dummy.setUsbid(bean.getUsbid());
        
        DBMS db = DBMS.getInstance();
        
        Empleado user = db.obtenerEmpleado(dummy);
        
        if (user == null) {
            System.out.println("No USER");
            bean.reset();
//          errors.add("credenciales", new ActionMessage("error.credenciales"));
            return mapping.findForward(FAILURE);
        } else if (user.getTipo_empleado().contentEquals("jefe")){
            return mapping.findForward(JEFE);
        } else {
            return mapping.findForward(EMPLEADO);
        }
    }
}
