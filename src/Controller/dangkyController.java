package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.khachhangbo;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		RequestDispatcher rd;
		try {
			 	
	            String hoten = request.getParameter("hoten");
	            String tendn = request.getParameter("tentk");
	            String pass = request.getParameter("mk");
	            String diachi = request.getParameter("diachi");
	            String sodt = request.getParameter("sdt");
	            String email = request.getParameter("email");
	            
	            khachhangbo khbo = new khachhangbo();
	          
	            if (hoten != null && !hoten.isEmpty() &&
	                tendn != null && !tendn.isEmpty() &&
	                pass != null && !pass.isEmpty() &&
	                diachi != null && !diachi.isEmpty() &&
	                sodt != null && !sodt.isEmpty() &&
	                email != null && !email.isEmpty()) {
	                khbo.dangky(hoten, diachi, sodt, email, tendn, pass);
	                response.sendRedirect("dangnhapController");
	            } else {
	            	
	                request.setAttribute("mess", "Vui Lòng Nhập Đầy Đủ Thông Tin.");

	                response.sendRedirect("dangky.jsp");
	               
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
