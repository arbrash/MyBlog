<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp" %>
<meta http-equiv="refresh" content="5;url=hello.html">
<br/>
<br/>
<br/>
    <h2 align="center"><%=request.getAttribute("message")%></h2>
<%response.setHeader("Refresh","5;URL=http://localhost:8080/servlet/UserServlet");%>

<%@include file="footer.jsp" %>
