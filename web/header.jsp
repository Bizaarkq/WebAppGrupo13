
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light"> 
    <a class="navbar-brand" href="index.jsp">Mantenimiento de libros</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <c:if test="${not empty sessionScope.usuario}">
            <c:if test="${sessionScope.usuario != 'Anonimo'}">
                <b style="color:black;font-size:5mm;">${sessionScope.nombre}</b>
                <b style="color:black;font-size:5mm;">
                    ,  ${sessionScope.usuario}&nbsp;</b>
                    <a href="logout.jsp" class="btn btn-primary">Salir de sesión</a>
            </c:if>
        </c:if>
        <c:if test="${empty sessionScope.usuario or sessionScope.usuario eq 'Anonimo'}">
                  <a href="frmlogin.jsp" class="btn btn-primary">Iniciar sesión</a>
        </c:if>
      </li>
    </ul>
  </div>
</nav>           