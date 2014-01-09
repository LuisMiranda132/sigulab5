<%-- 
    Document: consultar_laboratorios_jefe
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

        <style>
            
            .titulo_formulario {
                font-size: 14px;
                font-weight: bold;
                color: #42a9be;
                text-align: center;
                background-color: beige;
                height: 21px;
                line-height: 21px;
            }
            
            .logic_success {
                color: green;
                margin-top: 23px;
            }
            
            .logic_failure {
                color: red;
                margin-top: 23px;
            }
            
            .errors {
                color: red;
                margin-top: 23px;
                font-size: 10px;
            }
            
            #submit {
                margin-left: 372px;
                margin-top: 16px;
            }
            
            .boton {
                background: transparent;
                color: #1c6ea0;
                font-weight: bold;
                border: 0px;
                cursor: pointer;
            }
            
            .boton:hover, .boton:focus, .boton:active {
                color: #42a9be;
                transition: color .2s linear 0;
            }
                
        </style>            
                
        <title>Consultar Laboratorio</title>
    </head>
    <body>
        <div class="titulo_formulario"> Consultar Laboratorios </div>
        
        <table cellspacing='0'>
            <!-- PRIMERA FILA -->
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Página Web</th>
                    <th>Modificar</th>
                    <th>Ocultar</th>
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
                    <td>
	                    <html:link action="modificarLaboratorioL" target="centro" paramName="Laboratorio" paramProperty="codigo" paramId="codigo">
	                        <img src="images/modificar.png"/>
	                    </html:link>
                    </td>
                    <td>
                    	<html:link onclick="javascript: return confirm('¿Está seguro desea ocultar la vista de este laboratorio?')" action="desactivarLaboratorio" paramId="codigo" paramName="Laboratorio" paramProperty="codigo">
							<img src="images/ocultar.png"/>
						</html:link>
                    </td>              
                </tr>
            </logic:iterate>

            <logic:iterate name="labNovisibles" id="Laboratorio">
                <tr>
                    <td><bean:write name="Laboratorio" property="codigo"/></td>
                    <td><bean:write name="Laboratorio" property="nombre"/></td>
                    <td><bean:write name="Laboratorio" property="correo"/></td>
                    <td><bean:write name="Laboratorio" property="pagweb"/></td>
                    <td>
                        <html:link action="modificarLaboratorioL" target="centro" paramName="Laboratorio" paramProperty="codigo" paramId="codigo">
                            <img src="images/modificar.png"/>
	                </html:link>
                    </td>
                    <td>
                    	<html:link onclick="javascript: return confirm('¿Está seguro desea activar la vista de este laboratorio?')" action="activarLaboratorio" paramId="codigo" paramName="Laboratorio" paramProperty="codigo">
                            <img src="images/activar.png"/>
			</html:link>
                    </td>                  
                </tr>
            </logic:iterate>
        </table>
        
        <html:link action="back">
            <h2>
                << volver
            </h2>
        </html:link>
    </body>
</html>
