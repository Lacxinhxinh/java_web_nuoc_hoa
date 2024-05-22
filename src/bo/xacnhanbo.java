package bo;

import java.util.ArrayList;

import bean.xacnhanbean;
import dao.xacnhandao;

public class xacnhanbo {
		xacnhandao xndao = new xacnhandao();
		ArrayList<xacnhanbean> ds = new ArrayList<xacnhanbean>();
		
		  public ArrayList<xacnhanbean> getdanhsach(){
			  return xndao.getdanhsach();
		  }

		  public static void main(String[] args) {
				xacnhanbo xnbo = new xacnhanbo();
				xnbo.UpdateDaMua(49);
			}
		   public void UpdateDaMua(long mct) {
		    	for(xacnhanbean ad : xndao.getdanhsach()) {
		    		if(ad.getMachitiethd() ==(mct)) {
		    			xndao.UpdateDamua(mct);
		    		}
		    	}
		     }
}
