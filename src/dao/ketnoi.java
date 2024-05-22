package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ketnoi {
	public Connection cn;
	public void ketnoi() throws Exception {
		//B1 : Xac dinh hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.println("Da xac dinh hqtcsdl");
		String url = "jdbc:sqlserver://DESKTOP-10KQE7D\\THANHPHUC:1433;databaseName=QLnuochoa;user=sa; password=123";
		cn = DriverManager.getConnection(url);
		System.out.println("Da ket noi");
	}
}