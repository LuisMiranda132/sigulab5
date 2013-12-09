<%-- 
    Document   : Menu
    Created on : 26/11/2013, 06:23:23 PM
    Author     : Esteban Oliveros
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
            @import "CSS/style.css";
            @import "CSS/form.css";
            @import "CSS/colors.css";</style>
        <style type="text/css" media="print">
            @import "CSS/print.css";
        </style>
        <title>SIGULAB - GSMDP</title>
    </head>
    <body class="html front not-logged-in two-sidebars page-node">
        <header id="header" class="section section-header clearfix" role="banner">
            <hgroup class="grid-10">
                <html:link action="back" target="centro">
                    <html:img src="http://www.ulab.usb.ve/sites/default/files/logo_drupal.gif" alt="Inicio"/>
                </html:link>
            </hgroup> 
        </header>
        <div id="main" class="section section-main clearfix" role="main">
            <div id="container" class="container-16">
                
                <!--
                --
                -- COMIENZO DE LA PARTE CENTRAL
                --
                -->
                <div id="content" class="column grid-10 push-3">
                    <h2>Sistema de Gestión de la ULAB</h2><br>
                    <table>
                        <tr>
                            <td>
                                <p>
                                    Módulo de Gestión de Administrativa
                                </p>
                            </td>
                            <td>
                                Usuario:
                                <b style="color:#126598;font-weight:bold" align="left">
                                    <bean:write name="LoginForm" property="usbid"/>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <html:link action="logout" >
                                    <p>Cerrar Session</p>
                                </html:link>
                            </td>
                        </tr>
                    </table>
                    
                    <iframe name="centro" src="/modulo5/inicio.jsp" height="580" width="600" frameborder="0">
                    <p>Your browser does not support iframes.</p>
                    </iframe>
                </div>
                <!--
                --
                -- FIN DE LA PARTE CENTRAL
                --
                -->
                <!-- Parte de la Izquierda -->
                <div id="sidebar-first" class="sidebar grid-3 pull-10">
                    <ul class="menu">
                        <li class="leaf">
                            <html:link action="agregarL" target="centro">
                                <p>Agregar </p>
                            </html:link>
                        </li>
                        <li class="leaf">
                            <html:link action="modificarL" target="centro">
                                <p>Modificar </p>
                            </html:link>
                        </li>
                        <li>
                            <html:link action="eliminarL" target="centro">
                                <p>Eliminar </p>
                            </html:link>
                        </li>
                        <li class="leaf">
                            <html:link action="consultarL" target="centro" >
                                <p>Consultar </p>
                            </html:link>
                        </li>
                        
                    </ul>
                </div>
                <!-- Parte de la Derecha -->
                <%--
                <div id="sidebar-second" class="sidebar grid-3"></div>
                --%>
            </div>
        </div>
        <footer id="footer" class="section section-footer clearfix" role="footer">
            <div class="region region-footer">
                <div id="block-block-1" class="block block-block first">
                    <div class="inner">
                        <div class="content">
                            <table align="left" border="0" cellpadding="1" cellspacing="1">
                                <tr>
                                    <td valign="bottom" width="95"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>            
        </footer>
        
    </body>
</html>
