--******************************************************************************
--********************************* INSERT *************************************
--******************************************************************************
--
-- INSERT USUARIO
--
-- USUARIO (usbid, nombres, apellidos, cedula);
--


INSERT INTO USUARIO VALUES ('09-10279', 'Michelle', 'Fernandez', '19505244');
INSERT INTO USUARIO VALUES ('10-10333', 'Alejandro', 'Guillen', '21516707');
INSERT INTO USUARIO VALUES ('pperez','Pedro','Perez',235456);
INSERT INTO USUARIO VALUES ('robertor','Roberto','Rodriguez',543643);
INSERT INTO USUARIO VALUES ('mmartinez','Marta','Martinez',357195);
INSERT INTO USUARIO VALUES ('jjimenez','Jesus','Jimenez',902334);
INSERT INTO USUARIO VALUES ('luisl','Luis','Lopez',913285);

--
-- INSERT EMPLEADO
--
-- EMPLEADO (usbid, correo, direccion, cargo, ano_ingreso, tipo_empleado, status, telefono, tipo_usuario, area_laboral, extension, laboratorio, visibilidad) 
-- 

INSERT INTO EMPLEADO VALUES ('10-10333', 'aguillenv93@gmail.com', 'Macaracuay', 'Jefe', '2001', 'jefe', 'Activo', '02122570280', 'Empleado', 'BD', 'Lab BD', 'Lab F', 1);
INSERT INTO EMPLEADO VALUES ('09-10279', 'micafe.go@gmail.com', 'La Castellana', 'Jefe', '2000', 'jefe', 'Activo', '02122639194', 'Empleado', 'Materiales', 'Lab Polimeros', 'Lab A', 1);
INSERT INTO EMPLEADO VALUES ('pperez', '', '', 'Tecnico', '2005','tecnico', 'Activo', '', 'empleado', 'Materiales', 'Lab de Ceramica', 'Lab A', 1);
INSERT INTO EMPLEADO VALUES ('robertor', '', '', 'Tecnico','2010','tecnico', 'Activo', '', 'empleado', 'Quimicos Explosivos', 'Lab de Nitrogeno', 'Lab B', 1);
INSERT INTO EMPLEADO VALUES ('mmartinez', '', '', 'Jefe Laboratorio','2009','jefe', 'Reposo Postnatal', '', 'jefe', '', '', 'Lab A', 1);
INSERT INTO EMPLEADO VALUES ('jjimenez', '', '', 'Jefe Laboratorio','2002','jefe', 'En Congreso', '', 'jefe', '', '', 'Lab C', 1);
INSERT INTO EMPLEADO VALUES ('luisl', '', '', 'Asistente','2005','personal admin', 'Activo', '', 'empleado', '', '', '', 1);

--
-- INSERT FORMACION
--
-- FORMACION (usbid, item, ano)
-- 

INSERT INTO FORMACION VALUES ('10-10333', 'Ing en Computacion', '2016');
INSERT INTO FORMACION VALUES ('10-10333', 'SQLPlus by Oracle', '2012');
INSERT INTO FORMACION VALUES ('09-10279', 'Ing en Computacion', '2015');
INSERT INTO FORMACION VALUES ('pperez', 'Tecnico en Materiales', '1997');
INSERT INTO FORMACION VALUES ('pperez', 'Manipulacion de Ceramica', '2000');
INSERT INTO FORMACION VALUES ('pperez', 'Seguridad de Materiales', '1999');
INSERT INTO FORMACION VALUES ('robertor', 'Tecnico en Quimica General', '1998');
INSERT INTO FORMACION VALUES ('robertor', 'Diplomado en Quimicos Explosivos', '2000');
INSERT INTO FORMACION VALUES ('robertor', 'Curso de Nitrogenacion de Quimicos Explosivos', '2001');
INSERT INTO FORMACION VALUES ('mmartinez', 'Ing Quimico', '1987');
INSERT INTO FORMACION VALUES ('mmartinez', 'Seguridad Industrial', '1989');
INSERT INTO FORMACION VALUES ('mmartinez', 'Manejo de Sustancias Peligrosas', '1985');
INSERT INTO FORMACION VALUES ('mmartinez', 'Postgrado en Quimica Organica', '1991');
INSERT INTO FORMACION VALUES ('jjimenez', 'Ing Electronico', '1976');
INSERT INTO FORMACION VALUES ('jjimenez', 'Postgrado en Mecatronica', '1981');
INSERT INTO FORMACION VALUES ('luisl', 'Tecnico en Administracion', '1986');


