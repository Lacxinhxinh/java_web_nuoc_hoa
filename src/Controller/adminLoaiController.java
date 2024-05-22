package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bo.loaibo;

/**
 * Servlet implementation class adminLoaiController
 */
@WebServlet("/adminLoaiController")
public class adminLoaiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminLoaiController() {
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
			String maloai = request.getParameter("txtmaloai");
			String tenloai = request.getParameter("txttenloai");
			loaibo lbo = new loaibo();
			String tb = null;
			String tb2 = null;
			ArrayList<loaibean> ds = lbo.getloai();
			//Neu nguoi dung chon nut Add 
			if(request.getParameter("butadd")!=null)
				lbo.Them(maloai, tenloai);
			else 
				if(request.getParameter("butupdate")!=null)
					lbo.Sua(maloai, tenloai);
				else {
					String tab = request.getParameter("tab");
					String ml = request.getParameter("ml");
					if(tab!=null) {
						if(tab.equals("select")) {
							request.setAttribute("tenloai", lbo.Tim(ml));
							request.setAttribute("maloai", ml);
						}
						else 
							lbo.Xoa(ml);
					}
				}
			request.setAttribute("ds", lbo.getloai());
			if(request.getParameter("butadd")!=null) {
				tb = "Thêm Loại Sản Phẩm Thành Công";
			}
			
			if(request.getParameter("butupdate")!=null) {
					tb2 = "Sửa Thành Công";
				}
				
			
			
			request.setAttribute("tb", tb);
			request.setAttribute("tb2", tb2);
			RequestDispatcher rd = request.getRequestDispatcher("adminloai.jsp");
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
