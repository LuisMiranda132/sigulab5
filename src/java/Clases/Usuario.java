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
 * @author luismiranda
 */
public class Usuario extends org.apache.struts.action.ActionForm {
    
    protected String usbid;
    protected String nombres;
    protected String apellidos;
    protected String cedula;

    protected String errorUsbid;
   
    /**
     *
     */
    public Usuario() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @return the usbid
     */
    public String getUsbid() {
        return usbid;
    }

    /**
     * @param usbid the usbid to set
     */
    public void setUsbid(String usbid) {
        this.usbid = usbid;
    }

    /**
     * @return the nombres
     */
    public String getNombres() {
        return nombres;
    }

    /**
     * @param nombres the nombres to set
     */
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    /**
     * @return the apellidos
     */
    public String getApellidos() {
        return apellidos;
    }

    /**
     * @param apellidos the apellidos to set
     */
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    /**
     * @return the cedula
     */
    public String getCedula() {
        return cedula;
    }

    /**
     * @param cedula the cedula to set
     */
    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    /**
     * @return the errorUsbid
     */
    public String getErrorUsbid() {
        return errorUsbid;
    }

    /**
     * @param errorUsbid the errorUsbid to set
     */
    public void setErrorUsbid(String errorUsbid) {
        this.errorUsbid = errorUsbid;
    }
    
    public void limpiar() {
        this.usbid = null;
        this.nombres = null;
        this.apellidos = null;
        this.cedula = null;
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        return errors;
    }   
    
}
