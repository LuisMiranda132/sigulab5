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
                <h5>El usuario ha sido agregado exitosamente.</h5>
            </center>
        </logic:present>
    
        <logic:present name="usuarioInexistente">
            <center class="logic_failure" align="center">
                <h5>Usbid inválido.</h5>
            </center>
        </logic:present>
    
        <logic:present name="usuarioExistente">
            <center class="logic_failure" align="center">
                <h5>El usuario ya ha sido agregado como empleado.</h5>
            </center>
        </logic:present>
    
        <logic:present name="tipoUsuarioInvalido">
            <center class="logic_failure" align="center">
                <h5>El tipo de usuario es inválido.</h5>
            </center>
        </logic:present>
    
        <logic:present name="operacionFallida">
            <center class="logic_failure" align="center">
                <h5>Ocurrió un error durante la operación, intente de nuevo.</h5>
            </center>
        </logic:present>
        <!-- FIN LOGIC PRESENT </!-->


    <html:form action="agregar" style="margin-left: 45px;">
        <table border="0">
            <tbody>
                <tr>
                    <td> UsbId <span style='color:red'>*</span></td>

                    <td>
                        <html:text styleClass="input_formulario" name="Empleado" property="usbid"/>
                        <div class="descripcion">
                            usbid del usuario <br> 
                            [ XX-XXXXX ]
                            <!--<p style="color:red;">[ dd-ddddd ]</p>-->
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
                    <td> Año de Ingreso </td>
                    <td>
                        <html:select name="Empleado" property="ano_ingreso">
                            <option value="2014">2014</option>
                            <option value="2013">2013</option>
                            <option value="2012">2012</option>
                            <option value="2011">2011</option>
                            <option value="2010">2010</option>
                            <option value="2009">2009</option>                            
                            <option value="2008">2008</option>                            
                            <option value="2007">2007</option>
                            <option value="2006">2006</option>
                            <option value="2005">2005</option>
                            <option value="2004">2004</option>
                            <option value="2003">2003</option>
                            <option value="2002">2002</option>
                            <option value="2001">2001</option>
                            <option value="2000">2000</option>
                            <option value="1999">1999</option>
                            <option value="1998">1998</option>
                            <option value="1997">1997</option>
                            <option value="1996">1996</option>
                            <option value="1995">1995</option>
                            <option value="1994">1994</option>
                            <option value="1993">1993</option>
                            <option value="1992">1992</option>
                            <option value="1991">1991</option>
                            <option value="1990">1990</option>
                            <option value="1989">1989</option>
                            <option value="1988">1988</option>
                            <option value="1987">1987</option>
                            <option value="1986">1986</option>
                            <option value="1985">1985</option>
                            <option value="1984">1984</option>
                            <option value="1983">1983</option>
                            <option value="1982">1982</option>
                            <option value="1981">1981</option>
                            <option value="1980">1980</option>
                            <option value="1979">1979</option>
                            <option value="1978">1978</option>
                            <option value="1977">1977</option>
                            <option value="1976">1976</option>
                            <option value="1975">1975</option>
                            <option value="1974">1974</option>
                            <option value="1973">1973</option>
                            <option value="1972">1972</option>
                            <option value="1971">1971</option>
                            <option value="1970">1970</option>                                
            </html:select>

            <div class="descripcion">
                Año de ingreso del usuario <br>
                [ XXXX ]
                <!--<p style="color:red;">[ dddd ]</p>-->
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

    <center style="color: red"> * Campos Obligatorios </center>

</tbody>
</table>

<div id="submit">
    <html:submit value="agregar" styleClass="boton" />
    <html:reset value="limpiar" styleClass="boton"/>
</div>
</html:form>

<html:link action="back">
    <h2 style="margin: 0px;">
        << Volver
    </h2>
</html:link>

</body>

</html>
