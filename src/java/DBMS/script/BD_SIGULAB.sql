--******************************************************************************
--************************* CREACION DE TABLAS *********************************
--******************************************************************************

CREATE TYPE tipo_usuario AS ENUM ('estudiante','profesor','empleado');
CREATE TYPE tipo_estudiante AS ENUM ('pregrado','postgrado');
CREATE TYPE tipo_empleado AS ENUM ('personal admin','tecnico','jefe');


CREATE TABLE USUARIO (
  usbid					varchar(15)		PRIMARY KEY,
  nombres				varchar(20)		NOT NULL,
  apellidos				varchar(20)		NOT NULL,
  cedula				integer			NOT NULL,
  correo				varchar(30) 	NOT NULL,
  direccion 			varchar(50)		NOT NULL,
  telefono_casa 		varchar(12)		NOT NULL,
  telefono_celular 		varchar(12)		NOT NULL,
  tipo 					tipo_usuario	NOT NULL
);

CREATE TABLE ESTUDIANTE (
  usbid			varchar(15)           	PRIMARY KEY references USUARIO(usbid),
  carnet		varchar(8)				NOT NULL,
  tipo			tipo_estudiante       	NOT NULL
);

CREATE TABLE PROFESOR (
  usbid			varchar(15)           	PRIMARY KEY references USUARIO(usbid)
);

CREATE TABLE EMPLEADO (
  usbid			varchar(15)           	PRIMARY KEY references USUARIO(usbid),
  cargo			varchar(30)				NOT NULL,
  antiguedad	varchar(30)				NOT NULL,
  tipo			tipo_empleado       	NOT NULL
);


--******************************************************************************
--********************************* DROP ***************************************
--******************************************************************************

DROP TABLE POSTGRADO;
DROP TABLE PREGRADO;
DROP TABLE ESTUDIANTE;
DROP TABLE PROFESOR;
DROP TABLE USUARIO;
DROP TYPE tipo_usuario;
DROP TYPE tipo_estudiante;


--******************************************************************************
--******************************** INSERT **************************************
--******************************************************************************

INSERT INTO USUARIO values ('10-00000','Pedro','Perez',20900000,'r@gmail.com','La Florida','02121234567','04121234567','estudiante');
INSERT INTO USUARIO values ('10-00001','Carla','Perez',20900001,'r1@gmail.com','La Florida','02121234561','04121234561','estudiante');
INSERT INTO USUARIO values ('10-00002','Carlos','Perez',20900002,'r2@gmail.com','La Florida','02121234562','04121234562','estudiante');
INSERT INTO USUARIO values ('00-00002','Andres','Perez',10100002,'r5@gmail.com','La Florida','02121234002','04121234002','profesor');

INSERT INTO PROFESOR values ('00-00002');
INSERT INTO ESTUDIANTE values ('10-00002','10-00002','pregrado');
INSERT INTO ESTUDIANTE values ('10-00001','10-00002','postgrado');


--******************************************************************************
--******************************* TRIGGERS *************************************
--******************************************************************************




















