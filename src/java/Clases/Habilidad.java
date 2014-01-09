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
public class Habilidad extends Usuario{
    
    private String item;

    /**
     *
     */
    public Habilidad() {
        super();
        this.usbid = null;
        this.item = null;
    }
    
    /**
     *
     */
    public void limpiarH(){
        this.limpiar();
        this.usbid = null;
        this.item = null;
     }
    
    /**
     * @return the item
     */
    public String getItem() {
        return item;
    }

    /**
     * @param item the item to set
     */
    public void setItem(String item) {
        this.item = item;
    }
     
}
