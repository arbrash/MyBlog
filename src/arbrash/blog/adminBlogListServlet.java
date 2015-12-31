package arbrash.blog;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "adminBlogListServlet")
public class adminBlogListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("../Login/login.jsp");
        } else {
            DataSource ds = null;
            try {
                Context context = new InitialContext();
                ds = (DataSource) context
                        .lookup("java:/comp/env/jdbc/mysqlds");
            } catch (NamingException e) {
                e.printStackTrace();
            }

            try {
                String sql = "select id,title,createdtime from blog order by id desc";
                QueryRunner qr = new QueryRunner(ds);
                List list = (List) qr.query(sql, new BeanListHandler(Blog.class));
                request.setAttribute("list", list);
                request.getRequestDispatcher("/Admin/adminBlogList.jsp").forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
