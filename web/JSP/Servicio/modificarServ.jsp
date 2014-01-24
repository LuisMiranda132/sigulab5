<%-- 
    Document   : modificarServ
    Created on : Jan 22, 2014, 8:43:57 PM
    Author     : josefigueredo
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css" media="all">
            @import "CSS/system.base.css";
        </style>
        
        <style type="text/css" media="all">
            @import "CSS/field.css";
            @import "CSS/user.css";    
            @import "CSS/views.css";
        </style>
        <style type="text/css" media="all">
            @import "CSS/ckeditor.css";
            @import "CSS/ctools.css";
        </style>
        <style type="text/css" media="all">
            @import "CSS/layout.css";
            @import "CSS/style_interno.css";
            @import "CSS/form.css";
            @import "CSS/colors.css";
        </style>   
        
        <script src="js/jquery-1.9.1.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/scripts.js"></script>        
                
    </head>

    <body>

        <div class="titulo_formulario"> Modificar Servicio</div>
        
        <center class="errors" align="center">
            <html:errors/>
        </center>
        
        <!-- LOGIC PRESENT </!-->
        <logic:present name="lologre">
            <center class="logic_success" align="center">
                El servicio ha sido modificado exitosamente.
            </center>
        </logic:present>        
        <!-- FIN LOGIC PRESENT </!-->

        <html:form action="modificarServicio" enctype="multipart/form-data" style="margin-left: 45px;">
            <table border="0">
                <tbody>
                    <tr>
                        <td> Código </td>
                        <td>
                            <bean:write name="Servicio" property="codigo"/>
                        </td>
                    </tr>                    
                

                    <tr>
                        <td> Nombre <span style='color:red'>*</span></td>
                        <td>
                            <html:text styleClass="input_formulario" name="Servicio" property="nombre"/>
                            <div class="descripcion">
                                Nombre del Servicio
                            </div>                            
                        </td>
                    </tr>
                    <tr>
                        <td> Laboratorio </td>
                        <td>
                            <html:select name="Servicio" property="laboratorio">
                                 <html:optionsCollection name="Servicio" property="labs" />
                            </html:select>
                        </td>
                    </tr>
                   <%-- <tr>
                        <td> Ubicacion </td>
                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="ubicacion"/>
                            <div class="descripcion">
                                Ubicacion del Laboratorio <br>
                                (i.e Edificio de MYS)
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td> Contacto </td>
                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="correo"/>
                            <div class="descripcion">
                                Correo del Encargado <br>
                                [ ejemplo@usb.ve ]
                                <!--<p style="color:red;">[ ejemplo@usb.ve ]</p>-->
                            </div>                              
                        </td>
                    </tr> --%>
                   <%-- <tr>
                        <td> Características </td>
                        <td>
                            <html:text name="Laboratorio" property="caracteristicas"/>
                        </td>
                    </tr> --%>
                   <center style="color: red"> * Campos Obligatorios </center>
                </tbody>
            </table>
            <div id="submit">
                <html:submit value="modificar" styleClass="boton" />
                <html:reset value="limpiar" styleClass="boton"/>
            </div>
        </html:form>
            
            <html:link action="back">
                <h2>
                    << volver
                </h2>
            </html:link>
    </body>
</html>
