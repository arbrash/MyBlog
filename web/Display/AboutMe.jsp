<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="arbrash.blog.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>About Me</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link href="../style.css" rel="stylesheet" type="text/css" media="screen"/>
</head>
<body>
<div id="wrapper">
    <div id="logo">
        <h1><a href="#">Arbrash's Blog </a></h1>
    </div>
    <hr/>
    <!-- end #logo -->
    <div id="header">
        <div id="menu">
            <ul>
                <li><a href="http://localhost:8080/servlet/GetBlogListServlet#">Blog</a></li>
                <li><a href="#">Category</a></li>
                <li><a href="#">Photos</a></li>
                <li class="current_page_item"><a href="#">About Me</a></li>
                <li><a href="http://localhost:8080/Login/login.jsp">Management</a></li>
            </ul>
        </div>
    </div>
    <!-- end #header -->
    <!-- end #header-wrapper -->
    <div id="page">
        <div id="page-bgtop">
            <% User user = (User) request.getAttribute("user");
            %>
            <table id="tab">
                <tr>
                    <td>
                        Name:
                    </td>
                    <td><%=user.getName()%>
                    </td>
                </tr>
                <tr>
                    <td>
                        Phone:
                    </td>
                    <td><%=user.getPhone()%>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td><%=user.getEmail()%>
                    </td>
                </tr>
                <tr>
                    <td>
                        Education:
                    </td>
                    <td><%=user.getEducation()%>
                    </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td height="79">
                    </td>
                </tr>
            </table>
        </div><!-- end sidebar -->
    </div><!-- end right -->
</div><!-- end container -->
</body>
</html>
  
