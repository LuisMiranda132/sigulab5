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
            <html:link action="consultarL_letra_emp.do?param=A">A</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=B">B</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=C">C</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=D">D</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=E">E</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=F">F</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=G">G</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=H">H</html:link> -            
            <html:link action="consultarL_letra_emp.do?param=I">I</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=J">J</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=K">K</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=L">L</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=M">M</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=N">N</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=Ñ">Ñ</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=O">O</html:link> -  
            <html:link action="consultarL_letra_emp.do?param=P">P</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=Q">Q</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=R">R</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=S">S</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=T">T</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=U">U</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=V">V</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=W">W</html:link> -  
            <html:link action="consultarL_letra_emp.do?param=X">X</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=Y">Y</html:link> - 
            <html:link action="consultarL_letra_emp.do?param=Z">Z</html:link> - 
            <html:link action="consultarL_emp">Todos</html:link>
        </p></div>

        <p><h1>Personal que su apellido comience con: 
            "<logic:iterate name="letraLista" id="letraID">
                <bean:write name="letraID"/>
            </logic:iterate>".
        </h1></p>

        <!--Lista vacia-->
        <logic:empty name="user">
            <h3>No hay personal.</h3>
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
