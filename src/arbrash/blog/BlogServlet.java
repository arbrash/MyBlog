package arbrash.blog;

import org.apache.commons.dbutils.QueryRunner;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet(name = "BlogServlet")
public class BlogServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user==null){
            response.sendRedirect("/Login/login.jsp");
        }
        else {
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String categoryId = request.getParameter("category");

            DataSource ds = null;
            try {
                Context context = new InitialContext();
                ds = (DataSource) context
                        .lookup("java:/comp/env/jdbc/mysqlds");
            } catch (NamingException e) {
                e.printStackTrace();
            }

            int result = 0;
            try {
                String sql = "insert into blog (title,content,categoryid,createdtime) values (?,?,?,now())";
                String params[] = {title, content, categoryId};
                QueryRunner qr = new QueryRunner(ds);
                result = qr.update(sql, params);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            String message = "";
            if (result == 1) {
                message = "Add successful!";
            } else {
                message = "Add failed";
            }
            request.setAttribute("message", message);
            request.getRequestDispatcher("/Admin/addBlogResult.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

