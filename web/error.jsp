
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="img/ico.png"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">      
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">     
        <title>ERRORES ENCONTRADOS</title>
    </head>
    <body>
        <div class="container p-3 my-3 bg-light border" id="div_error_encontrado">
            <h1>Se encontró un error!</h1>
            <div class="alert alert-danger" role="alert">
                <h4 class="alert-heading">Error:</h4>
                <!--No encontrado es Acceso Denegado por falta de permisos-->
                <p>
                    <c:choose>
                        <c:when test="${param.tipo eq 'contexto'}">
                            Intento de ejecutar una jsp, la cual debe estar en un contexto dentro de otra jsp
                        </c:when>
                        <c:when test="${param.tipo eq 'parametro'}">
                            Intento de ejecutar una jsp, sin proporcionar los parametros necesarios
                        </c:when>
                        <c:when test="${param.tipo eq 'noEncontrado'}">
                            Pagina No Encontrada (Acceso Denegado)
                        </c:when>
                    </c:choose>
                </p>
            </div>
        </div>
            <script>
                setTimeout(function () {
                    location.href = "${param.destino}";
                }, 5000);
            </script>
    </body>
</html>
