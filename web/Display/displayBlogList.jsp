<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="arbrash.blog.*" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.*" %>
<%@ page language="java" import="java.util.*,java.text.*" %>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%!
    public int nullIntconv(String inv) {
        int conv = 0;

        try {
            conv = Integer.parseInt(inv);
        } catch (Exception e) {
        }
        return conv;
    }
%>
<%
    int iYear = nullIntconv(request.getParameter("iYear"));
    int iMonth = nullIntconv(request.getParameter("iMonth"));
    int iDay = nullIntconv(request.getParameter("iDay"));

    Calendar ca = new GregorianCalendar();
    int iTDay = ca.get(Calendar.DATE);
    int iTYear = ca.get(Calendar.YEAR);
    int iTMonth = ca.get(Calendar.MONTH);

    if (iYear == 0) {
        iYear = iTYear;
        iMonth = iTMonth;
        iDay = iTDay;
    }

    GregorianCalendar cal = new GregorianCalendar(iYear, iMonth, 1);

    int days = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
    int weekStartDay = cal.get(Calendar.DAY_OF_WEEK);

    cal = new GregorianCalendar(iYear, iMonth, days);
    int iTotalweeks = cal.get(Calendar.WEEK_OF_MONTH);

%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Arbrash's Blog</title>
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
                <li class="current_page_item"><a href="#">Blog</a></li>
                <li><a href="#">Category</a></li>
                <li><a href="#">Photos</a></li>
                <% User user = (User) request.getAttribute("user");
                %>
                <li><a href="http://localhost:8080/servlet/GetAboutMeServlet?id=1">About Me</a></li>
                <li><a href="http://localhost:8080/Login/login.jsp">Management</a></li>
            </ul>
        </div>
    </div>
    <!-- end #header -->
    <!-- end #header-wrapper -->

    <%
        List list = (List) request.getAttribute("list");
        Blog blog1 = null;
        Blog blog2 = null;
    %>

    <div id="page">
        <div id="page-bgtop">
            <div id="content">
                <%
                    for(int i=0;i<4;i++){
                        blog1 = (Blog) list.get(i);
                %>
                <div class="post">
                    <h2 class="title"><a
                            href="http://localhost:8080/servlet/GetBlogServlet?method=get&id=<%=blog1.getId()%>" target="_blank"><%=blog1.getTitle()%>
                    </a></h2>
                    <p class="meta"><%=blog1.getCreatedTime()%>
                    </p>
                    <div class="entry">
                        <%
                            String source1 = blog1.getContent();
                            if (source1.length() < 400) {
                                out.print(source1);
                            } else {
                                String newString = source1.substring(0, 400);
                                out.print(newString + "...");
                            }
                        %>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <!-- end #content -->
            <div id="sidebar">
                <ul>
                    <li>
                        <h2>Calendar</h2>
                        <form name="frm" method="post" width="100%">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="73%" align="center" style="color:#4E96DE"><h3><%=
                                    new SimpleDateFormat("MMMM").format(new Date(2008,iMonth,01))%>-<%=iDay%>-<%=iYear%></h3></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table align="center" border="1" cellpadding="3" cellspacing="0" width="100%">
                                            <tbody>
                                            <tr>
                                                <th>Sun</th>
                                                <th>Mon</th>
                                                <th>Tue</th>
                                                <th>Wed</th>
                                                <th>Thu</th>
                                                <th>Fri</th>
                                                <th>Sat</th>
                                            </tr>
                                            <%
                                                int cnt = 1;
                                                for (int i = 1; i <= iTotalweeks; i++) {
                                            %>
                                            <tr>
                                                <%
                                                    for (int j = 1; j <= 7; j++) {
                                                        if (cnt < weekStartDay || (cnt - weekStartDay + 1) > days) {
                                                %>
                                                <td align="center" height="35" class="dsb">&nbsp;</td>
                                                <%
                                                } else {
                                                %>
                                                <td align="center" height="35" id="day_<%=(cnt-weekStartDay+1)%>">
                                                    <span><%=(cnt - weekStartDay + 1)%></span></td>
                                                <%
                                                        }
                                                        cnt++;
                                                    }
                                                %>
                                            </tr>
                                            <%
                                                }
                                            %>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            </td>
                            <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            </table>
                        </form>
                        <!-- end #Calender -->
                    </li>
                    <li>
                        <h2>Category </h2>
                        <ul>
                            <li><a href="#">LeetCode</a></li>
                            <li><a href="#">Other</a></li>
                        </ul>
                    </li>
                    <li>
                        <h2>Recent Blogs</h2>
                        <ul>
                            <%
                                for(int i=0;i<5;i++){
                                    blog2 = (Blog) list.get(i);
                            %>
                            <li><a href="http://localhost:8080/servlet/GetBlogServlet?method=get&id=<%=blog2.getId()%>" target="_blank"><%=blog2.getTitle()%></a></li>
                            <%
                                }
                            %>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- end #sidebar -->
            <div style="clear: both;">&nbsp;</div>
        </div>
    </div>
    <!-- end #page -->
    <div id="footer-bgcontent">
        <div id="footer">
        </div>
    </div>
    <!-- end #footer -->
</div>
</body>
</html>