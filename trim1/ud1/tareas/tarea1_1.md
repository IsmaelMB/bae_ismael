# INTRODUCCIÓN A LAS BASES DE DATOS

# 1. ¿Qué es un archivo o fichero?  
Es un conjunto de datos guardados, con formato que pueda ser leido por el ordenador.  

# 2. Tipos de ficheros.  
La base de los ficheros son secuencial , relativa y dispersión.
* Dentro de los cuales existen estas variantes:
  * Organización secuencial indexada.
  * Organización secuencial encadenada.  
  
# 3. Define brevemente los conceptos de registro y campo.  
Los registros son conjuntos de datos almacenados relacionados entre sí.   
Los campos son la información extra que se está recogiendo asignada a un registro.  

# 4. ¿Qué es una base de datos?  
Es un conjunto de datos organizados estructuralmente que se definen una sola vez y que se utiliza al mismo tiempo por muchos equipos y usuarios.  

# 5. Diferencias entre un sistema convencional de archivos y un Sistema Gestor de Base de Datos.  
Sistema de archivos:  

1. Manejo de archivos en texto plano
2. Búsqueda de tres tipos: secuencial, aleatorio, indexado.
3. No existen las actualizaciones, se simulan dando de baja el registro y dando de alta el nuevo con la modificación
4. Tienen independencia lógica y física la mayoría de ellos.
5. Cuenta con redundancia no controlada y errores de referencias.
6. Sus componentes son: archivos, registros, campos.  

Sistemas de bases de datos:  

1. Existe redundancia controlada e integridad referencia.
2. Implementa mayor seguridad.
3. Existen actualizaciones directas.
4. No tienen independencia ni lógica ni física.
5. Sus componentes son Hw, Sw, BD y Usuarios. 
6. Componentes de un Sistema Gestor de Base de Datos.  

# 7. Tipos de usuarios de las bases de datos, funciones y características de cada uno de ellos.  

Administradores:  

Trabajan en el nivel de abstracción físico relacionado con el almacenamiento.Distinguimos los administradores del propio sistema gestor encargados de la instalación y configuración del sistema, del control de acceso a los recursos, de la seguridad y de la monitorización y optimización del sistema gestor. Por su parte los administradores de bases de datos se encargan del diseño físico de la misma, implementación y mantenimiento de la base de datos. 

Diseñadores de la base de datos:  

Realizan el diseño lógico de la base de datos, debiendo identificar los datos, las relaciones entre datos y las restricciones sobre los datos y sus relaciones. El diseñador de la base de datos debe tener un profundo conocimiento de los datos de la empresa y también debe conocer sus reglas de negocio.    

Programadores:  

Tanto de aplicaciones que, mediante API de lenguajes de programación, interactúan con las bases de datos como
de objetos de la base de datos como rutinas almacenadas o disparadores. Estas aplicaciones servirán a los usuarios
finales para, de una forma amigable, poder consultar datos, insertarlos, actualizarlos y eliminarlos.  

Usuarios finales:    
Trabajan en el nivel externo mediante vistas o porciones de las bases de datos. Son “clientes” de las bases de datos
que hacen uso de ellas sin conocer en absoluto su funcionamiento y organización interna. Son personas con pocos o
nulos conocimientos de informática.  

# 8. Organización de una base de datos.   
* Modelo lógico en el que se basan
– Jerárquico.  
– En Red.  
– Relacional.  
– Objeto-relacional.  
– Orientado a Objetos.      
* Número de usuarios  
– Monousuario: solo permiten un usuario.  
– Multiusuario: permiten la conexión de varios usuarios.    
* Número de sitios  
– Centralizados: en un solo servidor o equipo.  
– Distribuidos: en varios equipos que pueden ser homogéneos y heterogéneos.    
* Ámbito de aplicación  
– Propósito General: orientados a toda clase de aplicaciones.  
– Propósito Específico: centradas en un tipo específico de aplicaciones.  
* Tipos de datos  
– Sistemas relacionales estándar: que manejan tipos básicos (int, char, etc.).  
– XML: para el caso de bases de datos que trabajan con documentos xml.  
– Objeto-relacionales: para bases relacionales que incorporan tipos complejos de datos.  
– De objetos: para bases de datos que soportan tipos de objeto con datos y métodos asociados.   
* Lenguajes soportados  
– SQL estándar.  
– NoSQL o nuevo lenguaje de consulta menos estructurado y orientado a bases documentales o de tipo
clave-valor.  

# 9. Modelos de bases de datos.  

* BD jerárquica
* BD de red
* BD relacional
* BD entidad-relación
* BD de objeto-relacional
* BD de modelos de objetos.

# 10. Tipos de archivos según su función en el tiempo  
Son 2 tipos permanentes y temporales, estos se dividen a su vez en :  
* Permanentes:  
  * Archivos maestros. Se llaman también archivos de situación. Contienen la información actualizada de los datos que pueden cambiar. Reflejan el estado actual de la aplicación o de algún aspecto o parte concreta de la misma.
  * Archivos constantes. Contienen los datos fijos de la aplicación o aquellos otros que
no suelen cambiar apenas. Se suelen utilizar como archivos de consulta.
  * Archivos históricos. Contienen los datos acumulados a lo largo del tiempo de los
archivos que han experimentado actualizaciones. Se emplean para efectuar estadísticas, para
posibles consultas o para reconstrucción de archivos que han sufrido deterioros.  
* Temporales
  * Archivos de movimiento o de transacciones. Contienen la información
necesaria para actualizar los archivos maestros con los datos o resultados de las operaciones
que se realizan. Una vez terminada cada operación, la información que contienen pierde su
valor y utilidad, y puede ser destruida.
  * Archivos de maniobra o intermedios. Se utilizan para almacenar datos o resultados auxiliares que han de ser utilizados por otros procesos o programas. Su vida
depende del tiempo que dure la operación en la que intervienen.



