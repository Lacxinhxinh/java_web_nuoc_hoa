package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao ldao = new loaidao();
	 ArrayList<loaibean> ds;
	public ArrayList<loaibean> getloai()throws Exception {
		ds= ldao.getloai();
		return ds;
}
	public int Them(String maloai,String tenloai) throws Exception{
		for(loaibean loai: ds)
				if(loai.getMaloai().equals(maloai))
					return 0;
		return ldao.Them(maloai, tenloai);
	}
	

public String Tim(String maloai) throws Exception{
	for(loaibean loai: ds)
			if(loai.getMaloai().equals(maloai))
				return loai.getTenloai();
	return null;
}
	
	public int Sua(String maloai,String tenloai) throws Exception{
		return ldao.Sua(maloai, tenloai);
	}
	public int Xoa(String maloai) throws Exception{
		return ldao.Xoa(maloai);
	}

}
