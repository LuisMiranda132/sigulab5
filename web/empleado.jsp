<%-- 
    Document   : empleado
    Created on : Nov 26, 2013, 1:44:02 PM
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
        <%--
        <style type="text/css" media="print">
            @import "CSS/print.css";
        </style>
        --%>
        <title>Catalogo</title>
    </head>
    <body>
        <h1>Personal</h1>
        <html:link action="consultarL">
            <h2>
                Consultar
            </h2>
        </html:link>
        <html:link action="modificarL">
            <h2>
                Modificar
            </h2>
        </html:link>
    </body>
</html>
