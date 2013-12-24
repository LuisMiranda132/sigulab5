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
public class Laboratorio extends org.apache.struts.action.ActionForm{
    
    
    private String codigo;
    private String nombre;
    private String sede;
    private String ubicacion;
    private String correo;
    private String pagweb;
    private String jefe;
    
    /**
     *
     */
    public Laboratorio() {
        this.codigo=null;
        this.nombre=null;
        this.sede=null;
        this.ubicacion=null;
        this.correo=null;
        this.pagweb=null;
        this.jefe=null;
    }
    
    /**
     *
     */
    public void limpiarE(){

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
        
        if(!this.getCorreo().matches("^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
            errors.add("error",new ActionMessage("error.laboratorio.correo"));
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
     * @return the sede
     */
    public String getSede() {
        return sede;
    }

    /**
     * @param sede the sede to set
     */
    public void setSede(String sede) {
        this.sede = sede;
    }

    /**
     * @return the ubicacion
     */
    public String getUbicacion() {
        return ubicacion;
    }

    /**
     * @param ubicacion the ubicacion to set
     */
    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
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
     * @return the pagweb
     */
    public String getPagweb() {
        return pagweb;
    }

    /**
     * @param pagweb the pagweb to set
     */
    public void setPagweb(String pagweb) {
        this.pagweb = pagweb;
    }

    /**
     * @return the jefe
     */
    public String getJefe() {
        return jefe;
    }

    /**
     * @param jefe the jefe to set
     */
    public void setJefe(String jefe) {
        this.jefe = jefe;
    }
    
}