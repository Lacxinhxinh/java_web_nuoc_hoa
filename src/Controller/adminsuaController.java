package Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.nuochoabean;
import bo.nuochoabo;

/**
 * Servlet implementation class adminsuaController
 */
@WebServlet("/adminsuaController")
public class adminsuaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminsuaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DiskFileItemFactory factory = new DiskFileItemFactory();
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "image_sanpham";
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		try {
		    request.setCharacterEncoding("utf-8");
		    response.setCharacterEncoding("utf-8");
		    String masanpham = null;
		    String tensanpham = null;
		    long soluong = 0;
		    long gia = 0;
		    String maloai = null;
		    String anh = null;
		    String thuonghieu = null;
		    String tenanh = null;
		    String tb = null;
		    Date ngaynhap=null;
		    List<FileItem> fileItems = upload.parseRequest(request); //Lấy về các đối tượng gửi lên
		    // Duyệt qua các đối tượng gửi lên từ client gồm file và các control
		    for (FileItem fileItem : fileItems) {
		        if (!fileItem.isFormField()) { //Nếu không phải các control=>upload file lên
		            // Xử lý file
		            tenanh = fileItem.getName();
		            if (!tenanh.equals("")) {
		                // Lấy đường dẫn hiện tại, chú ý xử lý trên dirUrl để có đường dẫn đúng
		                String dirUrl = request.getServletContext().getRealPath("") + File.separator + "image_nuochoa";
		                File dir = new File(dirUrl);
		                if (!dir.exists()) { // Nếu không có thư mục thì tạo ra
		                    dir.mkdir();
		                }
		                String fileImg = dirUrl + File.separator + tenanh;
		                File file = new File(fileImg); // Tạo file
		                try {
		                    fileItem.write(file); // Lưu file
		                } catch (Exception e) {
		                    e.printStackTrace();
		                }
		            }
		        } else { // Nếu là control
		            String tentk = fileItem.getFieldName();
		            if (tentk.equals("masanpham")) masanpham = fileItem.getString();
		            if (tentk.equals("tensanpham")) tensanpham = fileItem.getString();
		            if (tentk.equals("soLuong")) if (!fileItem.getString().equals("")) soluong = Long.parseLong(fileItem.getString());
		            if (tentk.equals("gia")) if (!fileItem.getString().equals("")) gia = Long.parseLong(fileItem.getString());
		            if (tentk.equals("maloai")) maloai = fileItem.getString();
		            if (tentk.equals("anh")) anh = fileItem.getString();
		            if (tentk.equals("thuonghieu")) thuonghieu = fileItem.getString();
		        }
		    }

		    if (tenanh.equals("")) tenanh = request.getParameter("fileanh");
		    else anh = "image_nuochoa/" + tenanh;

		   nuochoabo nhbo = new nuochoabo();
		   nhbo.suaSanPham(masanpham, tensanpham, soluong, gia, maloai, tenanh, ngaynhap, thuonghieu);
		} catch (Exception e) {
		    e.printStackTrace();
		}
		 response.sendRedirect("adminsanphamController");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
