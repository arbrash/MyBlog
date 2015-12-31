package arbrash.blog;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class CommentServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		if (method == null) {
			method = "";
		}
		if (method.equals("add")) {
			add(request, response);
		} else {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			if (user == null) {
				response.sendRedirect("../Login/login.jsp");
			} else {
				if (method.equals("list")) {
					list(request, response);
				} else if (method.equals("delete")) {
					delete(request, response);
				} else if (method.equals("edit")) {
					preEdit(request, response);
				} else if (method.equals("update")) {
					postEdit(request, response);
				} else {
					list(request, response);
				}
			}
		}
	}

	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String blogid = request.getParameter("blogid");

		if (name == null || name.equals("")) {
			name = "Anonymity";
		}

		String sql = "insert into comment (username,content,blogid,createdtime) values (?,?,?,now())";
		String params[] = { name, content, blogid };

		QueryRunner qr = DbHelper.getQueryRunner();
		try {
			qr.update(sql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		response.sendRedirect("/servlet/GetBlogServlet?id="+blogid);
	}

	public void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sql = "select id,username,content,createdtime from comment order by id desc";
		QueryRunner qr = DbHelper.getQueryRunner();
		List list = null;
		try {
			list = (List) qr.query(sql, new BeanListHandler(Comment.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}

		request.setAttribute("list", list);
		request.getRequestDispatcher("/Admin/adminCommentList.jsp").forward(
				request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String sql = "delete from comment where id=" + id;
		QueryRunner qr = DbHelper.getQueryRunner();

		try {
			qr.update(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		list(request, response);
	}

	public void preEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String sql = "select id,username,content from comment where id=" + id;
		QueryRunner qr = DbHelper.getQueryRunner();
		Comment comment = null;
		try {
			List list = (List) qr
					.query(sql, new BeanListHandler(Comment.class));
			comment = (Comment) list.get(0);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("comment", comment);
		request.getRequestDispatcher("/Admin/editComment.jsp").forward(request,
				response);
	}

	public void postEdit(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String username = request.getParameter("name");
		String content = request.getParameter("content");

		String sql = "update comment set username=?,content=? where id=?";
		String params[] = { username, content, id };
		QueryRunner qr = DbHelper.getQueryRunner();

		try {
			qr.update(sql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		list(request, response);
	}
}
