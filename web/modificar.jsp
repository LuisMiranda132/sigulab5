<%-- 
    Document   : inicio
    Created on : Nov 25, 2013, 1:35:17 AM
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
        <title>Catalogo</title>
    </head>
    <body>
        <h1>Modificar</h1>
    <center style="color:red;background-color:lightcoral" align="center">
            <html:errors/>    
        </center>
            <logic:present name="lologre">
            <center style="color:green;background-color: springgreen" align="center">
                Se modifico exitosamente    
            </center>
            </logic:present>
        <html:form action="modificar" >
            <table border="0">
                <tbody>
                    <tr>
                        <td> UsbId </td>
                        <td>
                            <bean:write name="Empleado" property="usbid"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Nombres </td>
                        <td>
                            <bean:write name="Empleado" property="nombres"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Apellidos </td>
                        <td>
                            <bean:write name="Empleado" property="apellidos"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Cedula </td>
                        <td>
                            <bean:write name="Empleado" property="cedula"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Correo </td>
                        <td>
                            <html:text name="Empleado" property="correo"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Direccion </td>
                        <td>
                            <html:text name="Empleado" property="direccion"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Telefono fijo </td>
                        <td>
                            <html:text name="Empleado" property="telefono_casa"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Telefono celular</td>
                        <td>
                            <html:text name="Empleado" property="telefono_celular"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Usuario </td>
                        <td>
                            <bean:write name="Empleado" property="tipo"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Cargo </td>
                        <td>
                            <bean:write name="Empleado" property="cargo"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Antiguedad </td>
                        <td>
                            <bean:write name="Empleado" property="antiguedad"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Empleado</td>
                        <td>
                            <bean:write name="Empleado" property="tipoE"/>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p>
                
                <html:submit value="modificar"/>
                <html:reset value="limpiar"/>
            </p>
        </html:form>
            
            <html:link action="back">
                <h2>
                    Volver
                </h2>
            </html:link>
    </body>
</html>
