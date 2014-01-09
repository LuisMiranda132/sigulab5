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

public class Habilidad extends Empleado{
    
    private String habilidad;

    /**
     *
     */
    public Habilidad() {
        super();
        this.usbid = null;
        this.habilidad = null;

    }
    
    /**
     *
     */
    public void limpiarH(){
        this.limpiar();
        this.usbid = null;
        this.habilidad = null;
     }
    
    /**
     * @return the habilidad
     */
    @Override
    public String getHabilidad() {
        return habilidad;
    }

    /**
     * @param habilidad the habilidad to set
     */
    @Override
    public void setHabilidad(String habilidad) {
        this.habilidad = habilidad;
    }


}
