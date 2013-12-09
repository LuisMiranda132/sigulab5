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
    protected int cedula;
    protected String correo;
    protected String direccion;
    protected String telefono_casa;
    protected String telefono_celular;
    protected String tipo;
    
    protected String errorUsbid;
    protected String errorCorreo;
    protected String errorTelefono_casa;
    protected String errorTelefono_celular;
    
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
    public int getCedula() {
        return cedula;
    }

    /**
     * @param cedula the cedula to set
     */
    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    /**
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the telefono_casa
     */
    public String getTelefono_casa() {
        return telefono_casa;
    }

    /**
     * @param telefono_casa the telefono_casa to set
     */
    public void setTelefono_casa(String telefono_casa) {
        this.telefono_casa = telefono_casa;
    }

    /**
     * @return the telefono_celular
     */
    public String getTelefono_celular() {
        return telefono_celular;
    }

    /**
     * @param telefono_celular the telefono_celular to set
     */
    public void setTelefono_celular(String telefono_celular) {
        this.telefono_celular = telefono_celular;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
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

    /**
     * @return the errorCorreo
     */
    public String getErrorCorreo() {
        return errorCorreo;
    }

    /**
     * @param errorCorreo the errorCorreo to set
     */
    public void setErrorCorreo(String errorCorreo) {
        this.errorCorreo = errorCorreo;
    }

    /**
     * @return the errorTelefono_casa
     */
    public String getErrorTelefono_casa() {
        return errorTelefono_casa;
    }

    /**
     * @param errorTelefono_casa the errorTelefono_casa to set
     */
    public void setErrorTelefono_casa(String errorTelefono_casa) {
        this.errorTelefono_casa = errorTelefono_casa;
    }

    /**
     * @return the errorTelefono_celular
     */
    public String getErrorTelefono_celular() {
        return errorTelefono_celular;
    }

    /**
     * @param errorTelefono_celular the errorTelefono_celular to set
     */
    public void setErrorTelefono_celular(String errorTelefono_celular) {
        this.errorTelefono_celular = errorTelefono_celular;
    }    
    
    public void limpiar() {
        this.usbid = null;
        this.nombres = null;
        this.apellidos = null;
        this.cedula = 0;
        this.correo = null;
        this.direccion = null;
        this.telefono_casa = null;
        this.telefono_celular = null;
        this.tipo = null;
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
    
    public ActionErrors validateVacio(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        if(this.getTipo().contentEquals("")
                ||this.getUsbid()==null
                ||this.getApellidos().contentEquals("")
                ||this.getCedula()==0
                ||this.getNombres().contentEquals("")
                ||this.getUsbid().contentEquals("")){
            errors.add("error", new ActionMessage("error.usuario.vacio"));
        }
        
        return errors;
    }
    
    
    public ActionErrors validateTodo(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        this.setErrorUsbid("");
        this.setErrorCorreo("");
        this.setErrorTelefono_casa("");
        this.setErrorTelefono_celular("");
        
        if (getCorreo().indexOf("@")==-1){
            this.setErrorCorreo("error");
            errors.add("correo", new ActionMessage("error.codigo.required"));
        }
        
        if (!getTelefono_casa().matches("\\d{11}")){
            this.setErrorTelefono_casa("error");
            errors.add("telefono_casa", new ActionMessage("error.codigo.required"));
        }
        
        if (!getTelefono_celular().matches("\\d{11}")){
            this.setErrorTelefono_celular("error");
            errors.add("telefono_celular", new ActionMessage("error.codigo.required"));
        }

        
        return errors;
    }

}
