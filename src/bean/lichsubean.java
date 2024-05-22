package bean;

import java.util.Date;

public class lichsubean {
	private String masanpham;
	private String tensanpham;
	private long makh;
	private int soluongmua;
	private long  gia;
	private long thanhtien;
	private boolean damua;
	private Date ngaymua;
	public lichsubean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public lichsubean(String masanpham, String tensanpham, long makh, int soluongmua, long gia, long thanhtien,
			boolean damua, Date ngaymua) {
		super();
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.makh = makh;
		this.soluongmua = soluongmua;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.damua = damua;
		this.ngaymua = ngaymua;
	}
	public String getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(String masanpham) {
		this.masanpham = masanpham;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public int getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	
	
	
}
