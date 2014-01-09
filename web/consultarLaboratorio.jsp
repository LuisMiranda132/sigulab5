<%-- 
    Document: consultarLaboratorio
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
            @import "CSS/table.css";
            @import "CSS/form.css";
            @import "CSS/colors.css";
        </style>

        <style type="text/css" media="print">
            @import "CSS/print.css";
        </style>

        <title>Consultar Laboratorio</title>
    </head>
    <body>
        <h1>Consultar Laboratorio</h1>
        
        <table cellspacing='0'>
            <!-- PRIMERA FILA -->
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Página Web</th>
                </tr>
            </thead>

            <!-- DATOS DE LOS LABORATORIOS-->
            <logic:iterate name="lab" id="Laboratorio">
                <tr>
                    <td>
                        <html:link action="perfilLaboratorioL" paramId="codigo" paramName="Laboratorio" paramProperty="codigo">
                            <bean:write name="Laboratorio" property="codigo"/>
                        </html:link>
                    </td>
                    <td><bean:write name="Laboratorio" property="nombre"/></td>
                    <td><bean:write name="Laboratorio" property="correo"/></td>
                    <td><bean:write name="Laboratorio" property="pagweb"/></td>
                </tr>
            </logic:iterate>
        </table>
        
        <html:link action="back">
            <h2>
                Volver
            </h2>
        </html:link>
    </body>
</html>
