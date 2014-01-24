<%-- 
    Document   : modificarLab
    Created on : Ene 21, 2013, 7:00:05 PM
    Author     : donato
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
                
    </head>

    <body>

        <div class="titulo_formulario"> Modificar Empleado </div>
        
        <center class="errors" align="center">
            <html:errors/>
        </center>
        
        <!-- LOGIC PRESENT </!-->
        <logic:present name="usuarioModificado">
            <center class="logic_success" align="center">
                El empleado ha sido modificado exitosamente.
            </center>
        </logic:present>   
        
        <logic:present name="operacionFallida">
            <center class="logic_failure" align="center">
                Ocurrio un error durante la operacion, intente de nuevo.
            </center>
        </logic:present>        
        <!-- FIN LOGIC PRESENT </!-->

        <html:form action="modificar_empleado" style="margin-left: 45px;">
            <table border="0">
                <tbody>
                    <tr>
                        <td> Usbid </td>
                        <td>
                            <bean:write name="Empleado" property="usbid"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo de Usuario </td>
                        <td>
                            <html:select name="Empleado" property="tipo_usuario">
                                <html:option value=""></html:option>
                                <html:option value="empleado">Empleado</html:option>
                            </html:select>                           
                        </td>
                    </tr>
                    <tr>
                        <td> Cargo <span style='color:red'>*</span></td>
                        <td>
                            <html:text styleClass="input_formulario" name="Empleado" property="cargo"/>
                            <div class="descripcion">
                                Cargo que desempeña el usuario <br>
                                (i.e Jefe de Laboratorio)
                            </div>  
                        </td>
                    </tr>
                    <tr>
                        <td> Año de Ingreso <span style='color:red'>*</span></td>
                        <td>
                            <html:text styleClass="input_formulario" name="Empleado" property="ano_ingreso"/>
                            <div class="descripcion">
                                Año de ingreso del usuario <br>
                                [XXXX]
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td> Tipo Empleado </td>
                        <td>
                            <html:select name="Empleado" property="tipo_empleado">
                                <html:option value=""></html:option>
                                <html:option value="personal admin">Personal Admin</html:option>
                                <html:option value="tecnico">Tecnico</html:option>
                                <html:option value="jefe">Jefe</html:option>
                            </html:select>                             
                        </td>
                    </tr>
                    <tr>
                        <td> Estado </td>
                        <td>
                            <html:select name="Empleado" property="status">
                                <html:option value="Activo">Activo</html:option>
                                <html:option value="Reposo Postnatal">Reposo Postnatal</html:option>
                                <html:option value="En Congreso">En Congreso</html:option>
                            </html:select>                             
                        </td>
                    </tr>
                    
                <center style="color: red"> * Campos Obligatorios </center>
                     
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
