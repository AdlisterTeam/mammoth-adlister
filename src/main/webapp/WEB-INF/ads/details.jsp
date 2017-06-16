<%--
  Created by IntelliJ IDEA.
  User: frenchfryes
  Date: 6/14/17
  Time: 11:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad details"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h2>${sessionScope.ad.getTitle()}</h2>
    <p>${sessionScope.ad.getDescription()}</p>
    <p>Type of Music: <br>
        <c:forEach var="category"
                   items="${sessionScope.categories}">
            <a href="/categories?category=${category}">${category}</a><br>
        </c:forEach>
    </p>
    <p>${sessionScope.user.username}</p>
    <p>${sessionScope.user.email}</p>
    <p>${sessionScope.ad.location}</p>
    <c:if test="${sessionScope.user.getId() == sessionScope.ad.getUserId()}">
        <p><a href="/ads/edit?id=${ad.getId()}" class="btn btn-danger">Edit ad</a></p>
        <form action="/ads/delete" method="POST">
            <input type="hidden" name="id" value="${ad.id}"/>
            <button id="delete-ad" class="btn btn-danger">Delete</button>
        </form>
    </c:if>
</div>
</body>
</html>
