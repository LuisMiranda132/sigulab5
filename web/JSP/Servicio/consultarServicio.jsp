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
            @import "CSS/table.css";
            @import "CSS/form.css";
            @import "CSS/colors.css";
        </style>

        <style type="text/css" media="print">
            @import "CSS/print.css";
        </style>       
        <title>Consultar Servicio</title>
    </head>
    <body style="width: 99%;">
        <div class="titulo_formulario"> Consultar Servicio </div>        

        <table cellspacing='0'>
            <!-- PRIMERA FILA -->
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Laboratorio</th>
                    <th>Modificar</th>                    
                </tr>
            </thead>

            <!-- DATOS DE LOS LABORATORIOS-->
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
                </tr>
            </logic:iterate>
        </table>
        
        <html:link action="back">
            <h2>
                << Volver
            </h2>
        </html:link>
    </body>
</html>
