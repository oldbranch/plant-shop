package xtu.edu.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xtu.edu.Dao.CollectFlowerVoDao;
import xtu.edu.Entity.*;


/**
 * Servlet implementation class UserCollectServlet
 */
@WebServlet("/user/usercollect.do")
public class UserCollectServlet extends HttpServlet {
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
					response.sendRedirect("../user/loginRegister.do");
					return;
				}
				//2.登陆成功，获取登录用户收藏列表，转到collect.jsp页面显示
				Integer userId = user.getId();
				CollectFlowerVoDao collectPlantVoDao=new CollectFlowerVoDao();
				ArrayList<CollectionFlowerVo> collectPlantVoList = collectPlantVoDao.selectCollectPlantVoByUserId(userId);
				 for(int i=0;i<collectPlantVoList.size();i++){
                 	CollectionFlowerVo cpo=collectPlantVoList.get(i);
				   System.out.println(cpo);
				 
				 }
				
				request.setAttribute("collectPlantVoList", collectPlantVoList);
				request.getRequestDispatcher("../page/wishlist.jsp").forward(request, response);
			}

}
