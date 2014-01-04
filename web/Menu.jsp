<%-- 
    Document   : Menu
    Created on :
    Author     : 
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
            @import "CSS/style_interno.css";
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
        
        <script src="js/jquery-1.9.1.js"></script>
        <script src="js/jquery-ui.js"></script>
        
        <script>
            $(function() {
                $("#accordion").accordion({
                    collapsible: true
                });
            });
        </script>
        
        <title>SIGULAB - Modulo de Gestion Administrativa</title>
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
                <!-- PARTE CENTRAL -->
                <div id="content" class="column grid-10 push-3">
                    <!--IMAGEN DEL USUARIO-->
                    <figure class="img-border left marg_right1"><img src="images/user.png" width="60"/></figure>
                    <!--USBID-->
                    Usuario:<b style="color:#126598;font-weight:bold" align="left">
                        <bean:write name="LoginForm" property="usbid"/>
                    </b>
                    <!--PERFIL USUARIO-->
                    <html:link action="perfilPersonalL" paramId="usbid" paramName="LoginForm" paramProperty="usbid" target="centro">
                        <p>Mi Perfil</p>
                    </html:link>
                    <!--CERRAR SESION-->
                    <html:link action="logout" >
                        <p>Cerrar Sesión</p>
                    </html:link>

                    <table>
                        <tr>
                            <td>
                                <h2>Sistema Integrado de Gestión de la ULAB   -   
                                    SIGULAB USB</h2>
                                <p> Módulo de Gestión de Administrativa </p>
                            </td>
                        </tr>
                        <tr>
                            <td></td>

                        </tr>
                    </table>
                    <iframe name="centro" src="/modulo5/inicio.jsp" height="580" width="600" frameborder="0">
                    <p>Your browser does not support iframes.</p>
                    </iframe>
                </div>

                <!-- PANEL IZQUIERDO -->
                <div id="sidebar-first" class="sidebar grid-3 pull-10">                    
                    <!-- MENU ACORDEON -->
                    <div id="accordion">
                        <h5 style="cursor: pointer;"> Gestionar Catalogo de Personal</h5>
                        <div>
                            <ul class="menu">
                                <li class="first leaf">
                                    <html:link action="agregarL" target="centro">
                                        <p>Agregar Personal</p>
                                    </html:link>
                                </li>
                                <li class="leaf">
                                    <html:link action="modificarL" target="centro">
                                        <p>Modificar Perfil</p>
                                    </html:link>
                                </li>
                                <li class="leaf">
                                    <html:link action="consultarTipo" target="centro" >
                                        <p>Consultar Personal</p>
                                    </html:link>
                                </li>
                            </ul></br>
                        </div>
                        <h5 style="cursor: pointer;">Gestionar Laboratorios</h5>
                        <div>
                            <ul class="menu">
                                <li class="first leaf">
                                    <html:link action="agregarLaboratorioL" target="centro">
                                        <p>Agregar Laboratorio</p>
                                    </html:link>
                                </li>                      
                                <li class="leaf">
                                    <html:link action="consultarTipoLab" target="centro">
                                        <p>Consultar Laboratorios</p>
                                    </html:link>
                                </li>
                            </ul> </br>
                        </div>                        
                    </div>
                </div>

                <!-- PANEL DERECHO -->
                <div id="sidebar-second" class="sidebar grid-3">
                    <div class="region region-sidebar-second">
                        <div id="block-block-2" class="block block-block first">
                            <div class="inner">
                                <div class="content">
                                    <p><img alt="" src="images/logo_ulab.gif"></p>
                                    <p><img alt="" src="images/innovar.gif"></p>
                                    <p><a href="http://www.ulab.usb.ve/jornadas"><img alt="" src="images/stickers_jornadas.jpg"></a></p>
                                    <p><a href="http://159.90.91.211/sites/default/files/catalogo_ulab.pdf"><img alt="" src="images/cat_ulab.jpg"></a></p>
                                    <p><a href="http://159.90.91.211/node/26"><img alt="" src="images/cons_ulab.jpg"></a></p>
                                    <p><a href="http://159.90.91.211/node/27"><img alt="" src="images/doc_ulab.jpg"></a></p>
                                    <p><a href="http://159.90.91.211/node/25"><img alt="" src="images/comit_ulab.jpg"></a></p>
                                    <p><a href="https://www.facebook.com/pages/Unidad-de-Laboratorios-USB/173900382644914" target="_blank"><img alt="" src="images/facebook.gif"></a></p>
                                    <p><img alt="" src="images/somosusb.gif"></p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
