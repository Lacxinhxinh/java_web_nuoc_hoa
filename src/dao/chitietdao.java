package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;


import bean.loaibean;

public class chitietdao {
		public int Them(String masanpham,long soluongmua,long mahoadon) throws Exception{
			try {
				//B1 : Ket noi vao csdl
				ketnoi kn = new ketnoi();
				kn.ketnoi();
				//B2 : Tao cau lenh sql
				String sql = "insert into chitiethoadon(masanpham,soluongmua,mahoadon,damua) values (?,?,?,?)" ;
				
				//B3 : Tao cau lenh prepare Statement
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				//B4 : Thuc hien cau lenh 
				cmd.setString(1, masanpham);
				cmd.setLong(2, soluongmua);
				cmd.setLong(3, mahoadon);
				cmd.setBoolean(4, false);
				int kq = cmd.executeUpdate();
				cmd.close();kn.cn.close();
				
				
				return kq;
			} catch (Exception e) {
				e.printStackTrace();return 0;
			}
		}
		
		
		public int Sua(long mact) throws Exception{
			//B1 : Ket noi vao csdl
			ketnoi kn = new ketnoi();
			kn.ketnoi();
			//B2 : Tao cau lenh sql
			String sql = "update ChiTietHoaDon set damua = 1 where MaChiTietHD = ?" ;
			
			//B3 : Tao cau lenh prepare Statement
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			//B4 : Thuc hien cau lenh 
			cmd.setLong(1, mact);
			int kq = cmd.executeUpdate(); // thuc hien cau lenh sql 
			cmd.close();
			kn.cn.close();
			
			
			return kq;
		}
		
}
