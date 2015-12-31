<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@include file="header.jsp" %>
<style type="text/css" media="all">
    @import url("/Admin/css/screen.css");
</style>
<script type="text/javascript">
    document.getElementById('managec').setAttribute("class","current_page_item");
</script>
<script language="javascript">
    function p_delete(){
        var msg = "Want to delete the comment?\n\nPlease confirm!";
        if (confirm(msg) != true) {
            return false;
        } else {
            return true;
        }
    }
</script>
<%--<%
    List list = (List) request.getAttribute("list");
    Comment comm = null;
%>--%>

<div align="center">
    <h1>Comments management</h1>
    <display:table name="list" pagesize="10" requestURI="/servlet/CommentServlet" id="c">
        <display:column property="id" title="ID"/>
        <display:column property="username" title="Guest"/>
        <display:column property="content" title="Content"/>
        <display:column property="createdTime" title="CreatedTime"/>
        <display:column title="Option">
            <a href="../servlet/CommentServlet?method=edit&id=${c.id}">Edit</a>|
            <a href="../servlet/CommentServlet?method=delete&id=${c.id}" onclick="javascript:return del()">Delete</a>
        </display:column>
    </display:table>
    <%--<table id="table" width="100%" border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td width="10%">ID</td>
            <td width="20%">Guest</td>
            <td width="30%">Content</td>
            <td width="25%">Time</td>
            <td width="15%">Option</td>
        </tr>
<%
    for(int i=0;i<list.size();i++){
        comm = (Comment) list.get(i);
%>
        <tr>
            <td><%=comm.getId()%></td>
            <td><%=comm.getUsername()%></td>
            <td><%=comm.getContent()%></td>
            <td><%=comm.getCreatedTime()%></td>
            <td><a href="../servlet/CommentServlet?method=edit&id=<%=comm.getId()%>">Edit</a>|
                <a href="../servlet/CommentServlet?method=delete&id=<%=comm.getId()%>" onclick="javascript:return p_delete()">Delete</a></td>
        </tr>
<%
    }
%>
    </table>--%>
</div>
<%@include file="footer.jsp" %>
