<%-- 
    Document   : consultar
    Created on : Nov 27, 2013, 12:06:26 AM
    Author     : luismiranda
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>  

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
        <style type="text/css" media="print">
            @import "CSS/print.css";
        </style>
        <title>Consultar</title>
    </head>
    <body>
        <h1>Consultar</h1>
        
        <table border="1" class="altrowstable" id="alternatecolor">
                <thead>
                    <tr>
                        <th width="155px" align="center">
                             UsbId 
                        </th>
                        <th width="155px" align="center">
                            Nombres
                        </th>
                        <th width="155px" align="center">
                            Apellidos
                        </th>
                        <th width="155px" align="center">
                            Cedula
                        </th>
                        <th width="155px" align="center">
                            Correo
                        </th>
                        <th width="155px" align="center">
                            Direccion
                        </th>
                        <th width="155px" align="center">
                            Telefono Casa
                        </th>
                        <th width="155px" align="center">
                            Telefono Celular
                        </th>
                        <th width="155px" align="center">
                            Tipo Empleado
                        </th>
                        <th width="155px" align="center">
                            Cargo
                        </th>
                        <th width="155px" align="center">
                            Antiguedad
                        </th>
                        <th width="155px" align="center">
                            Tipo Empleado
                        </th>
                    </tr>
                </thead>

                <logic:iterate name="user" id="Empleado">
                    <tr>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="usbid"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="nombres"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="apellidos"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="cedula"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="correo"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="direccion"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="telefono_casa"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="telefono_celular"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="tipo"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="cargo"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="antiguedad"/>
                        </td>
                        <td width="155px" align="center">
                            <bean:write name="Empleado" property="tipoE"/>
                        </td>
                    </tr>
                </logic:iterate>
            </table>
        
        <html:link action="back">
            <h2>
                Volver
            </h2>
        </html:link>
    </body>
</html>
