package arbrash.blog;

import org.apache.commons.dbutils.QueryRunner;

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

/**
 * Created by Arbrash on 2015/12/30.
 */
@WebServlet(name = "postEditBlogServlet")
public class postEditBlogServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String categoryId = request.getParameter("category");
        String id = request.getParameter("id");

        String sql = "update blog set title=?,content=?,categoryid=? where id=?";
        String params[]={title,content,categoryId,id};

        int result = 0;
        String message="";
        DataSource ds =null;
        try{
            Context context = new InitialContext();
            ds = (DataSource) context
                    .lookup("java:/comp/env/jdbc/mysqlds");
        } catch (NamingException e) {
            e.printStackTrace();
        }

        try{
            QueryRunner qr = new QueryRunner(ds);
            result = qr.update(sql,params);
        }catch(Exception e){
            e.printStackTrace();
        }

        if(result==1){
            message="Edit successful!";
        }else{
            message="Edit failed!";
        }
        request.setAttribute("message", message);
        request.getRequestDispatcher("/Admin/addBlogResult.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
