package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.admindangnhapbean;

public class admindangnhapdao {
		public admindangnhapbean admin(String tendn, String pass ) {
			try {
				ketnoi kn = new ketnoi();
				kn.ketnoi();
				String sql = "select * from dangnhap where tendangnhap = ? and matkhau = ?";
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				cmd.setString(1, tendn);
				cmd.setString(2, pass);
				ResultSet rs = cmd.executeQuery();
				admindangnhapbean dn = null;
				while(rs.next()) {
					String tendangnhap = rs.getString("tendangnhap");
					String matkhau = rs.getString("matkhau");
					boolean quyen = rs.getBoolean("quyen");
					
					
					dn = new admindangnhapbean(tendangnhap, matkhau, quyen);
				}
				return dn;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace(); return null;
			}
			
			
		}
		
		public void dangky(String tendangnhap, String matkhau) throws Exception {
		
				ketnoi kn = new ketnoi();
				kn.ketnoi();
				String sql = "INSERT INTO dangnhap (tendangnhap,matkhau,quyen) VALUES(?,?,1)";
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				cmd.setString(1, tendangnhap);
				cmd.setString(2, matkhau);
				
				cmd.executeUpdate();
				
				cmd.close();
				kn.cn.close();
		}
		public ArrayList<admindangnhapbean> getadmin() throws Exception{
				ArrayList<admindangnhapbean> ds = new ArrayList<admindangnhapbean>();
				ketnoi kn = new ketnoi();
				kn.ketnoi();
				String sql = "select * from dangnhap";
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				ResultSet rs = cmd.executeQuery();
				while(rs.next()) {
					String tendangnhap = rs.getString("tendangnhap");
					String matkhau = rs.getString("matkhau");
					boolean quyen = rs.getBoolean("quyen");
					ds.add(new admindangnhapbean(tendangnhap, matkhau, quyen));
				}
			rs.close();kn.cn.close();
			return ds;
		}
		
		public int xoauser(String tendangnhap) throws Exception {
			ketnoi kn = new ketnoi();
			kn.ketnoi();
			//B2 : Tao cau lenh sql
			String sql = "delete from dangnhap where tendangnhap = ?" ;
			
			//B3 : Tao cau lenh prepare Statement
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			//B4 : Thuc hien cau lenh 
			cmd.setString(1, tendangnhap);
			//Lay Ngay Gio Hien Tai
			int kq = cmd.executeUpdate();
			cmd.close();
			kn.cn.close();
			return kq;
		}
}
