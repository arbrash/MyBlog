<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@include file="header.jsp" %>
<style type="text/css" media="all">
    @import url("/Admin/css/screen.css");
</style>
<script type="text/javascript">
    document.getElementById('manageb').setAttribute("class","current_page_item");
</script>
<script language="javascript">
    function p_delete(){
        var msg = "Want to delete the blog?\n\nPlease confirm!";
        if (confirm(msg) != true) {
            return false;
        } else {
            return true;
        }
    }
</script>
<%--<%
    List list = (List) request.getAttribute("list");
    Blog blog = null;
%>--%>

<div align="center">
    <h1>Blog management</h1>
    <display:table name="list" pagesize="10" requestURI="/servlet/adminBlogListServlet" id="c">
        <display:column property="id" title="ID"/>
        <display:column property="title" title="Title"/>
        <display:column property="createdTime" title="CreatedTime"/>
        <display:column title="Option">
            <a href="../servlet/preEditBlogServlet?id=${c.id}">Edit</a>|
            <a href="../servlet/DeleteBlogServlet?id=${c.id}" onclick="javascript:return del()">Delete</a>
        </display:column>
    </display:table>
    <%--<table id="table" width="100%" border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td width="10%">ID</td>
            <td width="55%">Title</td>
            <td width="20%">CreatedTime</td>
            <td width="15%">Option</td>
        </tr>
<%
    for(int i=0;i<list.size();i++){
        blog = (Blog) list.get(i);
%>
        <tr>
            <td><%=blog.getId()%></td>
            <td><%=blog.getTitle()%></td>
            <td><%=blog.getCreatedTime()%></td>
            <td><a href="../servlet/preEditBlogServlet?id=<%=blog.getId()%>">Edit</a>|
                <a href="../servlet/DeleteBlogServlet?id=<%=blog.getId()%>" onclick="javascript:return p_delete()">Delete</a></td>
        </tr>
<%
    }
%>
    </table>--%>
</div>
<%@include file="footer.jsp" %>
