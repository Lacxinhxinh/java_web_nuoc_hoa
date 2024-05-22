package bo;

import java.util.ArrayList;

import bean.admindangnhapbean;
import dao.admindangnhapdao;

public class admindangnhapbo {
		admindangnhapdao dndao = new admindangnhapdao();
		public admindangnhapbean admin(String tendn, String pass ) {
			return dndao.admin(tendn, pass);
			
		}
		public void dangky(String tendangnhap, String matkhau) throws Exception {
			 dndao.dangky(tendangnhap, matkhau);
		}
		
		public ArrayList<admindangnhapbean> getadmin() throws Exception{
			return dndao.getadmin();
		}
		
		public int xoauser(String tendangnhap) throws Exception {
			return dndao.xoauser(tendangnhap);
		}
}
