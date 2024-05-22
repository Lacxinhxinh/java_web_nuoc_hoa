package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;

public class khachhangdao {
	public khachhangbean ktdn (String tendn, String pass) throws Exception {
		//B1 : Ket noi vao csdl
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		//B2 : Tao cau lenh sql
		String sql = "select * from khachang where tendn=? and pass=?";
		//B3 : Tao cau lenh prepare Statement
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//B4 : Truyen tham so vao cau lenh sql
		cmd.setString(1, tendn);
		cmd.setString(2, pass);
		//B5 : Thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		khachhangbean kh = null;
		if(rs.next()) { //Dang nhap dung
			long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String sodt = rs.getString("sodt");
			String email = rs.getString("email");
			kh= new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass);
		}
		return kh;
	}
	public void dangky(String hoten, String diachi, String sodt, String email, String tendn, String pass) throws Exception {
		// B1: Kết nối vào CSDL
		ketnoi kn = new ketnoi();
		kn.ketnoi();

		// B2: Tạo câu lệnh SQL
		// Tạo câu lệnh SQL và thực hiện truy vấn INSERT vào bảng KhachHang


		// Tạo câu lệnh SQL và thực hiện truy vấn INSERT vào bảng KhachHang
		String sql = "INSERT INTO khachang (hoten, diachi, sodt, email, tendn, pass) VALUES (?, ?, ?, ?, ?, ?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setString(2, diachi);
		cmd.setString(3, sodt);
		cmd.setString(4, email);
		cmd.setString(5, tendn);
		cmd.setString(6, pass);

		// Thực hiện truy vấn INSERT
		cmd.executeUpdate();

		// B6: Đóng kết nối và giải phóng tài nguyên
		cmd.close();
		kn.cn.close();
	}
	
	public ArrayList<khachhangbean> getkhachhang() throws Exception{
		ArrayList<khachhangbean> ds = new ArrayList<khachhangbean>();
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select * from khachang";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String sodt = rs.getString("sodt");
			String email = rs.getString("email");
			String tendn = rs.getString("tendn");
			String pass = rs.getString("pass");
			
			
			ds.add(new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass));
		}
		rs.close(); kn.cn.close(); //khong sai dong lai
		return ds;
	}
}
