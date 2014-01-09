<%-- 
    Document   : modificarLab
    Created on : Dec 29, 2013, 7:00:05 PM
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
    </head>
        <div class="titulo_formulario"> Modificar Laboratorio </div>
        
        <center class="errors" align="center">
            <html:errors/>
        </center>
        
        <!-- LOGIC PRESENT </!-->
        <logic:present name="lologre">
            <center class="logic_success" align="center">
                El laboratorio ha sido modificado exitosamente.
            </center>
        </logic:present>        
        <!-- FIN LOGIC PRESENT </!-->

        <html:form action="modificarLaboratorio" style="margin-left: 45px;">        
            <table border="0">
                <tbody>
                    <tr>
                        <td> Código </td>
                        <td>
                            <bean:write name="Laboratorio" property="codigo"/>
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
                        <td> Ubicación </td>
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
                        <td> Página Web </td>
                        <td>
                            <html:text name="Laboratorio" property="pagweb"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Teléfono </td>
                        <td>
                            <html:text name="Laboratorio" property="telefono"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Fax </td>
                        <td>
                            <html:text name="Laboratorio" property="fax"/>
                        </td>
                    </tr>
                   <%-- <tr>
                        <td> Características </td>
                        <td>
                            <html:text name="Laboratorio" property="caracteristicas"/>
                        </td>
                    </tr> --%>
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
