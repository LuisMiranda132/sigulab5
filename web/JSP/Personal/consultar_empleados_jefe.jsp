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
            @import "CSS/field.css";
            @import "CSS/user.css";    
            @import "CSS/views.css";
            @import "CSS/ckeditor.css";
            @import "CSS/ctools.css";
            @import "CSS/print.css";
            @import "CSS/form.css";
            @import "CSS/colors.css";
            @import "CSS/layout.css";
            @import "CSS/style_table.css";
        </style>
        <style type="text/css" title="currentStyle">
            @import "CSS/demo_table_jui.css";
            @import "themes/smoothness/jquery-ui-1.8.4.custom.css";
            @import "CSS/shCore.css";
            .ColVis {
                float: left;
                margin-bottom: 0
            }
            .dataTables_length {
                width: auto;
            }           
        </style>
        <script type="text/javascript" language="javascript" src="js/jquery.js"></script>
        <script type="text/javascript" language="javascript" src="js/jquery-1.6.3.min.js"></script>
        <script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
        <script type="text/javascript" language="javascript" src="js/shCore.js"></script>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                $('#example').dataTable( {
                    "sDom": '<"H"Cfr>t<"F"ip>',
                    "bJQueryUI": true,
                    "sPaginationType": "full_numbers"
                } );
            } );
        </script>
        <title>Consultar Empleados</title>
    </head>

    <body>
    <body>
        <div class="titulo_formulario">Consultar Empleados</div>

        <div  class="ex_highlight_row">
            <table cellpadding='0'  cellspacing='0' border='0' class="display" id="example">
            <!--ENCABEZADO-->
                <thead>
                    <tr>
                        <th>Perfil</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Cargo</th>
                        <th>Área laboral</th>
                        <th>Extensión</th>
                        <th>Laboratorio</th>
                        <th>Modificar</th>
                        <th>Visibilidad</th>
                    </tr>
                </thead>

                <tbody>
                    <!-- Usuarios visibles -->
                    <logic:iterate name="user" id="Empleado">                               
                        <tr>
                            <td>
                                <html:link action="perfilPersonalL" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                                    <img src="<bean:write name="Empleado" property="imagen"/>" width="36"/>
                                </html:link>
                            </td>                   
                            <td><bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/></td>
                            <td><bean:write name="Empleado" property="correo"/></td>
                            <td><bean:write name="Empleado" property="cargo"/></td>
                            <td><bean:write name="Empleado" property="area_laboral"/></td>
                            <td><bean:write name="Empleado" property="extension"/></td>
                            <td><bean:write name="Empleado" property="laboratorio"/></td>                    
                            <td>                                           
                                <html:link action="formulario_empleado" target="centro" paramName="Empleado" paramProperty="usbid" paramId="usbid">
                                    <img src="images/modificar.png"/>
                                </html:link>                                
                            </td>        
                            <td>              
                                <html:link onclick="javascript: return confirm('¿Está seguro que desea ocultar la vista de este usuario?')" action="desactivar" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                                    <img src="images/ocultar.png" width="36"/>
                                </html:link>                        
                            </td>
                        </tr>  
                    </logic:iterate>

                    <!-- Usuarios no visibles -->
                    <logic:iterate name="novisibles" id="Empleado"> 
                        <tr>
                            <td>
                                <html:link action="perfilPersonalL" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                                    <img src="<bean:write name="Empleado" property="imagen"/>" width="36"/>
                                </html:link>
                            </td>
                            <td><bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/></td>
                            <td><bean:write name="Empleado" property="correo"/></td>
                            <td><bean:write name="Empleado" property="cargo"/></td>
                            <td><bean:write name="Empleado" property="area_laboral"/></td>
                            <td><bean:write name="Empleado" property="extension"/></td>
                            <td><bean:write name="Empleado" property="laboratorio"/></td>
                            <td>
                                <html:link action="formulario_empleado" target="centro" paramName="Empleado" paramProperty="usbid" paramId="usbid">
                                    <img src="images/modificar.png"/>
                                </html:link>                                
                                
                                <html:link onclick="javascript: return confirm('¿Está seguro que desea activar la vista de este usuario?')" action="activar" paramId="usbid" paramName="Empleado" paramProperty="usbid">
                                    <img src="images/activar.png" width="36"/>
                                </html:link>
                            </td>
                        </tr> 
                    </logic:iterate>                                                  
                </tbody>
            </table>
        </div>
        
        <html:link action="back">
            <h2>
                << Volver
            </h2>
        </html:link>
    </body>
</html>
