<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@include file="header.jsp" %>
<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
<script type="text/javascript">
    document.getElementById('manageb').setAttribute("class","current_page_item");
</script>
<% Blog blog = (Blog) request.getAttribute("blog");
    //List list=(List)request.getAttribute("commentList");
%>
<form id="form1" name="form1" method="post" action="../servlet/postEditBlogServlet">
    <input type="hidden" name="id" value="<%=blog.getId()%>"/>
    <table width="100%" border="0">
        <tr>
            <h2>Edit blog</h2>
        </tr>
        <tr>
            <td width="76">Title：</td>
            <td width="100%"><label>
                <input name="title" type="text" id="title" size="160" value="<%=blog.getTitle()%>"/>
            </label></td>
        </tr>
        <tr>
            <td>Category：</td>
            <td><label>
                <select name="category" id="select">
                    <option <%if(blog.getCategoryId()== 1){%>value="1" selected<%}else{%>value="1"<%}%>>LeetCode</option>
                    <option <%if(blog.getCategoryId()== 2){%>value="2" selected<%}else{%>value="2"<%}%>>Other</option>
                </select>
            </label></td>
        </tr>
        <tr>
            <td>Content：</td>
            <td><label>
                <textarea name="content" cols="60" rows="8" id="content"><%=blog.getContent()%></textarea>
            </label></td>
        </tr>
        <tr align="center">
            <td><label>
            </label></td>
            <td><label>
                <input type="reset" name="button" id="button" value="Reset"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" name="button2" id="button2" value="Update"/>
            </label></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <script>
        CKEDITOR.replace('content');
    </script>
</form>
<%@include file="footer.jsp" %>
