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
public class Formacion extends Usuario{
    
    private String item;
    private String ano;

    /**
     *
     */
    public Formacion() {
        super();
        this.usbid = null;
        this.item = null;
        this.ano = null;
    }
    
    /**
     *
     */
    public void limpiarF(){
        this.limpiar();
        this.usbid = null;
        this.item = null;
        this.ano = null;
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
