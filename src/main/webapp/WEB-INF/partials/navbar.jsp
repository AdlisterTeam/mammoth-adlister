<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .speech {border: 1px solid #DDD; width: 300px; padding: 0; margin: 0}
    .speech input {border: 0; width: 240px; display: inline-block; height: 30px;}
    .speech img {float: right; width: 40px }
</style>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <!-- Search Bar-->
        <div class="col-md-4 col-md-offset-3">
            <form id="labnol" method="get" action="/search">
                <div class="speech">
                    <input type="text" name="q" id="transcript" placeholder="Speak" value="${search}"/>
                    <img onclick="startDictation()" src="//i.imgur.com/cHidSVu.gif" />
                </div>
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

<script>
    function startDictation() {

        if (window.hasOwnProperty('webkitSpeechRecognition')) {

            var recognition = new webkitSpeechRecognition();

            recognition.continuous = false;
            recognition.interimResults = false;

            recognition.lang = "en-US","es-US";
            recognition.start();

            recognition.onresult = function(e) {
                document.getElementById('transcript').value
                    = e.results[0][0].transcript;
                recognition.stop();
                document.getElementById('labnol').submit();
            };

            recognition.onerror = function(e) {
                recognition.stop();
            }

        }
    }
</script>