package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.nuochoabean;


public class nuochoadao {
	public ArrayList<nuochoabean> getnuoc() throws Exception {
		ArrayList<nuochoabean> ds = new ArrayList<nuochoabean>();
		
		//B1 : Ket noi vao csdl
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		//B2 : Tao cau lenh sql
		String sql = "select * from nuochoa";
		//B3 : Tao cau lenh prepare Statement
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//B4 : Thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//B5 : Duyet rs de luu vao mang ds
		while(rs.next()) {
			String masanpham = rs.getString("masanpham");
			String tensanpham = rs.getString("tensanpham");
			long soluong = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String maloai = rs.getString("maloai");
			String anh = rs.getString("anh");
			Date ngaynhap = rs.getDate("ngaynhap");
			String thuonghieu = rs.getString("thuonghieu");
			
			
			ds.add(new nuochoabean(masanpham, tensanpham, soluong, gia, maloai, anh, ngaynhap, thuonghieu));					
		}
		//b6: Dong ket noi va rs
		rs.close(); kn.cn.close(); //khong sai dong lai
		return ds;
	}
	public int themsp(String masanpham, String tensanpham, long soluong, long gia, String maloai, String anh,
			Date ngaynhap, String thuonghieu) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "insert into nuochoa(masanpham,tensanpham,soluong,gia,maloai,anh,ngaynhap,thuonghieu)" 
		+ "values (?,?,?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masanpham);
		cmd.setString(2, tensanpham);
		cmd.setLong(3, soluong);
		cmd.setLong(4, gia);
		cmd.setString(5, maloai);
		cmd.setString(6, "image_nuochoa/"+anh);
		Date n = new Date();
//		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
//		String nn = dd.format(n);
//		Date n2 = dd.parse(nn);
		//doi ngay until sang ngay sql
		cmd.setDate(7, new java.sql.Date(ngaynhap.getTime()));
//		cmd.setDate(8, NgayNhap);
		cmd.setString(8, thuonghieu);
		 int kq = cmd.executeUpdate();
	    kn.cn.close();
	    return kq; 	
	}
	
	public int xoasp(String masanpham) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		//B2 : Tao cau lenh sql
		String sql = "delete from nuochoa where masanpham=?" ;
		
		//B3 : Tao cau lenh prepare Statement
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//B4 : Thuc hien cau lenh 
		cmd.setString(1, masanpham);
		//Lay Ngay Gio Hien Tai
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	
	
	/*Chi Tiết*/
	
	/*public ArrayList<nuochoabean> chitietsanpham(String masanpham) throws Exception {
	    ArrayList<nuochoabean> danhSachSanPham = new ArrayList<>(); // Khởi tạo danh sách để lưu thông tin sản phẩm
	    
	    ketnoi kn = new ketnoi();
	    kn.ketnoi();
	    
	    String sql = "select * from nuochoa where masanpham=?";
	    PreparedStatement cmd = kn.cn.prepareStatement(sql);
	    cmd.setString(1, masanpham);
	    ResultSet rs = cmd.executeQuery();
	    
	    while (rs.next()) {
	        String maSanPham = rs.getString("masanpham");
	        String tensanpham = rs.getString("tensanpham");
	        long soluong = rs.getLong("soluong");
	        long gia = rs.getLong("gia");
	        String maloai = rs.getString("maloai");
	        String anh = rs.getString("anh");
	        Date ngaynhap = rs.getDate("ngaynhap");
	        String thuonghieu = rs.getString("thuonghieu");
	        nuochoabean nuochoa = new nuochoabean(maSanPham, tensanpham, soluong, gia, maloai, anh, ngaynhap, thuonghieu);
	        danhSachSanPham.add(nuochoa); // Thêm sản phẩm vào danh sách
	    }
	    
	    cmd.close();
	    kn.cn.close();
	    
	    return danhSachSanPham;
	}*/

	
	 public nuochoabean getSanPhamByMa(String masanpham) {
	        nuochoabean sanPham = null;

	        try{
	        	ketnoi kn = new ketnoi();
	        	kn.ketnoi();
	            String sql = "select * from nuochoa where masanpham = ?";
	            PreparedStatement statement = kn.cn.prepareStatement(sql);
	            statement.setString(1, masanpham);

	            ResultSet result = statement.executeQuery();

	            if (result.next()) {
	                sanPham = new nuochoabean();
	                sanPham.setMasanpham(result.getString("masanpham"));
	                sanPham.setTensanpham(result.getString("tensanpham"));
	                sanPham.setSoluong(result.getLong("soluong"));
	                sanPham.setGia(result.getLong("gia"));
	                sanPham.setMaloai(result.getString("maloai"));
	                sanPham.setAnh(result.getString("anh"));
	                sanPham.setNgaynhap(result.getDate("ngaynhap"));
	                sanPham.setThuonghieu(result.getString("thuonghieu"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            
	        }

	        return sanPham;
	    }
	 
	 public int suaSanPham(String masanpham, String tensanpham, long soluong, long gia, String maloai, String anh, Date ngaynhap, String thuonghieu) throws Exception {
		    ketnoi kn = new ketnoi();
		    kn.ketnoi();
		    
		    String sql = "UPDATE nuochoa SET tensanpham=?, soluong=?, gia=?, maloai=?, anh=?, ngaynhap=?, thuonghieu=? WHERE masanpham=?";
		    PreparedStatement cmd = kn.cn.prepareStatement(sql);
		    
		    cmd.setNString(1, tensanpham);
		    cmd.setLong(2, soluong);
		    cmd.setLong(3, gia);
		    cmd.setNString(4, maloai);
		    cmd.setNString(5, anh);
		    cmd.setDate(6, new java.sql.Date(ngaynhap.getTime()));
		    cmd.setNString(7, thuonghieu);
		    cmd.setNString(8, masanpham);
		    
		    int kq = cmd.executeUpdate();
		    kn.cn.close();
		    return kq;
		}
	}

