
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="img/ico.png"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">      
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <title>INICIO DE SESIÓN</title>
    </head>
    <body>
        <div class="container bg-secondary text-white p-3 my-3">
                    <BR/><BR/>
                    <h1 class="text-white text-center header">INICIAR SESI&Oacute;N</h1>
                                        <BR/>

                    <c:if test="${not empty param.msg}">
                        <p style="color:red;">Error: ${param.msg}</p>
                    </c:if>
                    <form name="form_login" action="validar.jsp" method="post">
                        <div class="form-group">
                            <label for="usuario">Usuario</label>
                            <input id="usuario" name="usuario"
                                class="form-control" type="input"
                                placeholder="Usuario">
                        </div>
                        <div class="form-group">
                            <label for="clave">Contraseña</label>
                            <input id="clave" name="clave"
                                class="form-control" type="password"
                                placeholder="Clave">
                        </div>
                        <br/>
                       
                        <button type="submit" value="Ingresar" class="btn btn-success"> Entrar
                        </button>
                        <a href="index.jsp" class="btn btn-success">Regresar</a>
                    </form>

            <br/>
            <br/>
        </div>
    </body>
</html>
