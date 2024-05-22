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
import bo.admindangnhapbo;

/**
 * Servlet implementation class dangkyadmin
 */
@WebServlet("/dangkyadmin")
public class dangkyadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyadmin() {
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
		
		String mess = null;
		String mess2 = null;
		try {
			String tentk = request.getParameter("tentk");
			String mk = request.getParameter("mk");
			String mklai = request.getParameter("mklai");
			
			if(tentk !=null && !tentk.isEmpty() && mk!=null && !mk.isEmpty() && mk.equals(mklai)) {
				admindangnhapbo dnbo = new admindangnhapbo();
				dnbo.dangky(tentk, mk);
				
				HttpSession session = request.getSession();
				ArrayList<admindangnhapbean> updatedList = dnbo.getadmin(); // Lấy danh sách tài khoản sau khi thêm mới
			    session.setAttribute("ad", updatedList);
			    // Thêm thông báo thành công vào session
			    session.setAttribute("dangkySuccess", "Đăng ký tài khoản thành công");
			    
			    
				response.sendRedirect("userController");
			}
			else {
				 mess = "Lỗi";
				    request.setAttribute("mess", mess);
				    RequestDispatcher rd = request.getRequestDispatcher("userController");
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
