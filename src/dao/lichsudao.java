package dao;

import java.util.ArrayList;
import java.util.Date;

import bean.lichsubean;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class lichsudao {
		public ArrayList<lichsubean> getlichsu(long makhDangNhap){
			try {
				ArrayList<lichsubean> ds = new ArrayList<lichsubean>();
				ketnoi kn = new ketnoi();
				kn.ketnoi();
				
				String sql = "select * from Vlichsumuahang where makh = ? ";
				
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				cmd.setLong(1, makhDangNhap);
				ResultSet rs = cmd.executeQuery();
				
				while(rs.next()) {
					String masanpham = rs.getString("masanpham");
					String tensanpham = rs.getString("tensanpham");
					long makh = rs.getLong("makh");
					int soluongmua = rs.getInt("soluongmua");
					long gia = rs.getLong("gia");
					long thanhtien = rs.getLong("thanhtien");
					boolean damua = rs.getBoolean("damua");
					Date ngaymua = rs.getDate("ngaymua");
					
					ds.add(new lichsubean(masanpham, tensanpham, makh, soluongmua, gia, thanhtien, damua, ngaymua));
					
				}
				
				rs.close();
				kn.cn.close();
				return ds;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
}
