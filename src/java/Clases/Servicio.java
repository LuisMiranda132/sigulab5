/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.util.LabelValueBean;

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
    private Integer visibilidad; 
    private List labs = new ArrayList<Laboratorio>();
        
    /**
     *
     */
    public Servicio() {
        this.codigo=null;
        this.nombre=null;
        this.imagen=null;
        this.laboratorio=null;
        this.visibilidad=1;
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
       //         this.getImagen().contentEquals("")||
                this.getLaboratorio().contentEquals("")||
                this.getNombre().contentEquals("")
                )
       //         ||
       //         this.getCaracteristicas().contentEquals("")){
                {
            errors.add("error",new ActionMessage("error.servicio.vacio"));
        }
        else{
        }

        /*
        if(!this.getPagweb().matches("/^(http\:\/\/[a-zA-Z0-9_\-]+(?:\.[a-zA-Z0-9_\-]+)*\.[a-zA-Z]{2,4}(?:\/[a-zA-Z0-9_]+)*(?:\/[a-zA-Z0-9_]+\.[a-zA-Z]{2,4}(?:\?[a-zA-Z0-9_]+\=[a-zA-Z0-9_]+)?)?(?:\&[a-zA-Z0-9_]+\=[a-zA-Z0-9_]+)*)$/")){
            error.add("error",new ActionMessage("error.laboratorio.web"));
        }
        */
        
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
     * @return the visibilidad
     */
    public Integer getVisibilidad() {
        return visibilidad;
    }

    /**
     * @param visibilidad the visibilidad to set
     */
    public void setVisibilidad(Integer visibilidad) {
        this.visibilidad = visibilidad;
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
    
        /**
     * @return the labs
     */
    public Collection getLabs() {
        return labs;
    }

    /**
     * @param labs the labs to set
     */
    public void setLabs(List<Laboratorio> labs) {
        this.labs = new ArrayList<Laboratorio>();

        for (Laboratorio l:labs){
            this.labs.add(
                    new LabelValueBean(l.getNombre(),l.getCodigo())
            );
        }
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
