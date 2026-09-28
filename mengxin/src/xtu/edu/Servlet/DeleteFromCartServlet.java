package xtu.edu.Servlet;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xtu.edu.Dao.CartDao;

/**
 * Servlet implementation class DeleteFromCartServlet
 */
@WebServlet("/cart/deleteFromCart.do")
public class DeleteFromCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Writer out=response.getWriter();
		Integer id=Integer.parseInt(request.getParameter("id"));
		CartDao cartdao=new CartDao();
		Integer n=cartdao.deleteById(id);
		if(n==1)
		{
			out.write("yes");
		}
		else
		{
			out.write("no");
		}
	}

}