--
-- INSERT PUBLICACION
--
-- PUBLICACION (usbid, publicacion, ano)
-- 
INSERT INTO PUBLICACION VALUES ('pperez','Fisuras en Ceramicas','2004');
INSERT INTO PUBLICACION VALUES ('pperez','Propiedades Elementales de Ceramicas','2007');
INSERT INTO PUBLICACION VALUES ('robertor','Paradigmas del Nitrogeno en Explosivos','2002');
INSERT INTO PUBLICACION VALUES ('mmartinez','Oxigenacion de Carbonos','1994');
INSERT INTO PUBLICACION VALUES ('mmartinez','Combustibles Fosiles vs Energias Alternativas','1998');
INSERT INTO PUBLICACION VALUES ('mmartinez','Plomo en la sangre','1995');
INSERT INTO PUBLICACION VALUES ('mmartinez','Alcalinidad en la Cocina','2003');
INSERT INTO PUBLICACION VALUES ('jjimenez','Desarrollo de un Circuito de Alta Energia','2009');
INSERT INTO PUBLICACION VALUES ('jjimenez','Robot Cazamonedas','1998');
INSERT INTO PUBLICACION VALUES ('jjimenez','Robot Boxeador','2001');


--
-- INSERT HABILIDAD
--
-- PUBLICACION (usbid, item)
-- 
INSERT INTO HABILIDAD VALUES ('10-10333','Manejo de SQLPlus y Postgres');
INSERT INTO HABILIDAD VALUES ('09-10279','Manejo de Microscopio de Polimeros');
INSERT INTO HABILIDAD VALUES ('pperez','Manejo de Microscopio de Ceramicas');
INSERT INTO HABILIDAD VALUES ('robertor','Diseno de Explosivos Quimicos');
INSERT INTO HABILIDAD VALUES ('mmartinez','Manejo de equipos de medicion de Alcalinidad');
INSERT INTO HABILIDAD VALUES ('jjimenez','Manejo de iRobot-200');
INSERT INTO HABILIDAD VALUES ('luisl','Manejo de Office Avanzado');
INSERT INTO HABILIDAD VALUES ('10-10333','Diseno y mantenimiento de Bases de Datos');
INSERT INTO HABILIDAD VALUES ('09-10279','Manejo de Constructor de Polimeros');
INSERT INTO HABILIDAD VALUES ('pperez','Manejo de Constructor de Ceramicas');
INSERT INTO HABILIDAD VALUES ('robertor','Mantenimiento de Explosivos Quimicos');
INSERT INTO HABILIDAD VALUES ('mmartinez','Manejo de Matlab');
INSERT INTO HABILIDAD VALUES ('jjimenez','Manejo de aIntelig');



--
-- INSERT LABORATORIO
--
-- LABORATORIO (codigo, nombre, sede, ubicacion, correo, pagweb, telefono, fax, caracteristicas, jefe, visibilidad)
--


