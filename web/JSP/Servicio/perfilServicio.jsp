<%-- 
    Document: perfilServicio
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
            @import "CSS/ser.css";    
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
        
<!--        <script src="js/jquery-1.9.1.js"></script>
        <script src="js/jquery-ui.js"></script>
        
        <script>
            
            $( document ).ready(function() {
                alert("Document Ready");
                
                $( "#jefe" ).click(function() {
                    var usbid = $( this ).text();
                });
            });
            
        </script>-->
        
        <title>Perfil</title>
    </head>
    <body>
    <br></br>
        <logic:iterate name="ser" id="Servicio">
            <div class="titulo_formulario"><bean:write name="Servicio" property="nombre"/></div>
        </logic:iterate>                  
           
        <logic:iterate name="ser" id="Servicio">
            <div class="wrapper">
                <div class="perfil_tamano">
                    <p><b>Código:</b> <bean:write name="Servicio" property="codigo"/>.</p>
                    <p><b>Nombre:</b> <bean:write name="Servicio" property="nombre"/>.</p>
                    <p><b>Laboratorio:</b>
                        <html:link action="perfilLaboratorioL" paramId="codigo" paramName="Servicio" paramProperty="laboratorio">
                            <bean:write name="Servicio" property="laboratorio"/>
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
                    <li><a href="#view2">Galería de fotos</a></li>
                </ul>

                <div class="panel-container">
                    <!--Primera pestana-->
                    <div id="view1" class="perfil_cuerpo">
                        <logic:iterate name="ser" id="Servicio">
                            <p></p>
                            <p style="text-align:justify;"><bean:write name="Servicio" property="caracteristicas"/>.</p>
                        </logic:iterate>
                    </div>        

                    <!--Segunda pestana-->
                    <div id="view2" class="perfil_cuerpo">
                        <center><img src="images/construccion.png"/></center>
                    </div>
                </div>
            </div>        
        
        <html:link action="back">
            <h2>
                << Volver
            </h2>
        </html:link>
    </body>
</html>



