<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Create a new Ad</h1>
    <form action="/ads/create" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <input type="hidden" name="country" id="countryId" value="US"/>
        <select name="state" class="states order-alpha" id="stateId">
            <option value="">Select State</option>
        </select>
        <select name="city" class="cities order-alpha" id="cityId">
            <option value="">Select City</option>
        </select>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
<script src="//geodata.solutions/includes/statecity.js"></script>
</html>
