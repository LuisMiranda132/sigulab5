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
public class Laboratorio extends org.apache.struts.action.ActionForm{
    
    private String codigo;
    private String nombre;
    private String sede;
    private String ubicacion;
    private String correo;
    private String pagweb;
    private String telefono;
    private String fax;
    private String caracteristicas;
    private String jefe;
    private Integer visibilidad;
    private List jefes = new ArrayList<Empleado>();
    
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
        this.telefono=null;
        this.fax=null;
        this.caracteristicas=null;
        this.jefe=null;
        this.visibilidad=0;
    }
    
    /**
     *
     */
    public void limpiarE(){
        this.codigo="";
        this.nombre="";
        this.sede="";
        this.ubicacion="";
        this.correo="";
        this.pagweb="";
        this.telefono="";
        this.fax="";
        this.caracteristicas="";
        this.jefe="";
        this.visibilidad=0;
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
                this.getCorreo().contentEquals("")||
                this.getJefe().contentEquals("")||
                this.getNombre().contentEquals("")||
                this.getPagweb().contentEquals("")||
                this.getTelefono().contentEquals("")||
                this.getFax().contentEquals("")||
                this.getCaracateristicas().contentEquals("")||
                this.getSede().contentEquals("")||
                this.getUbicacion().contentEquals("")){
            errors.add("error",new ActionMessage("error.laboratorio.vacio"));
        }
        else{
            if(!this.getCorreo().matches("^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
                errors.add("error",new ActionMessage("error.laboratorio.correo"));
            }
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
     * @return the fax
     */
    public String getFax() {
        return fax;
    }

    /**
     * @param fax the fax to set
     */
    public void setFax(String fax) {
        this.fax = fax;
    }
    
    /**
     * @return the caracteristicas
     */
    public String getCaracateristicas() {
        return caracteristicas;
    }

    /**
     * @param caracteristicas the caracteristicas to set
     */
    public void setCaracteristicas(String caracteristicas) {
        this.caracteristicas = caracteristicas;
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

    /**
     * @return the visivilidad
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
     * @return the jefes
     */
    public Collection getJefes() {
        return jefes;
    }

    /**
     * @param jefes the jefes to set
     */
    public void setJefes(List<Empleado> jefes) {
        this.jefes = new ArrayList<Empleado>();

        for (Empleado e:jefes){
            this.jefes.add(
                    new LabelValueBean(e.getNombres()+' '+e.getApellidos(),e.getUsbid())
            );
        }
    }

        public void limpiar() {
        this.codigo = null;
        this.nombre = null;
        this.sede = null;
        this.ubicacion = null;
        this.correo = null;
        this.pagweb = null;
        this.telefono = null;
        this.fax = null;
        this.caracteristicas = null;
        this.jefe = null;
        this.visibilidad = 0;
    }
    
}
