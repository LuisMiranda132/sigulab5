<%-- 
    Document: perfilPersonal 
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
        <script src="js/javascript-tabs.js" type="text/javascript"></script>
        <title>Perfil</title>
    </head>
    <body>
        <logic:iterate name="user" id="Empleado">
             <div class="titulo_formulario"><b><p><bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/></p></b></div>
        </logic:iterate>

        <!-- DATOS DEL PERSONAL -->
        <logic:iterate name="user" id="Empleado">
            <div class="wrapper">
                <figure class="img-border left marg_right1"><img src="<bean:write name="Empleado" property="imagen"/>" width="160"/></figure>
                <div class="perfil_tamano">
                    <p></p>
                    <p><b>USBID:</b> <bean:write name="Empleado" property="usbid"/>.</p>
                    <p><b>Nombre:</b> <bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/>.</p>
                    <p><b>Cargo:</b> <bean:write name="Empleado" property="cargo"/>.</p>
                    <p><b>Área laboral:</b> <bean:write name="Empleado" property="area_laboral"/>.</p>
                    <p><b>Status:</b> <bean:write name="Empleado" property="status"/>.</p>
                </div>
            </div>
            <br></br>
        </logic:iterate>

        <!--TABS-->        
            <div id="demopage">
                <ul class="mctabs">
                    <li><a href="#view1">Datos personales</a></li>
                    <logic:notEmpty name="userFormacion">
                        <li><a href="#view2">Formación</a></li>
                    </logic:notEmpty>
                    <logic:notEmpty name="userPublicacion">
                        <li><a href="#view3">Publicaciones</a></li>
                    </logic:notEmpty>
                    <logic:notEmpty name="userHabilidad">
                        <li><a href="#view4">Habilidades</a></li>
                    </logic:notEmpty>
                </ul>

                <div class="panel-container">
                    <!--Primera pestana-->
                    <div id="view1" class="perfil_cuerpo">
                        <logic:iterate name="user" id="Empleado">
                            <p><b>Correo:</b> <bean:write name="Empleado" property="correo"/></p>
                            <p><b>Dirección:</b> <bean:write name="Empleado" property="direccion"/>.</p>
                            <p><b>Teléfono:</b> <bean:write name="Empleado" property="telefono"/>.</p>
                            <p><b>Fecha de ingreso:</b> <bean:write name="Empleado" property="ano_ingreso"/>.</p>
                            <p><b>Extensión:</b> <bean:write name="Empleado" property="extension"/>.</p>
                            <p><b>Laboratorio:</b> <bean:write name="Empleado" property="laboratorio"/>.</p>
                        </logic:iterate>
                    </div>        

                    <!--Segunda pestana-->
                    <logic:notEmpty name="userFormacion">
                        <div id="view2" class="perfil_cuerpo">
                            <logic:iterate name="userFormacion" id="Formacion">
                                <dl>
                                    <p><dt><bean:write name="Formacion" property="ano_for"/>:</dt>
                                    <dd><bean:write name="Formacion" property="formacion"/>.</dd></p>
                                </dl>
                            </logic:iterate>  
                        </div>
                    </logic:notEmpty>

                    <!--Tercera pestana-->
                    <logic:notEmpty name="userPublicacion">
                        <div id="view3" class="perfil_cuerpo">
                            <logic:iterate name="userPublicacion" id="Publicacion">
                                <dl>
                                    <p><dt><bean:write name="Publicacion" property="ano_pub"/>:</dt>
                                    <dd><bean:write name="Publicacion" property="publicacion"/>.</dd></p>
                                </dl>
                            </logic:iterate>  
                        </div>
                    </logic:notEmpty>

                    <!--Cuarta pestana-->
                    <logic:notEmpty name="userHabilidad">
                        <div id="view4">
                            <logic:iterate name="userHabilidad" id="Habilidad">
                                <ul class = "view4">
                                    <li class = "perfil_cuerpo"><p><bean:write name="Habilidad" property="habilidad"/>.</p></li>
                                </ul>
                            </logic:iterate>
                        </div>
                    </logic:notEmpty>
                </div>
            </div>
               
            <html:link action="back">
                <h2>
                    << Volver
                </h2>
            </html:link>
        </a>
    </body>
</html>



