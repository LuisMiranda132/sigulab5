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
        
        if(!getErrorAntiguedad().matches("\\d*")){
            this.setErrorAntiguedad("error");
            errors.add("error", new ActionMessage("error.empleado.antiguedad"));
        }
        
        return errors;
    } 

}
