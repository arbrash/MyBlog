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
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "DeleteBlogServlet")
public class DeleteBlogServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        DataSource ds =null;
        try{
            Context context = new InitialContext();
            ds = (DataSource) context
                    .lookup("java:/comp/env/jdbc/mysqlds");
        } catch (NamingException e) {
            e.printStackTrace();
        }

        try{
            String sql = "delete from blog where id="+id;
            QueryRunner qr = new QueryRunner(ds);
            qr.update(sql);
        }catch (SQLException e){
            e.printStackTrace();
        }
        request.getRequestDispatcher("/servlet/adminBlogListServlet").forward(request,response);
    }
}
