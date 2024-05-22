package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.khachhangbean;
import bo.chitietbo;
import bo.giohangbo;
import bo.hoadonbo;

/**
 * Servlet implementation class xacnhanController
 */
@WebServlet("/xacnhanController")
public class xacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Kiem tra xem kh da dang nhap chua
		try {
			HttpSession session = request.getSession();
			khachhangbean kh=(khachhangbean)session.getAttribute("dn");
			
			if(kh==null) {
				RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);
			} else {
				hoadonbo hdbo = new hoadonbo();
				chitietbo ctbo = new chitietbo();
				hdbo.Them(kh.getMakh());
				long maxhd = hdbo.MaHd();
				giohangbo gh=(giohangbo)session.getAttribute("gh");
				for(giohangbean h:gh.ds)
						ctbo.Them(h.getMasanpham(), h.getSoluong(), maxhd);
				// xoa gio hang
				session.removeAttribute("gh");
				//Dieu huong qua lichsuController de hien thi lich su mua hang
				response.sendRedirect("lichsuController");
			}
		} catch (Exception e) {
			// TODO: handle exception
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
