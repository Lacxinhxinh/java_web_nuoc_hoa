package bo;

import java.util.ArrayList;
import java.util.Date;

import bean.nuochoabean;

import dao.nuochoadao;



public class nuochoabo {
	nuochoadao sdao = new nuochoadao();
	ArrayList<nuochoabean> ds;
	public ArrayList<nuochoabean> getnuoc() throws Exception {
		ds=sdao.getnuoc();
		return ds;
}	
	public ArrayList<nuochoabean> TimMa(String maloai) throws Exception {
		ArrayList<nuochoabean> tam = new ArrayList<nuochoabean>();
		for(nuochoabean s: ds) 
			if(s.getMaloai().equals(maloai))
				tam.add(s);
		return tam;
	}
	
	
	public ArrayList<nuochoabean> Tim(String key) throws Exception {
		ArrayList<nuochoabean> tam = new ArrayList<nuochoabean>();
		for(nuochoabean s: ds) 
			if(s.getTensanpham().toLowerCase().contains(key.toLowerCase())
			|| s.getThuonghieu().toLowerCase().contains(key.toLowerCase()))
				tam.add(s);
		return tam;
	}
	public int themsp(String masanpham, String tensanpham, long soluong, long gia, String maloai, String anh,
			Date ngaynhap, String thuonghieu) throws Exception {
		
			return sdao.themsp(masanpham, tensanpham, soluong, gia, maloai, anh, ngaynhap, thuonghieu);
	}
	public int xoasp(String masanpham) throws Exception {
		return sdao.xoasp(masanpham);
	}
	 public nuochoabean getSanPhamByMa(String masanpham) {
		 return sdao.getSanPhamByMa(masanpham);
	 }
	 
	 public int suaSanPham(String masanpham, String tensanpham, long soluong, long gia, String maloai, String anh, Date ngaynhap, String thuonghieu) throws Exception {
		 return sdao.suaSanPham(masanpham, tensanpham, soluong, gia, maloai, anh, ngaynhap, thuonghieu);
	 }
}
