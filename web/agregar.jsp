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
            }
            
            #submit {
                margin-left: 222px;
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
        <div class="titulo_formulario"> Agregar Personal </div>
        
        <!-- ERRORES </!-->
        <center class="errors" align="center">
            <html:errors/>    
        </center>
    
        <logic:present name="lologreA">
            <center class="logic_success" align="center">
                Se agrego exitosamente.
            </center>
        </logic:present>
    
        <logic:present name="noExistente">
            <center class="logic_failure" align="center">
                Dicho usuario no existe.    
            </center>
        </logic:present>
    
        <logic:present name="empExistente">
            <center class="logic_failure" align="center">
                Dicho usuario ya ha sido agregado como empleado.
            </center>
        </logic:present>
        <!-- FIN ERRORES </!-->
    
        <html:form action="agregar" style="margin-left: 45px;">
            <table border="0">
                <tbody>
                    <tr>
                        <td> UsbId </td>
                        <td>
                            <html:text name="Empleado" property="usbid"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Usuario</td>
                        <td>
                            <html:select name="Empleado" property="tipo">
                                <html:option value=""></html:option>
                                <%--
                                <html:option value="estudiante">Estudiante</html:option>
                                <html:option value="profesor">Profesor</html:option>
                                --%>
                                <html:option value="empleado">Empleado</html:option>
                            </html:select>
                        </td>
                    </tr>   
                    <tr>
                        <td> Cargo </td>
                        <td>
                            <html:text name="Empleado" property="cargo"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Año de Ingreso </td>
                        <td>
                            <html:text name="Empleado" property="antiguedad"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Empleado</td>
                        <td>
                            <html:select name="Empleado" property="tipoE">
                                <html:option value=""></html:option>
                                <html:option value="personal admin">Personal Admin</html:option>
                                <html:option value="tecnico">Tecnico</html:option>
                                <html:option value="jefe">Jefe</html:option>
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
