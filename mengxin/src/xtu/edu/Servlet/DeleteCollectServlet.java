package xtu.edu.Servlet;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xtu.edu.Dao.CollectDao;
import xtu.edu.Entity.*;
/**
 * Servlet implementation class DeleteCollectServlet
 */
@WebServlet("/collect/delete.do")
public class DeleteCollectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Writer out = response.getWriter();
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null) {
			out.write("noLogin");
			out.close();
			return;
		}
		Integer flowerId = Integer.parseInt(request.getParameter("flowerId"));
		Integer userId = user.getId();
		//调用CollectDao方法完成数据访问
		//先查询该用户该商品是否在收藏列表中已存在
		CollectDao collectDao=new CollectDao();
		Collection collect=collectDao.selectPlantByUserId(userId, flowerId);
		if(collect == null) {
			//没收藏
			out.write("NeverCollect");
		}
		else {
			//以前收藏过
			Integer n = collectDao.delete(collect.getId());
			if(n == 1) {
				out.write("yes");
			}
			else {
				out.write("no");
			}
		}
		out.close();
	}

}
