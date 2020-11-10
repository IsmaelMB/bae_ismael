USE bd_centro;
/*Creo el nuevo atributo EDAD en la tabla alumnos*/
ALTER TABLE ALUMNOS ADD
  Edad INT (2);
/* edad del alumno o alumna esté comprendida entre 14 y 65 años.*/
ALTER TABLE ALUMNOS MODIFY
   Edad INT(2) CHECK (Edad BETWEEN 14 AND 65 );
/* cursos con 30, 40 o 60 horas.*/
  ALTER TABLE CURSO MODIFY
    Horas INT (2) CHECK (Horas BETWEEN 30 OR 40 OR 60);
/* eliminada la restricción que controla los valores que puede tomar el atributo Sexo*/
  ALTER TABLE ALUMNOS
 sexo CHAR NOT NULL ;
/*columna eliminada en cascada */
 ALTER TABLE PROFESORES DROP COLUMN direccion ;
/* Cambia la clave primaria de la tabla PROFESORES por Nombre y Apellidos.*/
ALTER TABLE PROFESORES
  DROP CONSTRAINT pro_dni_PK;
  ALTER TABLE PROFESORES
  CONSTRAINT na_pro_PK PRIMARY KEY (nombre,apellido2);
/*Renombra la tabla PROFESORES por TUTORES. */
ALTER TABLE PROFESORES RENAME TO TUTORES;
/*Elimina la tabla ALUMNOS. */
ALTER TABLE ALUMNOS DISABLE PRIMARY KEY [CASCADE];
/*Crea un usuario con tu nombre y clave BD02 y dale todos los privilegios sobre la tabla CURSOS. */
CREATE USER 'Ismael'@'localhost' IDENTIFIED BY 'BD02';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON CURSOS.* TO 'Ismael'@'localhost';
/*Ahora al usuario anterior quítale permisos para modificar o actualizar la tabla CURSOS. */
REVOKE ALL PRIVILEGES, GRANT UPDATE AND INSERT FROM Ismael
