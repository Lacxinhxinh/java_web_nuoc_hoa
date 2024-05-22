package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class gioController
 */
@WebServlet("/gioController")
public class gioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		    String ms = request.getParameter("ms");
		    String ts = request.getParameter("ts");
		    String giatam = request.getParameter("gia");
		    String anh = request.getParameter("anh");
		    // Neu ms, ts, giatam khac null
		    long dem = 0;
		    giohangbo gh = null;
		    HttpSession session = request.getSession();

		    if (anh != null && ms != null && ts != null && giatam != null) {
		        long gia = Long.parseLong(giatam);

		        if (session.getAttribute("gh") == null) {
		            gh = new giohangbo(); // new giohangbo();
		            session.setAttribute("gh", gh); // tao session("gh")
		        }
		        gh = (giohangbo) session.getAttribute("gh");
		        gh.Them(ms, ts, gia, 1, anh);
		        session.setAttribute("gh", gh);
		        
		        if (session.getAttribute("dem") == null) {
		            dem = 1;
		        } else {
		        	
		            dem = (long) session.getAttribute("dem");
		            dem++;
		        }
		        session.setAttribute("dem", dem);
		        
		        response.sendRedirect("htgio.jsp");
		    } else {
		        RequestDispatcher rd = request.getRequestDispatcher("htgio.jsp");
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
