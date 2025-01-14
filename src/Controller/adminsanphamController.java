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
import bean.loaibean;
import bean.nuochoabean;
import bo.loaibo;
import bo.nuochoabo;

/**
 * Servlet implementation class adminsanphamController
 */
@WebServlet("/adminsanphamController")
public class adminsanphamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminsanphamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 HttpSession session= request.getSession();
	         
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			loaibo lbo = new loaibo();		
			ArrayList<loaibean> dsloai =lbo.getloai();
			nuochoabo sbo = new nuochoabo();
			ArrayList<nuochoabean> dssach = sbo.getnuoc();
			request.setAttribute("dsloai", dsloai);
			request.setAttribute("dssach", dssach);
			RequestDispatcher rd = request.getRequestDispatcher("adminsanpham.jsp");
			rd.forward(request, response);
	      
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
