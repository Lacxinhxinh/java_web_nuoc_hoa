package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String tentk = request.getParameter("tentk");
			String mk = request.getParameter("mk");
			RequestDispatcher rd;
			
			if(tentk==null && mk==null) {
			 rd = request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);
			}
			
			if(tentk!=null && mk!=null) {
				khachhangbo khbo = new khachhangbo();
				khachhangbean kh = khbo.ktdn(tentk, mk);
				if(kh!=null) {
						//tao session de luu tru
						HttpSession session = request.getSession();
							if(session.getAttribute("dn")==null)
							session.setAttribute("dn", kh);
							rd = request.getRequestDispatcher("homeController");
					
				} else 
					 rd = request.getRequestDispatcher("home.jsp?kt=1");
					rd.forward(request, response);
				
			} 
		} catch (Exception e) {
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
