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
 * Servlet implementation class XoaUserController
 */
@WebServlet("/XoaUserController")
public class XoaUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {	
			request.setCharacterEncoding("utf-8"); 
		    response.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			
			admindangnhapbo user = new admindangnhapbo();
			
			String tendangnhap = request.getParameter("ms");
			if(tendangnhap !=null) {
				user.xoauser(tendangnhap);
				
				/*Sau khi xóa cập nhật lại danh sách*/
				ArrayList<admindangnhapbean> updatedList = user.getadmin();
		        session.setAttribute("ad", updatedList);
			}
			 RequestDispatcher rd = request.getRequestDispatcher("userController");
			    rd.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
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
