<%-- 
    Document: consultarServicio
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
        <title>Consultar Servicio</title>
    </head>

        <table cellspacing='0'>

    <body>
    <body>
        <div class="titulo_formulario">Consultar Servicio</div>

        <div  class="ex_highlight_row">
            <table cellpadding='0'  cellspacing='0' border='0' class="display" id="example">
            <!--ENCABEZADO-->
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Laboratorio</th>
                        <th>Modificar</th> 
                        <th>Visibilidad</th>
                    </tr>
                </thead>

                <tbody>
                    <!-- DATOS DE LOS SERVICIOS-->
                    <logic:iterate name="ser" id="Servicio">
                        <tr>
                            <td>
                                <html:link action="perfilServicio" paramId="codigo" paramName="Servicio" paramProperty="codigo">
                                    <bean:write name="Servicio" property="codigo"/>
                                </html:link>
                            </td>
                            <td><bean:write name="Servicio" property="nombre"/></td>
                            <td><bean:write name="Servicio" property="laboratorio"/></td>
                            <td>
                                <html:link action="modificarServicioL" target="centro" paramName="Servicio" paramProperty="codigo" paramId="codigo">
                                    <img src="images/modificar.png"/>
                                </html:link>
                            </td>      
                            <td>
                                <html:link onclick="javascript: return confirm('¿Está seguro desea desactivar la vista de este servicio?')" action="desactivarServicio" paramId="codigo" paramName="Servicio" paramProperty="codigo">
                                    <img src="images/ocultar.png" width="36"/>
                                </html:link>
                            </td>  
                        </tr>
                    </logic:iterate>   
                    <logic:iterate name="sernov" id="Servicio">
                        <tr>
                            <td>
                                <html:link action="perfilServicio" paramId="codigo" paramName="Servicio" paramProperty="codigo">
                                    <bean:write name="Servicio" property="codigo"/>
                                </html:link>
                            </td>
                            <td><bean:write name="Servicio" property="nombre"/></td>
                            <td><bean:write name="Servicio" property="laboratorio"/></td>
                            <td>
                                <html:link action="modificarServicioL" target="centro" paramName="Servicio" paramProperty="codigo" paramId="codigo">
                                    <img src="images/modificar.png"/>
                            </html:link>
                            </td>      
                            <td>
                                <html:link onclick="javascript: return confirm('¿Está seguro desea activar la vista de este servicio?')" action="activarServicio" paramId="codigo" paramName="Servicio" paramProperty="codigo">
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
