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
 */
public class Publicacion extends Usuario{
    
    private String publicacion;
    private String ano;

    /**
     *
     */
    public Publicacion() {
        super();
        this.usbid = null;
        this.publicacion = null;
        this.ano = null;
    }
    
    /**
     *
     */
    public void limpiarP(){
        this.limpiar();
        this.usbid = null;
        this.publicacion = null;
        this.ano = null;
    }
    
    /**
     * @return the publicacion
     */
    public String getPublicacion() {
        return publicacion;
    }

    /**
     * @param publicacion the publicacion to set
     */
    public void setPublicacion(String publicacion) {
        this.publicacion = publicacion;
    }

    /**
     * @return the ano
     */
    public String getAno() {
        return ano;
    }

    /**
     * @param ano the ano to set
     */
    public void setAno(String ano) {
        this.ano = ano;
    }
     
}
