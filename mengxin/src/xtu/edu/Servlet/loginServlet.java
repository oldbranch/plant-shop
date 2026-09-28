package xtu.edu.Servlet;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

import xtu.edu.Dao.UserDao;
import xtu.edu.Entity.User;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/user/login.do")
public class loginServlet extends HttpServlet {
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
		String supwd=DigestUtils.md5Hex(pwd+SALT).toString();//MD5加密
		UserDao fd=new UserDao();
		User user=fd.selectByUname(uname);
		if(user==null||!supwd.equals(user.getPassWord())) {
			out.write("no");//用户名错误或者密码或其它错误
		}
		else {
			HttpSession session=request.getSession();//与浏览器创建正式会话对象
			//System.out.println(session.getId());
			session.setAttribute("user", user);//把登陆用户的资料存到session中
			out.write("yes");//登陆成功
		}
		out.close();
	}
}
