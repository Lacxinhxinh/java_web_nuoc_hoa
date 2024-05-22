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

import bean.nuochoabean;
import bo.nuochoabo;
import dao.nuochoadao;

/**
 * Servlet implementation class chitietsanpham
 */
@WebServlet("/chitietsanpham")
public class chitietsanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chitietsanpham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		    String ms = request.getParameter("ms");
		    HttpSession session = request.getSession();
		    
		    nuochoabo nhbo = new nuochoabo();
		    nuochoabean sp = nhbo.getSanPhamByMa(ms);
		    
		    request.setAttribute("sp", sp);
		    
		    request.getRequestDispatcher("ctsanpham.jsp").forward(request, response);
		   
		} catch (Exception e) {
		    e.printStackTrace();
		    request.setAttribute("notify", "Lỗi");
		    request.getRequestDispatcher("error.jsp").forward(request, response);
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
