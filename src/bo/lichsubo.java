package bo;

import java.util.ArrayList;

import bean.lichsubean;
import dao.lichsudao;

public class lichsubo {
		lichsudao lsdao = new lichsudao();
		ArrayList<lichsubean> ls;
		public ArrayList<lichsubean> getlichsu(long makh){
			ls = lsdao.getlichsu(makh);
			return ls;
		}
}
