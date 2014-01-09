<%-- 
    Document: consultar_empleados_jefe
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
        
        <style>
            
            .titulo_formulario {
                font-size: 14px;
                font-weight: bold;
                color: #42a9be;
                text-align: center;
                background-color: beige;
                height: 21px;
                line-height: 21px;
            }
            
            .logic_success {
                color: green;
                margin-top: 23px;
            }
            
            .logic_failure {
                color: red;
                margin-top: 23px;
            }
            
            .errors {
                color: red;
                margin-top: 23px;
                font-size: 10px;
            }
            
            #submit {
                margin-left: 372px;
                margin-top: 16px;
            }
            
            .boton {
                background: transparent;
                color: #1c6ea0;
                font-weight: bold;
                border: 0px;
                cursor: pointer;
            }
            
            .boton:hover, .boton:focus, .boton:active {
                color: #42a9be;
                transition: color .2s linear 0;
            }
                
        </style>            
        
        <title>Consultar Personal</title>
    </head>

    <body>
        <div class="titulo_formulario"> Consultar Personal </div>
        
        <center class="errors" align="center">
            <html:errors/>
        </center>
    
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

        <table cellspacing='0'>
			<thead>
                <tr>
                    <th>Perfil</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Cargo</th>
                    <th>Área laboral</th>
                    <th>Extensión</th>
                    <th>Laboratorio</th>
                    <th>Visibilidad</th>
                </tr>
			</thead>

            <!-- Usuarios visibles -->
			<logic:iterate name="user" id="Empleado">                               
				<tr>
                    <td>
                        <html:link action="perfilPersonalL" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                            <img src="images/usuario.jpg" width="48"/>
                        </html:link>
                    </td>					
					<td><bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/></td>
					<td><bean:write name="Empleado" property="correo"/></td>
					<td><bean:write name="Empleado" property="cargo"/></td>
                    <td><bean:write name="Empleado" property="area_laboral"/></td>
                    <td><bean:write name="Empleado" property="extension"/></td>
                    <td><bean:write name="Empleado" property="laboratorio"/></td>                    
                    <td>                        
                        <html:link onclick="javascript: return confirm('¿Está seguro que desea ocultar la vista de este usuario?')" action="desactivar" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                            <img src="images/ocultar.png"/>
                        </html:link>                        
                    </td>
				</tr>  
			</logic:iterate>
                        
            <!-- Usuarios no visibles -->
            <logic:iterate name="novisibles" id="Empleado"> 
                <tr>
                    <td>
                        <html:link action="perfilPersonalL" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                            <img src="images/usuario.jpg" width="48"/>
                        </html:link>
                    </td>
					<td><bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/></td>
					<td><bean:write name="Empleado" property="correo"/></td>
					<td><bean:write name="Empleado" property="cargo"/></td>
                    <td><bean:write name="Empleado" property="area_laboral"/></td>
                    <td><bean:write name="Empleado" property="extension"/></td>
                    <td><bean:write name="Empleado" property="laboratorio"/></td>
                    <td>
                    	<html:link onclick="javascript: return confirm('¿Está seguro que desea activar la vista de este usuario?')" action="activar" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                            <img src="images/activar.png"/>
                        </html:link>
                    </td>
				</tr> 
            </logic:iterate>
        </table>

        <html:link action="back">
            <h2>
                << volver
            </h2>
        </html:link>

    </body>
</html>
