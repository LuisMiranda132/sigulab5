--******************************************************************************
--********************************* INSERT *************************************
--******************************************************************************

INSERT INTO USUARIO VALUES ('09-10279', 'Michelle', 'Fernandez', '19505244', 'micafe.go@gmail.com', 'La Castellana', '02122639194', '04120247075', 'Empleado',1);
INSERT INTO EMPLEADO VALUES ('Jefe', '2000', 'jefe', '09-10279');

INSERT INTO USUARIO VALUES ('10-10333', 'Alejandro', 'Guillen', '21516707', 'aguillenv93@gmail.com', 'Macaracuay', '02122570280', '04141731703', 'Empleado',0);
INSERT INTO EMPLEADO VALUES ('Jefe', '2001', 'jefe', '10-10333');

insert into usuario values ('pperez','Pedro','Perez',235456,'ppedro@usb.ve','Caracas','02123244422','04142334565','empleado');
insert into usuario values ('robertor','Roberto','Rodriguez',543643,'roberto@gmail.com','Valencia','02544344565','04142355467 ','empleado');
insert into usuario values ('mmartinez','Marta','Martinez',357195,'marta@hotmal.com','Caracas','0212434453','041278655690','empleado');
insert into usuario values ('jjimenez','Jesus','Jimenez',902334,'jj214@hotmail.com','Caracar','02123223555','04142348797','empleado');
insert into usuario values ('luisl','Luis','Lopez',913285,'luisl@usb.ve','Caracas','0212533546','04142348888','empleado');

insert into empleado values('Tecnico en Materiales','2005','tecnico','pperez');
insert into empleado values('Tecnico en Quimicos Explosivos','2010','tecnico','robertor');
insert into empleado values('Jefe Laboratorio A','2009','jefe','mmartinez');
insert into empleado values('Jefe Laboratorio Z','2002','jefe','jjimenez');
insert into empleado values('Asistente','2005','personal admin','luisl');
