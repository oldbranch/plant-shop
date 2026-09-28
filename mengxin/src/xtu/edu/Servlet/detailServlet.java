package xtu.edu.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xtu.edu.Dao.CollectDao;
import xtu.edu.Dao.FlowerDao;
import xtu.edu.Entity.Flower;

/**
 * Servlet implementation class detailServlet
 */
@WebServlet("/goods/detail.do")
public class detailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Integer id=Integer.parseInt(request.getParameter("id"));
		FlowerDao flowerDao=new FlowerDao();
		Flower flower=flowerDao.selectById(id);
		request.setAttribute("flower", flower);
		//System.out.println(flower+".....");
		request.getRequestDispatcher("../page/detail.jsp").forward(request, response);
	}

}
