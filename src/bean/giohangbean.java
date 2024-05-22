package bean;

public class giohangbean {
		private String masanpham;
		private String tensanpham;
		private long gia;
		private long soluong;
		private long thanhtien;
		private String anh;
		public giohangbean() {
			super();
			// TODO Auto-generated constructor stub
		}
		public giohangbean(String masanpham, String tensanpham, long gia, long soluong, String anh) {
			super();
			this.masanpham = masanpham;
			this.tensanpham = tensanpham;
			this.gia = gia;
			this.soluong = soluong;
			this.thanhtien=soluong*gia;
			this.anh = anh;
		}
		public String getAnh() {
			return anh;
		}
		public void setAnh(String anh) {
			this.anh = anh;
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
		public long getGia() {
			return gia;
		}
		public void setGia(long gia) {
			this.gia = gia;
		}
		public long getSoluong() {
			return soluong;
		}
		public void setSoluong(long soluong) {
			this.soluong = soluong;
		}
		public long getThanhtien() {
			return soluong*gia;
		}
		public void setThanhtien(long thanhtien) {
			this.thanhtien = thanhtien;
		}
		
		
		
}