INSERT INTO LABORATORIO VALUES ('LAB-A','Laboratorios de Ingeniería Aplicada','Sartenejas','Edificio de Alta Tensión Oficina 018','usb-laba@usb.ve','http://www.laba.usb.ve/','02129064130','02129064131','Secciones: Alta Tensión, Conversión de Energía Eléctrica, Conversión de Energía Mecánica, Desarrollo de Modelos y Prototipos, Dinámica de Máquinas, Fenómenos de Transporte, Mecánica Computacional, Mecánica de Fluidos, Operaciones Unitarias, Sistemas de Potencia','pperez',1);
INSERT INTO LABORATORIO VALUES ('LAB-B','Laboratorios de Biología, Química y Polímeros','Sartenejas','Edif. Química y Procesos P.B. Ofic. 019','usb-labb@usb.ve','N/A','02129063966', '02129063987', 'Secciones: Alimentos, Físico Química, Química Analítica, Química Inorgánica, Química General, Química Orgánica, Procesos Químicos,
Polímeros, Biología Marina, Biología Celular, Biología de Organismo, Nutrición, Micoteca, Bioterio, Museo Ecología', 'robertor',1);
INSERT INTO LABORATORIO VALUES ('LAB-C','Laboratorios de Electrónica','Sartenejas','Parte posterior del Conjunto de Auditorios','usb-labc@usb.ve','http://www.labc.usb.ve/','02129064005', '02129064009', 'Area Docente: Redes, Electrónica y Digital, Electrónica de Potencia, Procesamiento de Señales y Sistemas, Comunicaciones, Mecátronica, Instrumentación y Control de Procesos y Sistemas. Area de Investigación y Extensión: Centro de Automatización Industrial,
Electrónica de Potencia, Sistemas Digitales, Telecomunicaciones, Mecatrónica, Control Automático, Acústica y Comunicaciones, Estado Sólido, Biomecánica,
Sistemas Biomédicos, Procesamiento de Señales', 'mmartinez',0);
INSERT INTO LABORATORIO VALUES ('LAB-D','Laboratorios de Física','Sartenejas','Edificio de Física y Electrónica 2. P.B.','labd@labd.usb.ve','http://www.labd.usb.ve/','02129063520', '02129063519', 'Areas: Laboratoros Básicos, Laboratorios Intermedios, Laboratorios Avanzados y de Post-grado,
Laboratorio de Demostraciones. Areas de Investigación: Biofísica, Geofísica, Física de Estado Sólido, Plasma, Óptica Moderna y Aplicada, Psicofisiología,
Espectroscopía, Óptica e Interferometría, Física Nuclear, Óptica, Materia Condensada, Sólidos I, Docencia', 'jjimenez',1);
INSERT INTO LABORATORIO VALUES ('LAB-E','Laboratorios de Materiales y Procesos de Fabricación','Sartenejas','Edificio de Máquinas y Herramientas','usb-labe@usb.ve','http://www.labe.usb.ve/','02129064175', '02129621175', 'Secciones: Procesos Metalmecánicos, Procesos Metalúrgicos, Metalurgia Química,
Materiales, Polímeros, Cerámica, Metrología Dimensional, Microscopía Electrónica, Corrosión', 'luisl',1);
INSERT INTO LABORATORIO VALUES ('LAB-F','Laboratorios de Tecnología de la Información','Sartenejas','Edificio de Matemática y Sistemas (MYS), Piso 2. Oficina 209-B','usb-labf@usb.ve','http://www.labf.usb.ve','02129063276', '02129063276', 'Laboratorios Docentes: Laboratorio Docente de Aulas Computarizadas,
Laboratorio Computacional Docente de Ciencia Política, Laboratorio de Comercio Electrónico, Laboratorio de Informática Educativa,
Laboratorio de Lengua José Santos Urriola, Laboratorio Docente de Computación, Laboratorio Docente de Redes y Bases de Datos,
Laboratorio de Diseño Asistido por Computadora, Laboratorio Docente de Matemáticas y Estadísticas Computacionales, Laboratorios Especializados y de Alto Rendimiento,
Centro de Estadística y Software Matemático, Laboratorio de Bases de Datos, Laboratorio de Computación Gráfica y Multimedia, Laboratorio de Geomática Urbana,
Laboratorio de Inteligencia Artificial, Laboratorio de Investigación en Sistemas de Información, Laboratorio de Lenguajes y Algoritmos, Laboratorio Digital de Música,
Laboratorio de Sistemas Paralelos y Distribuidos, Laboratorio de Computación de Alto Rendimiento', 'luisl',1);
INSERT INTO LABORATORIO VALUES ('LAB-G','Laboratorios de la Sede del Litoral','Litoral','Edf. de los Laboratorios Pesados, Piso 1, Ofic. LPD102','usb-labg@usb.ve','N/A','02129069158', '02129069405', 'Tecnologías Aplicadas: Conversión de Energía Electrica, Conversión de Energía Mecánica, Aeronaves, Procesos Mecánicos de Fabricación y Materiales. Física - Electrónica: Física, Fundamentos de Circuitos Eléctricos, Digitales, Intrumentación y Control, Equipos Biomédicos.
Tecnologías de la Información y Comunicaciones: Tecnologías de la Información, Telemática, Comunicaciones. Servicios: Idiomas, Alimentos y Bebidas', 'luisl',1);



