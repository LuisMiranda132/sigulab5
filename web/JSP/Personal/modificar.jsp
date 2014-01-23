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
        <div class="titulo_formulario"> Modificar Perfil </div>
    <center class="errors" align="center">
        <html:errors/>
    </center>

    <logic:present name="lologre">
            <center class="logic_success" align="center">
                <h5>El perfil ha sido modificado exitosamente.</h5>
            </center>
        </logic:present>

    <html:form action="modificar" style="margin-left: 45px;" enctype="multipart/form-data">
        <table border="0">
            <tbody>
                <tr>
                    <td>Imagen</td>
                    <td>            
                        <br />
                        <html:file name="Empleado" property="imagenfile" size="50" />
                        <br />
                    </td>
                </tr>
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
                        <html:text styleClass="input_formulario" name="Empleado" property="correo"/>
                        <div class="descripcion">
                            Correo Alterno <br>
                            [ ejemplo@usb.ve ]
                            <!--<p style="color:red;">[ ejemplo@usb.ve ]</p>-->
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td> Dirección </td>
                    <td>
                        <html:text styleClass="input_formulario" name="Empleado" property="direccion"/>
                        <div class="descripcion">
                            Direccion de Habitacion
                        </div>                                 
                    </td>
                </tr>
                <tr>
                    <td> Teléfono </td>
                    <td>
                        <html:text styleClass="input_formulario" name="Empleado" property="telefono"/>
                        <div class="descripcion">
                            Telefono de Contacto <br>
                            [ XXXXXXXXXXX ]
                            <!--<p style="color:red;">[ dddd ddd dd dd ]</p>-->
                        </div>         
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
                        
                        
                        
                        <html:select name="Empleado" property="ano_ingreso">
                <html:option value="2014">2014</html:option>
                <html:option value="2013">2013</html:option>
                <html:option value="2012">2012</html:option>
                <html:option value="2011">2011</html:option>
                <html:option value="2010">2010</html:option>
                <html:option value="2009">2009</html:option>                            
                <html:option value="2008">2008</html:option>                            
                <html:option value="2007">2007</html:option>
                <html:option value="2006">2006</html:option>
                <html:option value="2005">2005</html:option>
                <html:option value="2004">2004</html:option>
                <html:option value="2003">2003</html:option>
                <html:option value="2002">2002</html:option>
                <html:option value="2001">2001</html:option>
                <html:option value="2000">2000</html:option>
                <html:option value="1999">1999</html:option>
                <html:option value="1998">1998</html:option>
                <html:option value="1997">1997</html:option>
                <html:option value="1996">1996</html:option>
                <html:option value="1995">1995</html:option>
                <html:option value="1994">1994</html:option>
                <html:option value="1993">1993</html:option>
                <html:option value="1992">1992</html:option>
                <html:option value="1991">1991</html:option>
                <html:option value="1990">1990</html:option>
                <html:option value="1989">1989</html:option>
                <html:option value="1988">1988</html:option>
                <html:option value="1987">1987</html:option>
                <html:option value="1986">1986</html:option>
                <html:option value="1985">1985</html:option>
                <html:option value="1984">1984</html:option>
                <html:option value="1983">1983</html:option>
                <html:option value="1982">1982</html:option>
                <html:option value="1981">1981</html:option>
                <html:option value="1980">1980</html:option>
                <html:option value="1979">1979</html:option>
                <html:option value="1978">1978</html:option>
                <html:option value="1977">1977</html:option>
                <html:option value="1976">1976</html:option>
                <html:option value="1975">1975</html:option>
                <html:option value="1974">1974</html:option>
                <html:option value="1973">1973</html:option>
                <html:option value="1972">1972</html:option>
                <html:option value="1971">1971</html:option>
                <html:option value="1970">1970</html:option>                                
            </html:select>
        </td>
    </tr>
    <tr>
        <td> Tipo Empleado</td>
        <td>
            <bean:write name="Empleado" property="tipo_empleado"/>
        </td>
    </tr>
    <tr>
        <td> Área Laboral </td>
        <td>
            <html:text styleClass="input_formulario" name="Empleado" property="area_laboral"/>
            <div class="descripcion">
                Area de Trabajo <br>
                (i.e Materiales)
            </div>     
        </td>
    </tr>
    <tr>
        <td> Extensión </td>
        <td>
            <html:text styleClass="input_formulario" name="Empleado" property="extension"/>
            <div class="descripcion">
                Extensión <br>
                (i.e Lab de Polimeros)
            </div>                                 
        </td>
    </tr>
    <tr>
        <td> Laboratorio </td>
        <td>
            <html:text styleClass="input_formulario" name="Empleado" property="laboratorio"/>
            <div class="descripcion">
                Laboratorio al que Pertenece <br>
                (i.e Laboratorio A)
            </div>     
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
<div id="submit" style="
     margin-left: 372px;">
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
