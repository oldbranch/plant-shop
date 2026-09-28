package xtu.edu.Servlet;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xtu.edu.Dao.CartDao;
import xtu.edu.Entity.Cart;
import xtu.edu.Entity.User;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/cart/addToCart.do")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.准备输出对象(向浏览器写数据)
		
		Writer out=response.getWriter();
		//1.判断用户是否登录
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		if(user==null)//未登录
		{
			out.write("nologin");
			out.close();
			return;
		}
		
		//2.登录成功
		//2.1获取请求参数
		Integer flowerId=Integer.parseInt(request.getParameter("flowerId"));
		Integer num=Integer.parseInt(request.getParameter("num"));
		Integer userId=user.getId();
		//2.2调用CartDao方法完成数据访问
		//2.2.1先查询该商品该用户是否在购物车已存在
		CartDao cartdao=new CartDao();
		Cart cart=cartdao.selectByUserIdAndFlowerId(userId, flowerId);
		
		//System.out.println(cart);
		if(cart==null)//若未找到
		{
			//2.2.2 首次添加
			Cart newcart=new Cart();
			newcart.setUserId(userId);
			newcart.setFlowerId(flowerId);
			newcart.setNum(num);
			Integer n=cartdao.insert(newcart);//往表中插入一条记录
			if(n==1)
			{
				out.write("yes");
			}
			else
			{
				out.write("no");
			}
		}
		else//以前添加过
		{
			//2.2.3直接更新表中数据，只是更新数量
			Integer n=cartdao.updateNumById(num+cart.getNum(), cart.getId());
			if(n==1)
			{
				out.write("yes");
			}
			else
			{
				out.write("no");
			}
			
		}
		 out.close();
	}
	
}
