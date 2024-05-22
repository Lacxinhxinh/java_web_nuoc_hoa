package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

public class hoadondao {
public int Them(long makh) throws Exception{
	//B1 : Ket noi vao csdl
			ketnoi kn = new ketnoi();
			kn.ketnoi();
			//B2 : Tao cau lenh sql
			String sql = "insert into hoadon(makh,ngaymua,damua) values(?,?,?)" ;
			
			//B3 : Tao cau lenh prepare Statement
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			//B4 : Thuc hien cau lenh 
			cmd.setLong(1, makh);
			//Lay Ngay Gio Hien Tai
			
			Date n = new Date();
			SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
			String nn=dd.format(n);
			
			Date n2= dd.parse(nn);
			
			//Doi ngay util sang ngay sql
			cmd.setDate(2, new java.sql.Date(n2.getTime()));
			cmd.setBoolean(3, false);
			int kq = cmd.executeUpdate();
			cmd.close();
			kn.cn.close();
			return kq;
}
		public long MaHd() throws Exception{
			//B1 : Ket noi vao csdl
			ketnoi kn = new ketnoi();
			kn.ketnoi();
			//B2 : Tao cau lenh sql
			String sql = "select max(mahoadon) as HDLN from hoadon" ;
			
			//B3 : Tao cau lenh prepare Statement
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			long max = 0;
			if(rs.next()) {
				max=rs.getLong(1);
				
			}
			cmd.close(); kn.cn.close();
			return max;
			
		}


}
