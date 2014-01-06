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

        <div class="letras_apellido"><p>
            <html:link action="consultarL_letra_jefe.do?param=A">A</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=B">B</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=C">C</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=D">D</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=E">E</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=F">F</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=G">G</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=H">H</html:link> -            
            <html:link action="consultarL_letra_jefe.do?param=I">I</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=J">J</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=K">K</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=L">L</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=M">M</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=N">N</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=Ñ">Ñ</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=O">O</html:link> -  
            <html:link action="consultarL_letra_jefe.do?param=P">P</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=Q">Q</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=R">R</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=S">S</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=T">T</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=U">U</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=V">V</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=W">W</html:link> -  
            <html:link action="consultarL_letra_jefe.do?param=X">X</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=Y">Y</html:link> - 
            <html:link action="consultarL_letra_jefe.do?param=Z">Z</html:link> - 
            <html:link action="consultarL_jefe">Todos</html:link>
        </p></div>

        <p><h1>Personal que su apellido comience con: 
            "<logic:iterate name="letraLista" id="letraID">
                <bean:write name="letraID"/>
            </logic:iterate>".
        </h1></p>


        <!--Lista vacia-->
        <logic:empty name="user">
            <logic:empty name="novisibles">
                <h3>No hay personal.</h3>
            </logic:empty>
        </logic:empty>

        <!--Lista no vacia-->
        <logic:notEmpty name="user">
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
            </table>
        </logic:notEmpty>

        <logic:notEmpty name="novisibles">
            <p><h1>Personal oculto</h1></p>
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

                <logic:iterate name="novisibles" id="Empleado"> 
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
                        	<html:link  action="activar" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                                <img src="images/activar.png"/>
                            </html:link>
                        </td>
    				</tr> 
                </logic:iterate>
            </table>
        </logic:notEmpty>

        <html:link action="back">
            <h2>
                Volver
            </h2>
        </html:link>
    </body>
</html>
