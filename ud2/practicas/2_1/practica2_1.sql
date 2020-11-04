/*Creo la base de datos*/
CREATE DATABASE bd_centro;
/*Pongo en uso mi base de datos*/
USE bd_centro;
/*Defino el CHARACTER SET Y EL COLLATE*/
ALTER DATABASE bd_centro CHARACTER SET utf8 COLLATE utf8_unicode_ci;
/*Guardo*/
FLUSH PRIVILEGES;
/*Creo la tabla principal*/
/* He asignado a casi todos lo valores not null ya que en una situación de requerimiento de datos todos ellos son importantes y se requieren para completar el registro*/
CREATE TABLE ALUMNOS (
  dni VARCHAR(9) PRIMARY KEY,
  nombre CHAR (10) NOT NULL,
  apellido1 CHAR (10) NOT NULL,
  apellido2 CHAR (10) NOT NULL,
  direccion VARCHAR (30) NOT NULL,
  sexo CHAR NOT NULL CHECK (sexo = V OR H),
  fecha_nacimiento DATE NOT NULL,
  curso VARCHAR (10) NOT NULL
);
/*Creo la tabla secundaria*/
/*He puesto como clave primaria el dni de los profesores creando un CONSTRAINT para ponerlo como clave secundaria en la 3ra tabla al ser un valor que se va a repetir*/
CREATE TABLE PROFESORES (
  dni VARCHAR(9) CONSTRAINT pro_dni_PK PRIMARY KEY,
  nombre CHAR (10) UNIQUE,
  apellido2 CHAR (10) NOT NULL,
  direccion VARCHAR (30) NOT NULL,
  salario Decimal (19,4) NOT NULL,

);

/*Creo la tercera tabla */
/*Pongo como requisito de date que el elemento de fecha fin sea mayor que la de inicio y el dni lo relaciono con la tabla donde se muestra el dni de la tabla de profesores*/

CREATE TABLE CURSOS (
  nombre VARCHAR(9) UNIQUE,
  codigo INT (5) NOT NULL,
  dni_profesor CHAR (10) CONSTRAINT cur_dni_FK
 REFERENCES PROFESORES ,
  maximo_alumnos INT (3) NOT NULL,
  fecha_inicio DATE CHECK (fecha_inicio = fecha_fin > fecha_inicio),
  fecha_fin DATE,
  Horas INT (3) NOT NULL,
);
