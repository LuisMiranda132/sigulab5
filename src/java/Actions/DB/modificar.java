/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.DB;

import Clases.Empleado;
import Clases.LoginForm;
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
import org.apache.struts.upload.FormFile;

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
        ActionErrors error_formacion = null;
        ActionErrors error_publicacion = null;
        
        boolean huboError = false;
        boolean huboError_anos_pub = false;
        boolean huboError_anos_for = false;
        boolean huboError_formacion = false;
        boolean huboError_publicacion = false;
        
        error = u.validateTodoE(mapping, request);
        
        if (!u.getAno_for().equals("")){

            error_formacion = u.validateFormacion(mapping, request);
            if (error_formacion.size() != 0){
                huboError_formacion = true;
            }
            if (huboError_formacion){
                saveErrors(request, error_formacion);
                session.removeAttribute("lologre");
                return mapping.findForward(FAILURE);
            }

            error_anos_for = u.validateAno_for(mapping, request);
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

            error_publicacion = u.validatePublicacion(mapping, request);
            if (error_publicacion.size() != 0){
                huboError_publicacion = true;
            }
            if (huboError_publicacion){
                saveErrors(request, error_publicacion);
                session.removeAttribute("lologre");
                return mapping.findForward(FAILURE);
            }

            error_anos_pub = u.validateAno_pub(mapping, request);
            if (error_anos_pub.size() != 0){
                huboError_anos_pub = true;
            }
            if (huboError_anos_pub){
                saveErrors(request, error_anos_pub);
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
            
            FormFile imagen = u.getImagenfile();
            String path = getServlet().getServletContext().getRealPath("/")+"images/perfiles";
            
            File folder = new File(path);
	    if(!folder.exists()){
	    	folder.mkdir();
	    }
            
            if(!("").equals(imagen.getFileName())){
                String fileName = u.getUsbid();
            
                File newFile = new File(path,fileName);
            
                FileOutputStream fos = new FileOutputStream(newFile);
            
                fos.write(imagen.getFileData());
                fos.flush();
                fos.close();
            
                u.setImagen("images/perfiles/"+u.getUsbid());
            }
            
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
