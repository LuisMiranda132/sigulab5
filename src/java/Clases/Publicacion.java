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
 * @author alejandro
 */
public class Publicacion extends Empleado{
    
    private String publicacion;
    private String ano_pub;
    
    
    public Publicacion(){
        super();
        this.publicacion = null;
        this.ano_pub = null;
    }
    
    /**
     *
     */
    public void limpiarP(){
        this.limpiar();
        this.usbid = null;
        this.publicacion = null;
        this.ano_pub = null;
    }
    
    @Override
    public String getPublicacion(){
        return publicacion;
    }
    
    @Override
    public void setPublicacion (String publicacion){
        this.publicacion = publicacion;
    }
    
    @Override
    public String getAno_pub(){
        return ano_pub;
    }
    
    @Override
    public void setAno_pub (String ano_pub){
        this.ano_pub = ano_pub;
    }
}
