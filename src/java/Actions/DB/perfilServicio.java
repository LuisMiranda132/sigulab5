/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Servicio;
import Clases.LoginForm;
import java.util.ArrayList;
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
public class perfilServicio extends org.apache.struts.action.Action {
    
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
        
        HttpSession session = request.getSession(true);


        Servicio serCodigo = new Servicio();
        serCodigo.setCodigo(request.getParameter("codigo"));

        ArrayList<Servicio> PerfilServicio = new ArrayList<Servicio>();
        Servicio servicios = DBMS.getInstance().obtenerServicio(serCodigo);
        PerfilServicio.add(servicios);

        session.setAttribute("ser", PerfilServicio);

        return mapping.findForward(SUCCESS);
    }
        
    
}
