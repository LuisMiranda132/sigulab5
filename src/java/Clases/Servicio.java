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
public class Servicio extends org.apache.struts.action.ActionForm{
    
    private String codigo;
    private String nombre;
    private String caracteristicas;
    private String imagen;
    private String laboratorio;
        
    /**
     *
     */
    public Servicio() {
        this.codigo=null;
        this.nombre=null;
        this.imagen=null;
        this.laboratorio=null;
        this.caracteristicas=null;
    }
    
    /**
     *
     */
    public void limpiarL(){
        this.codigo="";
        this.nombre="";
        this.setImagen("");
        this.setLaboratorio("");
        this.caracteristicas="";
    }
    
    /**
     * @return the cargo
     */
    
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
    
    public ActionErrors validateTodo(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        
        if(this.getCodigo().contentEquals("")||
//                this.getImagen().contentEquals("")||
                this.getLaboratorio().contentEquals("")||
                this.getNombre().contentEquals("")||
                this.getCaracteristicas().contentEquals("")){
            errors.add("error",new ActionMessage("error.laboratorio.vacio"));
        }
        
        return errors;
    }

    /**
     * @return the codigo
     */
    public String getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the caracteristicas
     */
    public String getCaracteristicas() {
        return caracteristicas;
    }

    /**
     * @param caracteristicas the caracteristicas to set
     */
    public void setCaracteristicas(String caracteristicas) {
        this.caracteristicas = caracteristicas;
    }
    
    public void limpiar() {
        this.codigo = null;
        this.nombre = null;
        this.setImagen(null);
        this.caracteristicas = null;
        this.setLaboratorio(null);
    }

    /**
     * @return the imagen
     */
    public String getImagen() {
        return imagen;
    }

    /**
     * @param imagen the imagen to set
     */
    public void setImagen(String imagen) {
        this.imagen = imagen;
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
    
}
