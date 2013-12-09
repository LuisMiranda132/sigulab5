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
    
    private String cargo;
    private String antiguedad;
    private String tipoE;

    private String errorAntiguedad;

    
    /**
     *
     */
    public Empleado() {
        super();
        this.cargo = null;
        this.antiguedad = null;
        this.tipoE = null;
    }
    
    /**
     *
     */
    public void limpiarE(){
        this.limpiar();
        this.cargo = null;
        this.antiguedad = null;
        this.tipoE = null;
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
     * @return the antiguedad
     */
    public String getAntiguedad() {
        return antiguedad;
    }

    /**
     * @param antiguedad the antiguedad to set
     */
    public void setAntiguedad(String antiguedad) {
        this.antiguedad = antiguedad;
    }

    /**
     * @return the tipo
     */
    public String getTipoE() {
        return tipoE;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipoE(String tipo) {
        this.tipoE = tipo;
    }

    /**
     * @return the errorAntiguedad
     */
    public String getErrorAntiguedad() {
        return errorAntiguedad;
    }

    /**
     * @param errorAntiguedad the errorAntiguedad to set
     */
    public void setErrorAntiguedad(String errorAntiguedad) {
        this.errorAntiguedad = errorAntiguedad;
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
        
        errors = this.validateVacio(mapping, request);
        
        if (errors.size() <= 0) {
            errors = this.validateAgregar(mapping, request);
        }
        
        return errors;
    }
    
    public ActionErrors validateAgregar(ActionMapping mapping, HttpServletRequest request) {
        
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
            Validacion nombres
            String entre 2 y 20 caracteres.
        */
        if (nombres.matches(".*\\d.*")) {
            errors.add("errorUsbid", new ActionMessage("error.usuario.nombre"));
        }
                   
        /*
            Validacion apellidos
            String entre 2 y 20 caracteres.
        */
        if (apellidos.matches(".*\\d.*")) {
            errors.add("errorUsbid", new ActionMessage("error.usuario.apellidos"));
        }
        
        /*
            Validacion cedula
            Entre 7 y 8 digitos.
        */
        if (!(cedula.matches("\\d{7,8}"))) {
            errors.add("errorUsbid", new ActionMessage("error.usuario.cedulaInvalido"));
        }
        
        /*
            Validacion anio Ingreso
            4 Digitos
        */
        if (!(antiguedad.matches("\\d{4}"))) {
            errors.add("errorUsbid", new ActionMessage("error.usuario.antiguedad"));
        }
                
        return errors;
    }    
    
    public ActionErrors validateAntiguedad(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        this.setErrorAntiguedad("");
        
        if(!getErrorAntiguedad().matches("\\d*")){
            this.setErrorAntiguedad("error");
            errors.add("error", new ActionMessage("error.empleado.antiguedad"));
        }
        
        return errors;
    } 
     
    public ActionErrors validateCampos(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        if(this.getCargo().contentEquals("")
                ||this.getAntiguedad().contentEquals("")
                ||this.getTipoE().contentEquals("")){
            errors.add("error",new ActionMessage("error.empleado.vacio"));
        }
        return errors;
    }
    
    public ActionErrors validateTodoE(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        
        this.setErrorAntiguedad("");
        
        if(this.getApellidos()==null||this.getCorreo()==null||this.getDireccion()==null
                ||this.getNombres()==null||this.getTelefono_casa()==null
                ||this.getTelefono_celular()==null||this.getTipo().contentEquals("")
                ||this.getUsbid()==null
                ||this.getApellidos().contentEquals("")
                ||this.getCorreo().contentEquals("")
                ||this.getDireccion().contentEquals("")
                ||this.getNombres().contentEquals("")
                ||this.getTelefono_celular().contentEquals("")
                ||this.getUsbid().contentEquals("")
                ||this.getCargo().contentEquals("")
                ||this.getAntiguedad().contentEquals("")
                ||this.getTipoE().contentEquals("")){
           
            errors.add("error",new ActionMessage("error.empleado.vacio"));
        
        }
        
        if(!this.getCorreo().matches("^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
            this.setErrorCorreo("error");
            errors.add("error",new ActionMessage("error.empleado.correo"));
            
        }
        
        if(!this.getTelefono_casa().matches("02\\d{9}")){
            this.setErrorTelefono_casa("error");
            errors.add("error",new ActionMessage("error.empleado.telefonoFijo"));
        }
        
        if(!this.getTelefono_celular().matches("04\\d{9}")){
            this.setErrorTelefono_celular("error");
            errors.add("error",new ActionMessage("error.empleado.telefonoCelular"));
        }
        
        return errors;
    } 

}
