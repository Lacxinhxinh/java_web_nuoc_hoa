package bean;

import java.util.Date;

public class xacnhanbean {
		private long machitiethd;
		private String hoten;
		private String tensanpham;
		private long gia;
		private int soluongmua;
		private long thanhtien;
		private Date ngaymua;
		private boolean damua;
		public xacnhanbean() {
			super();
			// TODO Auto-generated constructor stub
		}
		public xacnhanbean(long machitiethd, String hoten, String tensanpham, long gia, int soluongmua, long thanhtien,
				Date ngaymua, boolean damua) {
			super();
			this.machitiethd = machitiethd;
			this.hoten = hoten;
			this.tensanpham = tensanpham;
			this.gia = gia;
			this.soluongmua = soluongmua;
			this.thanhtien = thanhtien;
			this.ngaymua = ngaymua;
			this.damua = damua;
		}
		public long getMachitiethd() {
			return machitiethd;
		}
		public void setMachitiethd(long machitiethd) {
			this.machitiethd = machitiethd;
		}
		public String getHoten() {
			return hoten;
		}
		public void setHoten(String hoten) {
			this.hoten = hoten;
		}
		public String getTensanpham() {
			return tensanpham;
		}
		public void setTensanpham(String tensanpham) {
			this.tensanpham = tensanpham;
		}
		public long getGia() {
			return gia;
		}
		public void setGia(long gia) {
			this.gia = gia;
		}
		public int getSoluongmua() {
			return soluongmua;
		}
		public void setSoluongmua(int soluongmua) {
			this.soluongmua = soluongmua;
		}
		public long getThanhtien() {
			return thanhtien;
		}
		public void setThanhtien(long thanhtien) {
			this.thanhtien = thanhtien;
		}
		public Date getNgaymua() {
			return ngaymua;
		}
		public void setNgaymua(Date ngaymua) {
			this.ngaymua = ngaymua;
		}
		public boolean isDamua() {
			return damua;
		}
		public void setDamua(boolean damua) {
			this.damua = damua;
		}
		@Override
		public String toString() {
			return "xacnhanbean [machitiethd=" + machitiethd + ", hoten=" + hoten + ", tensanpham=" + tensanpham
					+ ", gia=" + gia + ", soluongmua=" + soluongmua + ", thanhtien=" + thanhtien + ", ngaymua="
					+ ngaymua + ", damua=" + damua + "]";
		}
		
		
}
