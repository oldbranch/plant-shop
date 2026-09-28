package xtu.edu.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xtu.edu.Dao.OrderVoDao;
import xtu.edu.Entity.*;

/**
 * Servlet implementation class UserOrderServlet
 */
@WebServlet("/user/userorder.do")
public class UserOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.建立连接
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null) {
			//响应一个重定向地址，建议浏览器访问登录页面
			response.sendRedirect("../page/login.html");
			return;
		}
		//2.登陆成功，获取登录用户订单列表，转到order.jsp页面显示
		Integer userId = user.getId();
		OrderVoDao orderVoDao=new OrderVoDao();
		ArrayList<OrderVo> orderVoList = orderVoDao.selectOrderVoByUserId(userId);
		request.setAttribute("orderVoList", orderVoList);
		request.getRequestDispatcher("../page/order.jsp").forward(request, response);
	}
}
