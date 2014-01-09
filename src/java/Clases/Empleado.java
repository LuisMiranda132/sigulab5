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
public class Empleado extends Usuario{
    
    private String correo;
    private String direccion;
    private String cargo;
    private String ano_ingreso;
    private String tipo_empleado;
    private String status;    
    private String telefono;
    private String tipo_usuario;
    private String area_laboral;
    private String extension;
    private String laboratorio;    
    private int  visibilidad;
    private String formacion;
    private String publicacion;
    private String habilidad;
    private String ano_for;
    private String ano_pub;
    
    private String errorAnoIngreso;
    private String errorCorreo;
    private String errorTelefono;
    private String errorOcultar;
    private String errorAno_pub;
    private String errorAno_for;
    
    /**
     *
     */
    public Empleado() {
        super();
        this.usbid = null;
        this.correo = null;
        this.direccion = null;
        this.cargo = null;
        this.ano_ingreso = null;
        this.tipo_empleado = null;
        this.status = null;
        this.telefono = null;
        this.tipo_usuario = null;
        this.area_laboral = null;
        this.extension = null;
        this.laboratorio = null;
        this.visibilidad = 1;
        this.habilidad = null;
        this.formacion = null;
        this.publicacion = null;
        this.ano_for = null;
        this.ano_pub = null;
    }
    
    /**
     *
     */
    public void limpiarE(){
        this.limpiar();
        this.usbid = null;
        this.correo = null;
        this.direccion = null;
        this.cargo = null;
        this.ano_ingreso = null;
        this.tipo_empleado = null;
        this.status = null;
        this.telefono = null;
        this.tipo_usuario = null;
        this.area_laboral = null;
        this.extension = null;
        this.laboratorio = null;
        this.visibilidad = 0;
    }
    
    /**
     *
     */
    public void limpiarFPH(){
        this.publicacion = null;
        this.habilidad = null;
        this.formacion = null;
        this.ano_for = null;
        this.ano_pub = null;
    }
    
    
    /**
     * @return the cargo
     */
    public String getCargo() {
        return cargo;
    }

    /**
     * @param cargo the cargo to set
     */
    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    /**
     * @return the ano_ingreso
     */
    public String getAno_ingreso() {
        return ano_ingreso;
    }

    /**
     * @param ano_ingreso the ano_ingreso to set
     */
    public void setAno_ingreso(String ano_ingreso) {
        this.ano_ingreso = ano_ingreso;
    }

    /**
     * @return the tipo_empleado
     */
    public String getTipo_empleado() {
        return tipo_empleado;
    }

