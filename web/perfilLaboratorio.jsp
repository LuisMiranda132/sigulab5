<%-- 
    Document: perfilLaboratorio
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
            @import "CSS/lab.css";    
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
    <br></br>
        <logic:iterate name="lab" id="Laboratorio">
            <div class="titulo_formulario"><bean:write name="Laboratorio" property="nombre"/></div>
        </logic:iterate>

        <logic:iterate name="lab" id="Laboratorio">
            <div class="wrapper">
                <div class="perfil_tamano">
                    <p></p>
                    <p><b>Codigo:</b> <bean:write name="Laboratorio" property="codigo"/>.</p>
                    <p><b>Nombre:</b> <bean:write name="Laboratorio" property="nombre"/>.</p>
                    <p><b>Jefe:</b>
                        <html:link action="perfilPersonalL" paramId="usbid" paramName="Laboratorio" paramProperty="jefe">
                            <bean:write name="Laboratorio" property="jefe"/>.
                        </html:link>
                    </p>
                </div>
            </div>
            <br></br>
        </logic:iterate>

        <!--TABS-->        
            <div id="demopage">
                <ul class="mctabs">
                    <li><a href="#view1">Descripción</a></li>
                    <li><a href="#view2">Organigrama</a></li>
                    <li><a href="#view3">Mapa de ubicación</a></li>
                </ul>

                <div class="panel-container">
                    <!--Primera pestana-->
                    <div id="view1" class="perfil_cuerpo">
                        <logic:iterate name="lab" id="Laboratorio">
                            <p></p>
                            <p><b>Sede:</b> <bean:write name="Laboratorio" property="sede"/>.</p>
                            <p><b>Ubicación:</b> <bean:write name="Laboratorio" property="ubicacion"/>.</p>
                            <p><b>Correo:</b> <bean:write name="Laboratorio" property="correo"/>.</p>
                            <p><b>Página web:</b> <bean:write name="Laboratorio" property="pagweb"/>.</p>
                            <p><b>Teléfono:</b> <bean:write name="Laboratorio" property="telefono"/>.</p>
                            <p><b>Fax:</b> <bean:write name="Laboratorio" property="fax"/>.</p>
                            <p style="text-align:justify;"><bean:write name="Laboratorio" property="caracteristicas"/>.</p>
                        </logic:iterate>
                    </div>        

                    <!--Segunda pestana-->
                    <div id="view2" class="perfil_cuerpo">
                        ORGANIGRAMA
                    </div>

                    <!--Tercera pestana-->
                    <div id="view3" class="perfil_cuerpo">
                        MAPA
                    </div>
                </div>
            </div>        
        
        <html:link action="back">
            <h2>
                << volver
            </h2>
        </html:link>
    </body>
</html>



