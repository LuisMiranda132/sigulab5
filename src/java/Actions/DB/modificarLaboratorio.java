/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Laboratorio;
import DBMS.DBMS;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;

/**
 *
 * @author josefigueredo
 */
public class modificarLaboratorio extends org.apache.struts.action.Action {
    
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
        
        Laboratorio l = (Laboratorio) form;
        HttpSession session = request.getSession(true);
        
        ActionErrors error = null;
        
        error = l.validateTodo(mapping, request);
        boolean huboError = false;
        
        if (error.size() != 0) {
            huboError = true;
        }
        
        if (huboError) {
            
            saveErrors(request, error);
            session.removeAttribute("lologre");
            return mapping.findForward(FAILURE);
            
        } else {
            
            FormFile imagen = l.getImagenfile();
            String path = getServlet().getServletContext().getRealPath("/")+"images/perfiles";
            
            File folder = new File(path);
	    if(!folder.exists()){
	    	folder.mkdir();
	    }
            
            if(!("").equals(imagen.getFileName())){
                if(!imagen.getFileName().matches("[^\s]+(\.(?i)(jpg|png))$")){
                    error.add("error",new ActionMessage("error.laboratorio.imagen"));
                    saveErrors(request, error);
                    session.removeAttribute("lologre");
                    return mapping.findForward(FAILURE);
                } else if(imagen.getFileSize()>524288){
                    error.add("error",new ActionMessage("error.laboratorio.imagen"));
                    saveErrors(request, error);
                    session.removeAttribute("lologre");
                    return mapping.findForward(FAILURE);
                }
                
                String fileName = l.getCodigo();
            
                File newFile = new File(path,fileName);
            
                FileOutputStream fos = new FileOutputStream(newFile);
            
                fos.write(imagen.getFileData());
                fos.flush();
                fos.close();
            
                l.setImagen("images/perfiles/"+l.getCodigo());
            }
            
            boolean agrego = DBMS.getInstance().modificarLaboratorio(l);
            

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
    
}
