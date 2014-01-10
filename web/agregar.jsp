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
       
        <script src="js/jquery-1.9.1.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/scripts.js"></script>
        
        <title>Catalogo</title>
    </head>
    
    <body>

        <div class="titulo_formulario"> Agregar Personal </div>
        
        <center class="errors" align="center">
            <html:errors/>
        </center>
    
        <!-- LOGIC PRESENT </!-->
        <logic:present name="usuarioAgregado">
            <center class="logic_success" align="center">
                El usuario ha sido agregado exitosamente.
            </center>
        </logic:present>
    
        <logic:present name="usuarioInexistente">
            <center class="logic_failure" align="center">
                Usbid invalido.
            </center>
        </logic:present>
    
        <logic:present name="usuarioExistente">
            <center class="logic_failure" align="center">
                El usuario ya ha sido agregado como empleado.
            </center>
        </logic:present>
    
        <logic:present name="tipoUsuarioInvalido">
            <center class="logic_failure" align="center">
                El tipo de usuario es invalido.
            </center>
        </logic:present>
    
        <logic:present name="operacionFallida">
            <center class="logic_failure" align="center">
                Ocurrio un error durante la operacion, intente de nuevo.
            </center>
        </logic:present>
        <!-- FIN LOGIC PRESENT </!-->
    
        <html:form action="agregar" style="margin-left: 45px;">
            <table border="0">
                <tbody>
                    <tr>
                        <td> UsbId </td>
                        <td>
                            <html:text styleClass="input_formulario" name="Empleado" property="usbid"/>
                            <div class="descripcion">
                                usbid del usuario 
                                <p style="color:red;">[ dd-ddddd ]</p>
                            </div>
<!--                            <div class="formato">
                                [ XX-XXXXX ]
                            </div>-->
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Usuario</td>
                        <td>
                            <html:select name="Empleado" property="tipo_usuario">
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
                            <html:text styleClass="input_formulario" name="Empleado" property="cargo"/>
                            <div class="descripcion"">
                                Cargo que desempeña el usuario <br> 
                                (i.e Jefe de Laboratorio)
                            </div>                            
                        </td>
                    </tr>
                    <tr>
                        <td> Año de Ingreso </td>
                        <td>
                            <html:text styleClass="input_formulario" name="Empleado" property="ano_ingreso"/>
                            <div class="descripcion">
                                Año de ingreso del usuario 
                                <p style="color:red;">[ dddd ]</p>
                            </div>                              
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Empleado</td>
                        <td>
                            <html:select name="Empleado" property="tipo_empleado">
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
