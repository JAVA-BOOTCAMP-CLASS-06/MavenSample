package ar.com.projects.app;

import ar.com.projects.bo.DataBO;
import ar.com.projects.bo.impl.DataBOImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (description = "Muestra una tabla HTML", urlPatterns = "/showAppData")
public class ViewServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1115342357960212896L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			   throws ServletException, IOException {
		
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			   throws ServletException, IOException {
		
		DataBO dBo = new DataBOImpl();

		RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher("/appData.jsp");
		request.setAttribute("data", dBo.processData());
		dispatcher.forward(request, response);
	}
	

}
