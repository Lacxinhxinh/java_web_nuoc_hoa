package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.xacnhanbean;

public class xacnhandao {
	public ArrayList<xacnhanbean> getdanhsach() {
		ArrayList<xacnhanbean> ds= new ArrayList<xacnhanbean>();
		try {
			ketnoi kn= new ketnoi();
			kn.ketnoi();
			String sql="select * from VAdminXacNhan ";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			ResultSet rs= cmd.executeQuery();
			xacnhanbean xn= null;
			while(rs.next()) {
				long machitiethd= rs.getLong("machitiethd");
				String hoten=rs.getString("hoten");
				String tensanpham=rs.getString("tensanpham");
				Date ngaymua=rs.getDate("ngaymua");
				int soluongmua=rs.getInt("soluongmua");
				long gia=rs.getLong("gia");
				long thanhtien=rs.getLong("thanhtien");
				boolean damua=rs.getBoolean("damua");
				ds.add(new xacnhanbean(machitiethd, hoten, tensanpham, gia, soluongmua, thanhtien, ngaymua, damua));
			}
			rs.close();
			kn.cn.close();
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void UpdateDamua(long ChitietHoaDon) {
	      try {
	    	  ketnoi kn= new ketnoi();
	  		kn.ketnoi();
	  		String sql="update chitiethoadon set damua = 1 where machitiethd = ?";
	  		PreparedStatement cmd= kn.cn.prepareStatement(sql);
	  		cmd.setLong(1, ChitietHoaDon);
	  		cmd.executeUpdate();
	  		kn.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	    }
}
