<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ include file="fuentedatos.jsp" %>

<c:set var="pageId" value="Insertar_L" />
<c:set var="standalone" value="not" />
<%@ include file="seguridad.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="img/ico.png"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creando libro</title>
        <style>
            .fila${param.isbn} {background-color:green;color:black;}
        </style>
    </head>
    <body>
        <sql:update dataSource = "${fuenteDatos}" var = "result">
            INSERT INTO libro (isbn,titulo,autor,editorial,fecha) VALUES (?,?,?,?,?);
            <sql:param value="${param.isbn}"/>
            <sql:param value="${param.titulo}"/>
            <sql:param value="${param.autor}"/>
            <sql:param value="${param.listaEditorial}"/>
            <sql:param value="${param.fechaPublicacion}"/>                
        </sql:update>
        <%@include file="header.jsp" %>
        <!--Inicio de tabla original mostrando registro creado-->
        <div class="container bg-secondary text-white p-3 my-3">
            <div class="table-responsive">
                    <h1 class="text-white text-center header">INSERTANDO LIBROS</h1>

                <table class="table table-striped table-dark">
                    <sql:query dataSource = "${fuenteDatos}" var = "result">
                        SELECT * from libro;
                    </sql:query>
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">ISBN</th>
                            <th scope="col">Titulo</th>
                            <th scope="col">Editorial</th>
                            <th scope="col">Fecha de Publicación</th>
                            <th scope="col">Autor</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var = "row" items = "${result.rows}">
                            <tr class="table-hover fila${row.isbn}">
                                <th scope="row">
                                    <c:out value = "${row.Id}"/>
                                </th>
                                <td><c:out value = "${row.isbn}"/>
                                </td>
                                <td><c:out value = "${row.titulo}"/></td>
                                <td><c:out value = "${row.editorial}"/>
                                </td>
                                <td><c:out value = "${row.fecha}"/></td>
                                <td><c:out value = "${row.autor}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <!--Fin de tabla original mostrando registro creado-->
        <div class="container p-3 my-3 bg-light text-dark border" id="tablaModificada">
            <div class="table-responsive">
                <legend class="text-center header">
                    <h2>Listado de libros actualizado con éxito</h2>
                </legend>
                <!-- link que redirecciona a index-->
                <h3><a href="index.jsp" style="font-size:1cm;color:blue;">Regresar a la página principal</a></h3>
            </div>
        </div>
        <!--Fin de la página-->
    </body>
</html>