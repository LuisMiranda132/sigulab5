<%-- 
    Document   : agregarLaboratorio
    Created on : Dec 23, 2013, 11:27:44 PM
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
        
        <title>Agregar Laboratorio</title>
    <body>
        <div class="titulo_formulario"> Agregar Laboratorio </div>
        
        <center class="errors" align="center">
            <html:errors/>
        </center>

        <logic:present name="lologreA">
            <center class="logic_success" align="center">
                <h5>El laboratorio ha sido agregado exitosamente.</h5>
            </center>
        </logic:present>    
    
        <html:form action="agregarLaboratorio" enctype="multipart/form-data" style="margin-left: 45px;" >
            <table border="0">
                <tbody>
                    <tr>
                        <td>Organigrama</td>
                        <td>            
                            <br />
                            <html:file name="Laboratorio" property="imagenfile" size="50" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td> Codigo <span style='color:red'>*</span></td>

                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="codigo"/>
                            <div class="descripcion">
                                Codigo del Laboratorio <br>
                                (i.e LAB A)
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td> Nombre <span style='color:red'>*</span></td>
                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="nombre"/>
                            <div class="descripcion">
                                Nombre del Laboratorio <br>
                                (i.e Laboratorio A)
                            </div>                            
                        </td>
                    </tr>
                    <tr>
                        <td> Sede </td>
                        <td>
                            <html:select name="Laboratorio" property="sede">
                                <html:option value="sartenejas">Sartenejas</html:option>
                                <html:option value="litoral">Litoral</html:option>
                            </html:select>
                        </td>
                    </tr>
                    <tr>

                        <td> Ubicacion <span style='color:red'>*</span></td>

                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="ubicacion"/>
                            <div class="descripcion">
                                Ubicación del Laboratorio <br>
                                (i.e Edificio de MYS)
                            </div>                              
                        </td>
                    </tr>
                    <tr>
                        <td> Correo <span style='color:red'>*</span></td>
                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="correo"/>
                            <div class="descripcion">
                                Correo del Encargado <br>
                                [ ejemplo@usb.ve ]
                                <!--<p style="color:red;">[ ejemplo@usb.ve ]</p>-->
                            </div>                              
                        </td>
                    </tr>
                    <tr>

                        <td> Pagina Web <span style='color:red'>*</span></td>

                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="pagweb"/>
                            <div class="descripcion">
                                URL Laboratorio <br>
                                (i.e www.laba.usb.ve)
                            </div>                              
                        </td>
                    </tr>
                    <tr>

                        <td> Telefono <span style='color:red'>*</span></td>

                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="telefono"/>
                            <div class="descripcion">
                                Teléfono de Contacto <br>
                                [ XXXXXXXXXXX ]
                                <!--<p style="color:red;">[ dddd ddd dd dd ]</p>-->
                            </div>                              
                        </td>
                    </tr>
                    <tr>
                        <td> Fax <span style='color:red'>*</span></td>
                        <td>
                            <html:text styleClass="input_formulario" name="Laboratorio" property="fax"/>
                            <div class="descripcion">
                                Fax <br>
                                [ XXXXXXXXXXX ]
                                <!--<p style="color:red;">[ dddd ddd dd dd ]</p>-->
                            </div>                               
                        </td>
                    </tr>
                    <tr>
                        <td> Descripción </td>
                        <td>
                            <html:textarea styleId="textarea" name="Laboratorio" property="caracteristicas"/>
                        </td>
                    </tr>
                    <tr>
                        <td> Jefe </td>
                        <td>
                             <html:select name="Laboratorio" property="jefe" >
                                 <html:optionsCollection name="Laboratorio" property="jefes" />
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
