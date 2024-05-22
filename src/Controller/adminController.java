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

import bean.admindangnhapbean;
import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class adminController
 */
@WebServlet("/adminController")
public class adminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			khachhangbo khbo = new khachhangbo();
			ArrayList<khachhangbean> dskhach = khbo.getkhachhang();
			HttpSession session = request.getSession();
			admindangnhapbean dn = (admindangnhapbean) session.getAttribute("admin");
			if(dn==null) {
				response.sendRedirect("dangnhapadminController");
			}
			else {
			if(session.getAttribute("dskhach")==null) {
				session.setAttribute("dskhach", dskhach);
			}
			RequestDispatcher rd = request.getRequestDispatcher("htadmin.jsp");
			rd.forward(request, response);
			}} catch (Exception e) {
			e.printStackTrace();
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
