--******************************************************************************
--************************* CREACION DE TABLAS *********************************
--******************************************************************************

CREATE TABLE CAS (
    usbid            varchar(15)    PRIMARY KEY,
    nombres         varchar(20)     NOT NULL,
    apellidos       varchar(20)     NOT NULL,
    cedula          varchar(8)      NOT NULL
);

CREATE TABLE USUARIO (
    usbid            varchar(15)    PRIMARY KEY,
    nombres         varchar(20)     NOT NULL,
    apellidos       varchar(20)     NOT NULL,
    cedula          varchar(8)      NOT NULL
);

CREATE TABLE EMPLEADO (
    usbid           varchar(15)     NOT NULL, constraint pk_empleado primary key (usbid),
    correo          varchar(30),
    direccion       varchar(50),
    cargo           varchar(30)     NOT NULL,
    ano_ingreso     varchar(4)      NOT NULL,
    tipo_empleado   varchar(15)     NOT NULL,
    status          varchar(30)     NOT NULL DEFAULT 'Inactivo',
    telefono        varchar(12),
    tipo_usuario    varchar(20)     NOT NULL,
    area_laboral    varchar(30),
    extension       varchar(200),
    laboratorio     varchar(100),
    visibilidad     INTEGER         NOT NULL DEFAULT 1,
    imagen          varchar(100),
    constraint fk_empleado foreign key (usbid) references usuario(usbid) on delete cascade
);

CREATE TABLE FORMACION (
	usbid		varchar(15)     NOT NULL,
	formacion		varchar(100)	NOT NULL,
	ano_for			varchar(4),
    constraint fk_formado foreign key (usbid) references usuario(usbid) on delete cascade
);

CREATE TABLE PUBLICACION (
	usbid		varchar(15)     NOT NULL,
	publicacion varchar(100)	NOT NULL,
	ano_pub			varchar(4),
    constraint fk_autor foreign key (usbid) references usuario(usbid) on delete cascade
);

CREATE TABLE HABILIDAD (
	usbid		varchar(15)     NOT NULL,
	habilidad		varchar(100)	NOT NULL,
    constraint fk_habil foreign key (usbid) references usuario(usbid) on delete cascade
);

CREATE TABLE LABORATORIO (	
    codigo          varchar(10)     NOT NULL, -- De la forma LAB'X'
    nombre          varchar(100)    NOT NULL, -- Laboratorio 'X'
    sede            varchar(15)     NOT NULL, -- Sartenejas o Litoral
    ubicacion       varchar(100)    NOT NULL, -- Edificio
    correo          varchar(50)     NOT NULL,
    pagweb          varchar(50)     NOT NULL DEFAULT 'N/P',
	telefono		varchar(12)	    NOT NULL,
	fax				varchar(12)	    NOT NULL,
	caracteristicas	varchar(2000)   NOT NULL,
    jefe            varchar(50)     NOT NULL, -- USB ID
    visibilidad     INTEGER         NOT NULL DEFAULT 1,
    imagen          varchar(100),
    CONSTRAINT pk_laboratorio PRIMARY KEY (codigo),
    CONSTRAINT fk_laboratorio_jefe FOREIGN KEY (jefe) REFERENCES usuario (usbid) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE SERVICIO (	
    codigo          varchar(10)     NOT NULL, 
    nombre          varchar(100)    NOT NULL, 
    imagen 	    varchar(100)    NOT NULL,
    laboratorio          varchar(10)     NOT NULL, -- De la forma LAB'X'
    caracteristicas	varchar(2000)   NOT NULL,   
    CONSTRAINT pk_servicio PRIMARY KEY (codigo),
    CONSTRAINT fk_laboratorio FOREIGN KEY (laboratorio) REFERENCES laboratorio (codigo) on delete cascade
);