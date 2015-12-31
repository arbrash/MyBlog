<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Login</title>

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="http://localhost:8080/Login/css/animate.css">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="http://localhost:8080/Login/css/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
<div class="container">
    <div class="top">
        <h1 id="title" class="hidden"><span id="logo">Management</span></h1>
    </div>
    <form id="form1" name="form1" method="post" action="../servlet/UserServlet">
        <input type="hidden" name="method" value="login"/>
    <div class="login-box animated fadeInUp">
        <div class="box-header">
            <h2>Log In</h2>
        </div>
        <% String message=(String)request.getAttribute("message");
            if(message!=null){
                out.print("<font color='red'>"+message+"</font>");
            }
        %>
        <br/>
        <label for="username">Username</label>
        <br/>
        <input type="text" name="username" id="username">
        <br/>
        <label for="password">Password</label>
        <br/>
        <input type="password" name="password"id="password">
        <br/>
        <button type="submit" name="button" id="button">Sign In</button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="http://localhost:8080/servlet/GetBlogListServlet">Back</a>
        <br/>
    </div>
    </form>
</div>
</body>

<script>
    $(document).ready(function () {
        $('#logo').addClass('animated fadeInDown');
        $("input:text:visible:first").focus();
    });
    $('#username').focus(function() {
        $('label[for="username"]').addClass('selected');
    });
    $('#username').blur(function() {
        $('label[for="username"]').removeClass('selected');
    });
    $('#password').focus(function() {
        $('label[for="password"]').addClass('selected');
    });
    $('#password').blur(function() {
        $('label[for="password"]').removeClass('selected');
    });
</script>

</html>