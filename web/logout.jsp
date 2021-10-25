
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="img/ico.png"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CIERRE DE SESIÓN</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">    
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">  
    </head>
    <body>
            <c:set var="usuario" value="" scope="session" />
            <c:set var="nombre" value="" scope="session" />
            <c:set var="nivel" value="-1" scope="session" />
            <div class="container bg-secondary text-white p-3 my-3">
                <h1 class="text-white text-center header">CIERRRE DE SESI&Oacute;N</h1>
                <div class="alert alert-secondary" role="alert">
                    <h4 class="alert-heading">Cerrando sesión</h4>
                    <p>Dentro de unos segundos serás redirigido a la página de inicio. Hasta luego.</p>
                </div>
            </div>
            <script>
                    setTimeout(function () {
                        location.href = "index.jsp";
                    }, 3000);
            </script>
    </body>
</html>
