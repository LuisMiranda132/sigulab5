/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author michelle
 */
public class LoginForm extends org.apache.struts.action.ActionForm {
    
    private String usbid;
    
    private String password;

    /**
     *
     */
    public LoginForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     *
     * @return
     */
    public String getUsbid() {
        return usbid;
    }

    /**
     *
     * @param usbid
     */
    public void setUsbid(String usbid) {
        this.usbid = usbid;
    }

    /**
     *
     * @return
     */
    public String getPassword() {
        return password;
    }

    /**
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    /**
     *
     */
    public void reset() {
        this.usbid = null;
        this.password = null;
    }
    
    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        
        ActionErrors errors = new ActionErrors();
        
        if (this.getUsbid().equals("") && 
            this.getPassword().equals("")) {
            errors.add("usbid", new ActionMessage("error.usbid.requerido"));
            errors.add("password", new ActionMessage("error.password.requerido"));
            
        } else if (this.getUsbid().equals("")) {
            errors.add("usbid", new ActionMessage("error.usbid.requerido"));
            
        } else if (this.getPassword().equals("")) {
            errors.add("password", new ActionMessage("error.password.requerido"));
        }

        return errors;
    }

}
