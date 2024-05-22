package bean;

import java.util.Date;

public class nuochoabean {
			private String masanpham;
			private String tensanpham;
			private long soluong;
			private long gia;
			private String maloai;
			private String anh;
			private Date ngaynhap;
			private String thuonghieu;
			public nuochoabean() {
				super();
				// TODO Auto-generated constructor stub
			}
			public nuochoabean(String masanpham, String tensanpham, long soluong, long gia, String maloai, String anh,
					Date ngaynhap, String thuonghieu) {
				super();
				this.masanpham = masanpham;
				this.tensanpham = tensanpham;
				this.soluong = soluong;
				this.gia = gia;
				this.maloai = maloai;
				this.anh = anh;
				this.ngaynhap = ngaynhap;
				this.thuonghieu = thuonghieu;
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
			public long getSoluong() {
				return soluong;
			}
			public void setSoluong(long soluong) {
				this.soluong = soluong;
			}
			public long getGia() {
				return gia;
			}
			public void setGia(long gia) {
				this.gia = gia;
			}
			public String getMaloai() {
				return maloai;
			}
			public void setMaloai(String maloai) {
				this.maloai = maloai;
			}
			public String getAnh() {
				return anh;
			}
			public void setAnh(String anh) {
				this.anh = anh;
			}
			public Date getNgaynhap() {
				return ngaynhap;
			}
			public void setNgaynhap(Date ngaynhap) {
				this.ngaynhap = ngaynhap;
			}
			public String getThuonghieu() {
				return thuonghieu;
			}
			public void setThuonghieu(String thuonghieu) {
				this.thuonghieu = thuonghieu;
			}
			
			
			
	}
