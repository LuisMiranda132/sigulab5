/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Laboratorio;
import Clases.Servicio;
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
 * @author josefigueredo
 */
public class premodificarServ extends org.apache.struts.action.Action {

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
        
        Servicio x = (Servicio) form;
        Servicio s = new Servicio();
        s.setCodigo(x.getCodigo());

        HttpSession session = request.getSession(true);
        session.removeAttribute("lologre");

        ActionErrors error = null;

        if (s.getCodigo() == "") {
            return mapping.findForward(FAILURE);
        }

        error = s.validate(mapping, request);

        if (error == null) {
            return mapping.findForward(FAILURE);
        }

        boolean huboError = false;

        if (error.size() != 0) {
            huboError = true;
        }

        if (huboError) {
            saveErrors(request, error);
            return mapping.findForward(FAILURE);

        } else {

            Servicio serv = DBMS.getInstance().obtenerServicio(s);
            serv.setLabs(DBMS.getInstance().listarLaboratoriosVisibles());

            if (serv == null) {
                s.limpiar();
                return mapping.findForward(FAILURE);
            }

            session.setAttribute("Servicio", serv);
            return mapping.findForward(SUCCESS);
        }

    }
}
