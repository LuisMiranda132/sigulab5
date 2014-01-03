--******************************************************************************
--************************* CREACION DE TABLAS *********************************
--******************************************************************************

CREATE TABLE USUARIO (

    usbid            varchar(15)     PRIMARY KEY,
    nombres          varchar(20)     NOT NULL,
    apellidos        varchar(20)     NOT NULL,
    cedula           varchar(8)      NOT NULL,
    correo           varchar(30)     NOT NULL,
    direccion        varchar(50)     NOT NULL,
    telefono_casa    varchar(12)     NOT NULL,
    telefono_celular varchar(12)     NOT NULL,
    tipo             varchar(20)     NOT NULL,
    visibilidad      INTEGER         NOT NULL DEFAULT 1

);

CREATE TABLE EMPLEADO (

    cargo           varchar(30)     NOT NULL,
    antiguedad      varchar(30)     NOT NULL,
    tipo_empleado   varchar(15)     NOT NULL,
    usbid           varchar(15)     NOT NULL, constraint pk_empleado primary key (usbid),
    constraint fk_empleado foreign key (usbid) references usuario(usbid) on delete cascade
);

CREATE TABLE laboratorio
(
  codigo varchar(20) NOT NULL, -- De la forma LAB'X'
  nombre varchar(20), -- Laboratorio 'X'
  sede varchar(15), -- Sartenejas o Litoral
  ubicacion varchar(30), -- Edificio
  correo varchar(25),
  pagweb varchar(25),
  jefe varchar(15), --USB ID
  CONSTRAINT pk_laboratorio PRIMARY KEY (codigo),
  CONSTRAINT fk_laboratorio_jefe FOREIGN KEY (jefe)
      REFERENCES usuario (usbid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION

);


/*

CREATE TABLE LABORATORIO (
	
    codigo          varchar(10)     NOT NULL, -- De la forma LAB'X'
    nombre          varchar(100)    NOT NULL, -- Laboratorio 'X'
    sede            varchar(15)     NOT NULL, -- Sartenejas o Litoral
    ubicacion       varchar(100)    NOT NULL, -- Edificio
    correo          varchar(50)     NOT NULL,
    pagweb          varchar(50)     NOT NULL,
    jefe            varchar(50)     NOT NULL, --USB ID
    CONSTRAINT pk_laboratorio PRIMARY KEY (codigo),
    CONSTRAINT fk_laboratorio_jefe FOREIGN KEY (jefe) REFERENCES usuario (usbid) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION

);
*/

--CREATE TABLE SERVICIO (

--        id              varchar(15)      PRIMARY KEY;
--        tipo            varchar(50)     NOT NULL;
--        nombre          varchar(50)     NOT NULL;
--        disponibilidad  varchar(50)     NOT NULL
 
--);


-- CREATE TABLE ESTUDIANTE (
--   usbid			varchar(15)           	PRIMARY KEY references USUARIO(usbid),
--   carnet		varchar(8)				NOT NULL,
--   tipo			tipo_estudiante       	NOT NULL
-- );

-- CREATE TABLE PROFESOR (
--   usbid			varchar(15)           	PRIMARY KEY references USUARIO(usbid),
-- );
