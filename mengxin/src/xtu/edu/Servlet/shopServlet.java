package xtu.edu.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xtu.edu.Dao.FlowerDao;
import xtu.edu.Entity.Flower;


/**
 * Servlet implementation class indexServlet
 */
@WebServlet("/main/shop.do")
public class shopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//准备数据
		FlowerDao bd=new FlowerDao();
        ArrayList<Flower> flowerlist=bd.selectAll();
        //System.out.println(flowerlist.size());
        //System.out.println(booklist.size());
        
        request.setAttribute("flowerlist",flowerlist);
        
		//转发给index.jsp页面去显示
		request.getRequestDispatcher("../page/shop.jsp").forward(request, response);
	}

}
