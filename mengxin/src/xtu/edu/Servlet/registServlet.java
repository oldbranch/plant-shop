package xtu.edu.Servlet;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import xtu.edu.Dao.UserDao;
import xtu.edu.Entity.*;

/**
 * Servlet implementation class registServlet
 */
@WebServlet("/user/regist.do")
public class registServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SALT ="mynameischenjun";
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Writer out=response.getWriter();
		String uname=request.getParameter("Uname");
		String pwd=request.getParameter("PassWord");
		System.out.println(uname+" "+pwd);
		String supwd=DigestUtils.md5Hex(pwd+SALT).toString();//MD5¼ÓÃÜ
		UserDao fd=new UserDao();
		User user=fd.selectByUname(uname);
		if(user==null) {
			fd.insert(uname,supwd);
			out.write("yes");//×¢²á³É¹¦£¡
		}
		else {
			out.write("no");//×¢²áÊ§°Ü£¡
		}
		out.close();
	}

}
