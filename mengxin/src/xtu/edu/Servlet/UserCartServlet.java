package xtu.edu.Servlet;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xtu.edu.Dao.CartFlowerVoDao;
import xtu.edu.Entity.CartFlowerVo;
import xtu.edu.Entity.User;

/**
 * 此Servlet显示用户的购物车中的内容
 */
@WebServlet("/cart/userCart.do")
public class UserCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//0.准备输出对象(向浏览器写数据)
		Writer out=response.getWriter();
		//1.判断用户是否登录
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		if(user==null)//未登录
		{
			//响应一个重定向地址，建议浏览器访问登录页面
			response.sendRedirect("../user/loginRegister.do");
			return;
		}
		//2.登录成功
		Integer userid=user.getId();
		CartFlowerVoDao cartflowervodao=new CartFlowerVoDao();
		ArrayList<CartFlowerVo> cartFlowerVoList=cartflowervodao.selectCartByUserId(userid);
		request.setAttribute("cartFlowerVoList", cartFlowerVoList);
		request.getRequestDispatcher("../page/cart.jsp").forward(request, response);
	}

}
