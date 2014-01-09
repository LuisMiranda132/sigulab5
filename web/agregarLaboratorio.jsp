<%-- 
    Document   : agregarLaboratorio
    Created on : Dec 23, 2013, 11:27:44 PM
    Author     : luismiranda
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
        
        <title>Agregar Laboratorio</title>
    <body>
    <body>
        <div class="titulo_formulario"> Agregar Laboratorio </div>
        
        <center class="errors" align="center">
            <html:errors/>
        </center>

        <logic:present name="lologreA">
            <center class="logic_success" align="center">
                El laboratorio ha sido agregado exitosamente.
            </center>
        </logic:present>    
    
        <html:form action="agregarLaboratorio" style="margin-left: 45px;" >
            <table border="0">
                <tbody>
                    <tr>
                        <td> Codigo </td>
                        <td>
                            <html:text name="Laboratorio" property="codigo"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Nombre </td>
                        <td>
                            <html:text name="Laboratorio" property="nombre"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Sede </td>
                        <td>
                            <html:select name="Laboratorio" property="sede">
                                <html:option value="sartenejas">Sartenejas</html:option>
                                <html:option value="litoral">Litoral</html:option>
                            </html:select>
                        </td>
                    </tr>
                    <tr>
                        <td> Ubicacion </td>
                        <td>
                            <html:text name="Laboratorio" property="ubicacion"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Correo </td>
                        <td>
                            <html:text name="Laboratorio" property="correo"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Pagina Web </td>
                        <td>
                            <html:text name="Laboratorio" property="pagweb"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Jefe </td>
                        <td>
                             <html:select name="Laboratorio" property="jefe" >
                                 <html:optionsCollection name="Laboratorio" property="jefes" />
                             </html:select>
                        </td>
                    </tr>
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
