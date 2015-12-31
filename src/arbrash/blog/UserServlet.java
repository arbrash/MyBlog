package arbrash.blog;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

@WebServlet(name = "UserServlet")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if (method == null) {
            method = "";
        }
        if (method.equals("login")) {
            login(request, response);
        } /*else if (method.equals("logout")) {
            logout(request, response);
        } else if (method.equals("change")) {
            changePassword(request, response);
        }*/

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user==null){
            response.sendRedirect("/Login/login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String sql = "select id,username,password from users where username=? and password=?";
        String params[] = { username, password };
        QueryRunner qr = DbHelper.getQueryRunner();
        User user = null;
        List list = null;
        try {
            list = (List) qr.query(sql, params,new BeanListHandler(User.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (list.size() > 0) {
            user = (User) list.get(0);
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            request.getRequestDispatcher("/Admin/admin.jsp").forward(request,
                    response);
        } else {
            request.setAttribute("message", "Wrong username or password!");
            request.getRequestDispatcher("/Login/login.jsp").forward(request,
                    response);
        }

    }

}
