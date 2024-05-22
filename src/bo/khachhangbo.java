package bo;

import java.util.ArrayList;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
		khachhangdao khdao = new khachhangdao();
		public khachhangbean ktdn (String tendn, String pass) throws Exception { 
			return khdao.ktdn(tendn, pass);
		}
		public void dangky (String hoten, String diachi, String sodt, String email, String tendn,
				String pass) throws Exception {
			 khdao.dangky(hoten, diachi, sodt, email, tendn, pass);
		}
		public ArrayList<khachhangbean> getkhachhang() throws Exception{
			return khdao.getkhachhang();
		}
}
