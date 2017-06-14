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
        <jsp:param name="title" value="Ad details" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<h2>${sessionScope.ad.getTitle()}</h2>
<p>${sessionScope.ad.getDescription()}</p>
<p>${sessionScope.user.username}</p>
<p>${sessionScope.user.email}</p>
</body>
</html>
