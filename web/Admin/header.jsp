<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="arbrash.blog.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Admin</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link href="../style.css" rel="stylesheet" type="text/css" media="screen"/>
</head>
<body>
<div id="wrapper">
    <div id="logo">
        <h1><a href="#"><%
            User user = (User) session.getAttribute("user");
            if (user == null) {
                response.sendRedirect("../Login/login.jsp");
            }
            if (user != null)
                out.print("Welcome!" + user.getUsername());
        %></a></h1>
    </div>
    <hr/>
    <!-- end #logo -->
    <div id="header">
        <div id="menu">
            <ul>
                <li id="addblog"><a href="http://localhost:8080/Admin/addBlog.jsp">Add blog</a></li>
                <li id="manageb"><a href="http://localhost:8080/servlet/adminBlogListServlet">Manage blog</a></li>
                <li id="managec"><a href="http://localhost:8080/servlet/CommentServlet?method=list">Manage comments</a></li>
                <li><a href="http://localhost:8080/servlet/GetBlogListServlet">Back to home</a></li>
            </ul>
        </div>
    </div>
    <!-- end #header -->
    <!-- end #header-wrapper -->
    <div id="page">
        <div id="page-bgtop">