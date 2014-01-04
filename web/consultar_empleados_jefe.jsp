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
            @import "CSS/table.css";
            @import "CSS/form.css";
            @import "CSS/colors.css";
        </style>
        <style type="text/css" media="print">
            @import "CSS/print.css";
        </style>
        <title>Consultar Personal</title>
    </head>
    <body>
        <h1>Consultar Personal</h1>

        <table cellspacing='0'>
			<thead>
				<tr>
					<th>Perfil</th>
					<th>UsbId</th>
					<th>Nombre</th>
					<th>Correo</th>
					<th>Cargo</th>
                    <th>Ocultar</th>
				</tr>
			</thead>

            <!-- DATOS DEL PERSONAL -->
			<logic:iterate name="user" id="Empleado">
                               
				<tr>
                    <td>
                        <html:link action="perfilPersonalL" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                            <img src="images/usuario.jpg" width="64"/>
                        </html:link>
                    </td>					
					<td><bean:write name="Empleado" property="usbid"/></td>
					<td>
						<bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/>
					</td>
					<td><bean:write name="Empleado" property="correo"/></td>
					<td><bean:write name="Empleado" property="cargo"/></td>
                    <td>
                        <html:link action="desactivar" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                            <img src="images/ocultar.png"/>
                        </html:link>
                    </td>
				</tr>
  
			</logic:iterate>
                        
            <logic:iterate name="novisibles" id="Empleado"> 
                <tr>
                	<!--No estan visibles, no hay acceso al perfil-->
					<td><img src="images/usuario.jpg"/></td>
					<td><bean:write name="Empleado" property="usbid"/></td>
					<td>
						<bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/>
					</td>
					<td><bean:write name="Empleado" property="correo"/></td>
					<td><bean:write name="Empleado" property="cargo"/></td>
                    <td>
                    	<html:link  action="activar" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                            <img src="images/activar.png"/>
                        </html:link>
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
