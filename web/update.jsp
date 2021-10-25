<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ include file="fuentedatos.jsp" %><!--Fin Conexion a base de datos-->

<c:set var = "id" value = "${param.id}"/>
<c:set var = "isbn" value = "${param.isbn}"/>
<c:set var = "titulo" value = "${param.titulo}"/>
<c:set var = "autor" value = "${param.autor}"/>
<c:set var = "editorial" value = "${param.editorial}"/>
<c:set var = "fecha" value = "${param.fecha}"/>
<sql:update dataSource = "${fuenteDatos}" var = "count">
    UPDATE libro 
    SET isbn=?, titulo=?, autor=?,editorial=?,fecha=?
    WHERE id=?
    <sql:param value = "${isbn}" />
    <sql:param value = "${titulo}" />
    <sql:param value = "${autor}" />
    <sql:param value = "${editorial}" />
    <sql:param value = "${fecha}" />
    <sql:param value = "${id}" />
</sql:update>
