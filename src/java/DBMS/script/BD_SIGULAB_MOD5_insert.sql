--******************************************************************************
--********************************* INSERT *************************************
--******************************************************************************

--
-- INSERT USUARIO
--
-- USUARIO (usbid, nombres, apellidos, cedula, correo, direccion, telefono_casa, telefono_celular, tipo);
--

INSERT INTO USUARIO VALUES ('09-10279', 'Michelle', 'Fernandez', '19505244', 'micafe.go@gmail.com', 'La Castellana', '02122639194', '04120247075', 'Empleado');

/*
INSERT INTO USUARIO VALUES ('pperez','Pedro','Perez',235456,'ppedro@usb.ve','Caracas','02123244422','04142334565','empleado');
INSERT INTO USUARIO VALUES ('robertor','Roberto','Rodriguez',543643,'roberto@gmail.com','Valencia','02544344565','04142355467 ','empleado');
INSERT INTO USUARIO VALUES ('mmartinez','Marta','Martinez',357195,'marta@hotmal.com','Caracas','0212434453','041278655690','empleado');
INSERT INTO USUARIO VALUES ('jjimenez','Jesus','Jimenez',902334,'jj214@hotmail.com','Caracar','02123223555','04142348797','empleado');
INSERT INTO USUARIO VALUES ('luisl','Luis','Lopez',913285,'luisl@usb.ve','Caracas','0212533546','04142348888','empleado');
*/
INSERT INTO USUARIO VALUES ('pperez','Pedro','Perez',235456,'','','','','');
INSERT INTO USUARIO VALUES ('robertor','Roberto','Rodriguez',543643,'','','','','');
INSERT INTO USUARIO VALUES ('mmartinez','Marta','Martinez',357195,'','','','','');
INSERT INTO USUARIO VALUES ('jjimenez','Jesus','Jimenez',902334,'','','','','');
INSERT INTO USUARIO VALUES ('luisl','Luis','Lopez',913285,'','','','','');

--
-- INSERT EMPLEADO
--
-- EMPLEADO (cargo, antiguedad, tipo_empleado, usbid) 
-- 

INSERT INTO EMPLEADO VALUES ('Jefe', '2000', 'jefe', '09-10279');
INSERT INTO EMPLEADO VALUES ('Tecnico en Materiales','2005','tecnico','pperez');
INSERT INTO EMPLEADO VALUES ('Tecnico en Quimicos Explosivos','2010','tecnico','robertor');
INSERT INTO EMPLEADO VALUES ('Jefe Laboratorio A','2009','jefe','mmartinez');
INSERT INTO EMPLEADO VALUES ('Jefe Laboratorio C','2002','jefe','jjimenez');
INSERT INTO EMPLEADO VALUES ('Asistente','2005','personal admin','luisl');

--
-- INSERT LABORATORIO
--
-- LABORATORIO (codigo, nombre, sede, ubicacion, correo, pagweb, jefe)
--
INSERT INTO LABORATORIO VALUES ('LAB-A','Laboratorios de Ingeniería Aplicada','Sartenejas','Edificio de Alta Tensión Oficina 018','usb-laba@usb.ve','http://www.laba.usb.ve/','pperez');
INSERT INTO LABORATORIO VALUES ('LAB-B','Laboratorios de Biología, Química y Polímeros','Sartenejas','Edif. Química y Procesos P.B. Ofic. 019','usb-labb@usb.ve','N/A','robertor');
INSERT INTO LABORATORIO VALUES ('LAB-C','Laboratorios de Electrónica','Sartenejas','Parte posterior del Conjunto de Auditorios','usb-labc@usb.ve','http://www.labc.usb.ve/','mmartinez');
INSERT INTO LABORATORIO VALUES ('LAB-D','Laboratorios de Física','Sartenejas','Edificio de Física y Electrónica 2. P.B.','labd@labd.usb.ve','http://www.labd.usb.ve/','jjimenez');
INSERT INTO LABORATORIO VALUES ('LAB-E','Laboratorios de Materiales y Procesos de Fabricación','Sartenejas','Edificio de Máquinas y Herramientas','usb-labe@usb.ve','http://www.labe.usb.ve/','luisl');
INSERT INTO LABORATORIO VALUES ('LAB-F','Laboratorios de Tecnología de la Información','Sartenejas','Edificio de Matemática y Sistemas (MYS), Piso 2. Oficina 209-B','usb-labf@usb.ve','http://www.labf.usb.ve','luisl');
INSERT INTO LABORATORIO VALUES ('LAB-G','Laboratorios de la Sede del Litoral','Litoral','Edf. de los Laboratorios Pesados, Piso 1, Ofic. LPD102','usb-labg@usb.ve','N/A','luisl');





