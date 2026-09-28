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
 * 此Servlet实现收藏功能
 */
@WebServlet("/collect/collect.do")
public class CollectServlet extends HttpServlet {
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
				Integer plantId = Integer.parseInt(request.getParameter("plantId"));
				System.out.println(plantId);
				Integer userId = user.getId();
				System.out.println(userId);
				//调用CollectDao方法完成数据访问
				//先查询该用户该商品是否在收藏列表中已存在
				CollectDao collectDao=new CollectDao();
				Collection collect = collectDao.selectPlantByUserId(userId, plantId);
				System.out.println(collect);
				if(collect == null) {
					//说明是首次添加
					System.out.println("....");
					Collection newCollect = new Collection();
					newCollect.setUserId(userId);
					newCollect.setFlowerId(plantId);
					System.out.println(newCollect);
					Integer n = collectDao.insert(newCollect);
					if(n == 1) {
						out.write("yes");
					}
					else {
						out.write("no");
					}
				}
				else {
					//以前添加过
					out.write("CollectedBefore");
				}
				out.close();
	}

}
