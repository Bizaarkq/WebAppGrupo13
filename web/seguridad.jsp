
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty sessionScope.nivel}">
    <c:set var="nivel" value="-1" scope="session"/>
</c:if>
<c:if test="${standalone eq 'not'}" >
    <c:choose>
        <c:when test="${pageId eq 'Index' and empty sessionScope.usuarios}">
            <c:if test="${empty sessionScope.usuario}">
                <c:set var="usuario" value="Anonimo" scope="session"/>    
                <c:set var="nivel" value="0" scope="session"/>
            </c:if>
        </c:when>
        <c:when test="${pageId eq 'Insertar_L' and (sessionScope.nivel < 1 or sessionScope.nivel>1)}">
            <c:redirect url='error.jsp'>
                <c:param name="operacion" value="${pageId}"/>
                <c:param name="logeado" value="yes"/>
                <c:param name="tipo" value="noEncontrado"/>
                <c:param name="destino" value="index.jsp"/>
            </c:redirect>
        </c:when>        
        <%--VALIDANDO DELETE, AGREGANDO PARAM DE DESTINO PARA REDIRECCIONAR ADECUADAMENTE--%>
        <c:when test="${pageId eq 'Eliminar_L' and (sessionScope.nivel < 2 or sessionScope.nivel>2)}">
            <c:redirect url='error.jsp'>
                <c:param name="operacion" value="${pageId}"/>
                <c:param name="logeado" value="yes"/>
                <c:param name="tipo" value="noEncontrado"/>
                <c:param name="destino" value="index.jsp"/>
            </c:redirect>
        </c:when>
        <%--FIN VALIDANDO DELETE--%>
        <c:when test="${pageId eq 'form_Act' and (sessionScope.nivel < 2 or sessionScope.nivel>2)}">
            <c:redirect url='error.jsp'>
                <c:param name="operacion" value="${pageId}"/>
                <c:param name="logeado" value="yes"/>
                <c:param name="tipo" value="noEncontrado"/>
                <c:param name="destino" value="index.jsp"/>
            </c:redirect>
        </c:when>
    </c:choose>
</c:if>
<c:if test="${empty standalone or standalone eq null or standalone eq 'yes'}">
    <c:redirect url="error.jsp">
        <c:param name="tipo" value="contexto"/>
        <c:param name="destino" value="index.jsp"/>
    </c:redirect>
</c:if>