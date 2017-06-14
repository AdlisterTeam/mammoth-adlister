<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <!-- Search Bar-->
        <div class="col-md-4 col-md-offset-3">
            <form action="/search" method="get">
                <input name="search" id="search" class="searchBar form-control" type="text">
                <input type="submit">
            </form>
        </div>

        <!-- Search icon -->
        <i class="fa fa-search fa-2x col-md-2 navbar-brand" aria-hidden="true"></i>


        <ul class="nav navbar-nav navbar-right">
            <%--<li><a href="/login">Login</a></li>--%>
            <%--<li><a href="/logout">Logout</a></li>--%>
            <c:if test="${sessionScope.user == null}">
                <li><a href="/register">Register</a></li>
                <li><a href="/login">Login</a></li>
            </c:if>

            <c:if test="${sessionScope.user != null}">
                <li><a href="/ads/create">Create Ad</a></li>
                <li><a href="/profile">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
