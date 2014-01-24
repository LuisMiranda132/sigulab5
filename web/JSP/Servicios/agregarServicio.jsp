<%-- 
    Document   : agregarServicio
    Created on : Dec 23, 2013, 11:27:44 PM
    Author     : michelle
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
        
        <title>Agregar Servicio</title>
    <body>
        <div class="titulo_formulario"> Agregar Servicio </div>
        
        <center class="errors" align="center">
            <html:errors/>
        </center>

        <!-- LOGIC PRESENT </!-->
        <logic:present name="servicioAgregado">
            <center class="logic_success" align="center">
                El servicio ha sido agregado exitosamente.
            </center>
        </logic:present>
        
        <logic:present name="servicioExistente">
            <center class="logic_failure" align="center">
                El servicio ya ha sido agregado anteriormente.
            </center>
        </logic:present>        
    
        <logic:present name="operacionFallida">
            <center class="logic_failure" align="center">
                Ocurrio un error durante la operacion, intente de nuevo.
            </center>
        </logic:present>
        <!-- FIN LOGIC PRESENT </!-->    
        
        <html:form action="agregarServicio" style="margin-left: 45px;">            
            <table border="0">
                <tbody>
                    <tr>
                        <td> Codigo <span style='color:red'>*</span></td>
                        <td>
                            <html:text styleClass="input_formulario" name="Servicio" property="codigo"/>
                            <div class="descripcion">
                                Codigo del Servicio <br>
                                (i.e 001)
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td> Nombre <span style='color:red'>*</span></td>
                        <td>
                            <html:text styleClass="input_formulario" name="Servicio" property="nombre"/>
                            <div class="descripcion">
                                Nombre del Servicio <br>
                                (i.e Analisis microestructural)
                            </div>                            
                        </td>
                    </tr>
                    <tr>
                        <td>Imagen</td>
                        <td>
                            <br/>
                            <html:file name="Servicio" property="imagen" size="50"/>
                            <br/>
                        </td>
                    </tr>
                    <tr>
                        <td> Laboratorio <span style='color:red'>*</span></td>
                        <td>
                             <%--<html:select name="Servicio" property="laboratorio" >--%>
                                 <%--<html:optionsCollection name="Empleado" property="usbid" />--%>
                             <%--</html:select>--%>
                            <html:text styleClass="input_formulario" name="Servicio" property="laboratorio"/>
                            <div class="descripcion">
                                Nombre del Laboratorio <br>
                                (i.e LAB A)
                            </div>                             
                        </td>
                    </tr>
                    <tr>
                        <td> Características <span style='color:red'>*</span></td>
                        <td>
                            <html:textarea styleId="textarea" name="Servicio" property="caracteristicas"/>
                        </td>
                    </tr>
                    <center style="color: red"> * Campos Obligatorios </center>
                </tbody>
            </table>
            <div id="submit">
                <html:submit value="agregar" styleClass="boton" />
                <html:reset value="limpiar" styleClass="boton"/>
            </div>
        </html:form>

        <html:link action="back">
            <h2 style="margin: 0px;">
                 << volver
            </h2>
        </html:link>

    </body>
</html>
