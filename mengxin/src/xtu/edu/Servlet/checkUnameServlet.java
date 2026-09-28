package xtu.edu.Servlet;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xtu.edu.Dao.UserDao;
import xtu.edu.Entity.User;

/**
 * Servlet implementation class checkUnameServlet
 */
@WebServlet("/user/checkUname.do")
public class checkUnameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Writer out=response.getWriter();
		String uname=request.getParameter("Uname");
		UserDao fd=new UserDao();
		User user=fd.selectByUname(uname);
		if(user==null) {
			out.write("yes");//可以注册！
		}
		else {
			out.write("no");//用户名已被使用！
		}
		
	}

}
