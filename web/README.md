# 55a

Guía 55a

## Requisitos

[Apache Tomcat](http://tomcat.apache.org/) (de preferencia 7).

Maria DB o Mysql (para copiar las tablas). (mas facil XAMPP con phpmyadmin).

[Librerias JSTL](http://www.java2s.com/Code/JarDownload/jstl/jstl-1.2.jar.zip) 

JRE 7 u 8. (de preferencia 8) de 32 bits.

[Conector de java para MariaDB](https://downloads.mariadb.com/Connectors/java/connector-java-1.8.0/mariadb-java-client-1.8.0.jar)

## Configuración

clonar el repositorio

```
git clone https://github.com/redy-commits/55a.git
```

Luego copiar la carpeta **55a** a la carpeta **webapps** de Tomcat.

Entrar al gestor de base de datos y crear la base datos "biblioteca".

Luego importar los datos del archivo biblioteca.sql a la base de datos.

Luego debe configurarse el puerto de MySql (o mariaDB) al puerto 3308, sino debe de cambiarse en todos los jsp la parte de la linea que tiene el puerto 3308 a 3306.

```
url = "jdbc:mariadb://localhost:3308/biblioteca"
```

Para terminar se descarga el archivo jstl y el conector de mariaDB y se copian a la carpeta **Lib** de Tomcat.

Ya después solo queda arrancar el tomcat y ejecutar el proyecto.



