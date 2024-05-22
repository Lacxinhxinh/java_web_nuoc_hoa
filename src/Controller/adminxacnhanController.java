package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.xacnhanbean;
import bo.xacnhanbo;

/**
 * Servlet implementation class adminxacnhanController
 */
@WebServlet("/adminxacnhanController")
public class adminxacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminxacnhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				HttpSession session= request.getSession();
				/*if(session.getAttribute("admin") == null) {
					response.sendRedirect("dangnhapadminController");
				}
				else {*/
					 	xacnhanbo xnbo= new xacnhanbo();
				      	ArrayList<xacnhanbean> ds = xnbo.getdanhsach();
				        if (ds != null) {
				            request.setAttribute("ds", ds);
				        }
					 RequestDispatcher rd= request.getRequestDispatcher("admin.jsp");
			      	  rd.forward(request, response);
				/*}*/
			} catch (Exception e) {
				
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
