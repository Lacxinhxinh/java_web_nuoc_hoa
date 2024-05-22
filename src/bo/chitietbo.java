package bo;

import java.util.ArrayList;

import dao.chitietdao;

public class chitietbo {
		chitietdao ctdao = new chitietdao();
		public int Them(String MaSach,long SoLuongMua,long MaHoaDon) throws Exception{
			return ctdao.Them(MaSach, SoLuongMua, MaHoaDon);
		}
		public int Sua(long mact) throws Exception{
			return ctdao.Sua(mact);
		}
		
}
