<%-- 
    Document   : consultar
    Created on : Nov 27, 2013, 12:06:26 AM
    Author     : luismiranda
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
            @import "CSS/style_interno.css";
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
        <h1>Perfil</h1>

        <!-- DATOS DEL PERSONAL -->
        <logic:iterate name="user" id="Empleado">
            <div class="wrapper">
                <figure class="img-border left marg_right1"><img src="images/user.png" width="160"/></figure>
                <div class="perfil_tamano">
                    <br>USBID: <bean:write name="Empleado" property="usbid"/>.</br>
                    <br>Nombre: <bean:write name="Empleado" property="nombres"/> <bean:write name="Empleado" property="apellidos"/>.</br>
                    <br>Cargo: <bean:write name="Empleado" property="cargo"/>.</br>
                </div>
            </div>
            <br></br>
        </logic:iterate>

        <!--TABS-->
        <logic:iterate name="user" id="Empleado">
            <div id="demopage" class="perfil_cuerpo">
                <ul class="mctabs">
                    <li><a href="#view1">Datos personales</a></li>
                    <li><a href="#view2">Formación</a></li>
                    <li><a href="#view3">Publicaciones</a></li>
                </ul>

                <div class="panel-container">
                    <!--Primera pestana-->
                    <div id="view1">
                        <p>Cédula: <bean:write name="Empleado" property="cedula"/>.</p>
                        <p>Correo: <bean:write name="Empleado" property="correo"/></p>
                        <p>Dirección: <bean:write name="Empleado" property="direccion"/>.</p>
                        <p>Teléfono (casa): <bean:write name="Empleado" property="telefono_casa"/></p>
                        <p>Teléfono (celular): <bean:write name="Empleado" property="telefono_celular"/></p>
                        <p>Antigüedad: <bean:write name="Empleado" property="antiguedad"/></p>
                    </div>

                    <!--Segunda pestana-->
                    <div id="view2">
                        <p>Aquí van los cursos, estudios, etc. que haya hecho la persona.</p>        
                    </div>

                    <!--Tercera pestana-->
                    <div id="view3">
                        <p>Aquí van las publicaciones que ha hecho la persona.</p>
                    </div>

                </div>
            </div>
        </logic:iterate>
        
        <html:link action="back">
            <h2>
                Volver
            </h2>
        </html:link>
    </body>
</html>