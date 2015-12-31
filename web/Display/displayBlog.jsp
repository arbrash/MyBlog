<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="arbrash.blog.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Blog</title>
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
                <li class="current_page_item"><a href="http://localhost:8080/servlet/GetBlogListServlet#">Blog</a></li>
                <li><a href="#">Category</a></li>
                <li><a href="#">Photos</a></li>
                <li><a href="http://localhost:8080/servlet/GetAboutMeServlet?id=1">About Me</a></li>
                <li><a href="http://localhost:8080/Login/login.jsp">Management</a></li>
            </ul>
        </div>
    </div>
    <!-- end #header -->
    <!-- end #header-wrapper -->
    <div id="page">
        <div id="page-bgtop">
            <% Blog blog = (Blog) request.getAttribute("blog");
                List list = (List) request.getAttribute("commentList");
            %>
            <table id="tab">
                <tr>
                    <td align=center><h1><%=blog.getTitle()%>
                    </h1></td>
                </tr>
                <tr>
                    <td><span style="font-size: 12pt"><%=blog.getContent()%></span>
                    </td>
                </tr>

                <tr>
                    <td><%=blog.getCreatedTime()%>
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


            <%
                if(list.isEmpty()){
                    out.print("<h2>No comments</h2>");
                }
                else{
                    out.print("<h2>Recent comments</h2>");
                    for (int i = 0; i < list.size(); i++) {
                        Comment comment = (Comment) list.get(i);
            %>

            <table id="tab">
                <tr>
                    <td><%=comment.getUsername()%>'s comments</td>
                </tr>
                <tr>
                    <td><%=comment.getContent()%>
                    </td>
                </tr>
                <tr>
                    <td><%=comment.getCreatedTime()%>
                    </td>
                </tr>
            </table>
            <br><br>
            <%
                    }
                }
            %>
            <p>&nbsp;</p></td>
            </tr>
            <tr>
                <td>
                    <form id="form1" action="/servlet/CommentServlet" method="post">
                        <input type="hidden" name="method" value="add"/>
                        <input type="hidden" name="blogid" value="<%=blog.getId()%>"/>
                        <table id="tab1">
                            <tr>
                                <td>Guest：</td>
                                <td><label>
                                    <input name="name" type="text" id="name" size="20"/>
                                </label></td>
                            </tr>
                            <tr>
                                <td>Comments：</td>
                                <td><label>
                                    <textarea name="content" cols="40" rows="10" id="content"></textarea>
                                </label></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right"><label>
                                    <input type="submit" name="button" id="button" value="Submit"/>
                                </label></td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
            </table>
        </div>
    </div>




                <%--<br clear="all" />
                </div><!-- end content -->
                </div><!-- end center -->


                <div id="right">
                <div class="sidebar">
                        <ul>
                        <li>刘伟自己的博客，欢迎大家访问！</li>
                      </ul>

                   <h2>分类</h2>
                   <ul>
                    <li><a href="/blog">全部</a></li>
                    <% List categorys=(List)request.getAttribute("categorys");
                       for(int i=0;i<categorys.size();i++){
                        Category category=(Category)categorys.get(i);
                    %>
                        <li><a href="<%=request.getContextPath()%>/servlet/HomeServlet?cid=<%=category.getId()%>"><%=category.getName()%></a></li>
                     <%} %>
                   </ul>

                              <h2>最近的主题</h2>
                        <ul>
                            <%List recentBlogs=(List)request.getAttribute("blogs");
                              for(int i=0;i<recentBlogs.size();i++){
                                Blog blog2=(Blog)recentBlogs.get(i);
                                %>
                                <li><a href="<%=request.getContextPath()%>/servlet/HomeServlet?method=get&id=<%=blog2.getId()%>" target="_blank"><%=blog2.getTitle()%></a></li>
                            <%}%>
                      </ul>


                       <h2>最近的评论</h2>
                      <ul>
                      <% List comments=(List)request.getAttribute("comments");
                           for(int i=0;i<comments.size();i++){
                               Comment c=(Comment)comments.get(i);

                      %>
                              <li><a href="<%=request.getContextPath()%>/servlet/HomeServlet?method=get&id=<%=c.getBlogId()%>" target="_blank"><%=c.getContent()%></a></li>
                        <%} %>
                      </ul>

                             --%>
</div><!-- end sidebar -->
</div><!-- end right -->
</div><!-- end container -->
<div id="footer-bgcontent">
    <div id="footer">
    </div>
</div>
<!-- end #footer -->
</div>
</body>
</html>
  