    /**
     * @param tipo_empleado the tipo_empleado to set
     */
    public void setTipo_empleado(String tipo_empleado) {
        this.tipo_empleado = tipo_empleado;
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
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
  
    /**
     * @return the tipo_usuario
     */
    public String getTipo_usuario() {
        return tipo_usuario;
    }

    /**
     * @param tipo_usuario the tipo_usuario to set
     */
    public void setTipo_usuario(String tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }
    
    /**
     * @return the visibilidad
     */
    public int getVisibilidad() {
        return visibilidad;
    }

    /**
     * @param visibilidad the visibilidad to set
     */
    public void setVisibilidad(int visibilidad) {
        this.visibilidad = visibilidad;
    }    
    
    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    /**
     * @return the area_laboral
     */
    public String getArea_laboral() {
        return area_laboral;
    }

    /**
     * @param area_laboral the area_laboral to set
     */
    public void setArea_laboral(String area_laboral) {
        this.area_laboral = area_laboral;
    }
    
    /**
     * @return the extension
     */
    public String getExtension() {
        return extension;
    }

    /**
     * @param extension the extension to set
     */
    public void setExtension(String extension) {
        this.extension = extension;
    } 
    
    /**
     * @return the laboratorio
     */
    public String getLaboratorio() {
        return laboratorio;
    }

    /**
     * @param laboratorio the laboratorio to set
     */
    public void setLaboratorio(String laboratorio) {
        this.laboratorio = laboratorio;
    } 
    
    public String getHabilidad(){
        return habilidad;
    }
    
    public void setHabilidad(String habilidad){
        this.habilidad = habilidad;
    }
    
    public String getFormacion(){
        return formacion;
    }
    
    public void setFormacion (String formacion){
        this.formacion = formacion;
    }
    
    public String getPublicacion(){
        return publicacion;
    }
    
    public void setPublicacion (String publicacion){
        this.publicacion = publicacion;
    }
    
    public String getAno_for(){
        return ano_for;
    }
    
    public void setAno_for (String ano_for){
        this.ano_for = ano_for;
    }
    
    public String getAno_pub(){
        return ano_pub;
    }
    
    public void setAno_pub (String ano_pub){
        this.ano_pub = ano_pub;
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
     * @return the errorTelefono
     */
    public String getErrorTelefono() {
        return errorTelefono;
    }

    /**
     * @param errorTelefono the errorTelefono to set
     */
    public void setErrorTelefono(String errorTelefono) {
        this.errorTelefono = errorTelefono;
    }

    /**
     * @return the errorOcultar
     */
    public String getErrorOcultar() {
        return errorOcultar;
    }

    /**
     * @param errorOcultar the errorOcultar to set
     */
    public void setErrorOcultar(String errorOcultar) {
        this.errorOcultar = errorOcultar;
    }    
    
    /**
     * @return the errorAnoIngreso
     */
    public String getErrorAnoIngreso() {
        return errorAnoIngreso;
    }
    
    /**
     * @param errorAnoIngreso the errorAnoIngreso to set
     */
    public void setErrorAnoIngreso(String errorAnoIngreso) {
        this.errorAnoIngreso = errorAnoIngreso;
    }    
    
    /**
     * @return the errorAnos
     */
    public String getErrorAno_for() {
        return errorAno_for;
    }
    
    /**
     * @param errorAnos the errorAnos to set
     */
    public void setErrorAno_for(String errorAno_for) {
        this.errorAno_for = errorAno_for;
    }
    
    /**
     * @return the errorAnos
     */
    public String getErrorAno_pub() {
        return errorAno_for;
    }
    
    /**
     * @param errorAnos the errorAnos to set
     */
    public void setErrorAno_pub(String errorAno_pub) {
        this.errorAno_pub = errorAno_pub;
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
    
    public ActionErrors validateAgregar(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        errors = this.validateVacio(mapping, request);
        
        if (errors.size() <= 0) {
            errors = this.validateCamposAgregar(mapping, request);
        }
        
        return errors;
    }
    
    public ActionErrors validateCamposAgregar(ActionMapping mapping, HttpServletRequest request) {
        
        ActionErrors errors = new ActionErrors();
                
        /* 
            Validacion usbid
            Puede ser un carnet con formato XX-XXXXX
            o un string entre 2 y 20 caracteres.
        */
        if (usbid.matches(".*\\d.*")){
            if (!usbid.matches("\\d{2}-\\d{5}")) {
                errors.add("errorUsbid", new ActionMessage("error.usuario.usbidInvalido2"));
            }        
        } else {
            if (!(usbid.matches("\\S{2,20}"))) {
                errors.add("errorUsbid", new ActionMessage("error.usuario.usbidInvalido1"));
            }
        } 
                        
        /*
            Validacion anio Ingreso
            4 Digitos
        */
        if (!(ano_ingreso.matches("\\d{4}"))) {
            errors.add("errorUsbid", new ActionMessage("error.usuario.antiguedad"));
        }
                
        return errors;
    }    
    
    public ActionErrors validateAnoIngreso(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        this.setErrorAnoIngreso("");
        
        if(!getErrorAnoIngreso().matches("\\d*")){
            this.setErrorAnoIngreso("error");
            errors.add("error", new ActionMessage("error.empleado.antiguedad"));
        }
        
        return errors;
    } 
    
    public ActionErrors validateAno_for(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        this.setErrorAno_for("");
        
        if(!ano_for.matches("\\d{4}")){
            this.setErrorAno_for("error");
            errors.add("error", new ActionMessage("error.empleado.anos"));
        }
        
        return errors;
    } 
    
    public ActionErrors validateAno_pub(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        this.setErrorAno_pub("");
        
        if(!ano_pub.matches("\\d{4}")){
            this.setErrorAno_pub("error");
            errors.add("error", new ActionMessage("error.empleado.anos"));
        }
        
        return errors;
    } 
     
    public ActionErrors validateCampos(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        if(this.getCargo().contentEquals("")
                ||this.getAno_ingreso().contentEquals("")
                ||this.getTipo_empleado().contentEquals("")){
            errors.add("error",new ActionMessage("error.empleado.vacio"));
        }
        return errors;
    }
    
    public ActionErrors validateVacio(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        if(this.getTipo_usuario().contentEquals("")
                ||this.getUsbid().contentEquals("")){
            errors.add("error", new ActionMessage("error.usuario.vacio"));
        }
        
        return errors;
    }
    
    public ActionErrors validateOcultar(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        this.setErrorOcultar("error");
        errors.add("error", new ActionMessage("error.consultar.ocultar"));
        return errors;       
    }
    
    public ActionErrors validateTodo(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        this.setErrorUsbid("");
        this.setErrorCorreo("");
        this.setErrorTelefono("");
        
        if (getCorreo().indexOf("@")==-1){
            this.setErrorCorreo("error");
            errors.add("correo", new ActionMessage("error.codigo.required"));
        }
        
        if (!getTelefono().matches("\\d{11}")){
            this.setErrorTelefono("error");
            errors.add("telefono", new ActionMessage("error.codigo.required"));
        }
              
        return errors;
    }
    
    public ActionErrors validateTodoE(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        this.setErrorAnoIngreso("");
        
        if(this.getApellidos()==null||this.getCorreo()==null||this.getDireccion()==null
                ||this.getNombres()==null||this.getTelefono()==null
                ||this.getTipo_usuario().contentEquals("")
                ||this.getUsbid()==null
                ||this.getApellidos().contentEquals("")
                ||this.getCorreo().contentEquals("")
                ||this.getDireccion().contentEquals("")
                ||this.getNombres().contentEquals("")
                ||this.getUsbid().contentEquals("")
                ||this.getCargo().contentEquals("")
                ||this.getAno_ingreso().contentEquals("")
                ||this.getTipo_empleado().contentEquals("")){
           
            errors.add("error",new ActionMessage("error.empleado.vacio"));
        
        }
        
        if(!this.getCorreo().matches("^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
            this.setErrorCorreo("error");
            errors.add("error",new ActionMessage("error.empleado.correo"));
            
        }
        
        if(!this.getTelefono().matches("02\\d{9}")){
            this.setErrorTelefono("error");
            errors.add("error",new ActionMessage("error.empleado.telefonoFijo"));
        }
               
        return errors;
    } 

}
