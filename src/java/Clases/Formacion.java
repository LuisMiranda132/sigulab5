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
public class Formacion extends Empleado{
    
    private String formacion;
    private String ano_for;
        
    public Formacion(){
        super();
        this.formacion = null;
        this.ano_for = null;

    }
    
    /**
     *
     */
    public void limpiarF(){
        this.limpiar();
        this.usbid = null;
        this.formacion = null;
        this.ano_for = null;
    }
    
    @Override
    public String getFormacion(){
        return formacion;
    }
    
    @Override
    public void setFormacion (String formacion){
        this.formacion = formacion;
    }
    
    @Override
    public String getAno_for(){
        return ano_for;
    }
    
    @Override
    public void setAno_for (String ano_for){
        this.ano_for = ano_for;
    }

}
