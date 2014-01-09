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
        
        <title>Catalogo</title>
    </head>
    <body>
        <div class="titulo_formulario"> Modificar Perfil </div>
        <center class="errors" align="center">
            <html:errors/>
        </center>
    
        <logic:present name="lologre">
            <center class="logic_success" align="center">
                El perfil ha sido modificado exitosamente.
            </center>
        </logic:present>

        <html:form action="modificar" style="margin-left: 45px;">
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
                        <td> Correo Alterno</td>
                        <td>
                            <html:text name="Empleado" property="correo"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Dirección </td>
                        <td>
                            <html:text name="Empleado" property="direccion"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Teléfono </td>
                        <td>
                            <html:text name="Empleado" property="telefono"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Usuario </td>
                        <td>
                            <bean:write name="Empleado" property="tipo_usuario"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Cargo </td>
                        <td>
                            <bean:write name="Empleado" property="cargo"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Año de Ingreso </td>
                        <td>
                            <bean:write name="Empleado" property="ano_ingreso"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Empleado</td>
                        <td>
                            <bean:write name="Empleado" property="tipo_empleado"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Añadir nueva publicación</td>
                        <td>
                            <html:text name="Empleado" property="publicacion"/>
                            Año
                            <html:text name="Empleado" property="ano_pub"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Añadir nueva habilidad </td>
                        <td>
                            <html:text name="Empleado" property="habilidad"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Añadir nueva formación</td>
                        <td>
                            <html:text name="Empleado" property="formacion"/>
                            Año
                            <html:text name="Empleado" property="ano_for"/>
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
