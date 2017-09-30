package cn.coding52.CodingMart.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class JDBCUtil {
	public static Connection conn;
	public static Statement smt;
	public static PreparedStatement psmt;
	public static String url = "";// 连接数据库的路径
	public static String user = "";
	public static String password = "";
	static {
		try {
			//Class.forName("com.mysql.jdbc.Driver");//反射？
			 Class.forName("com.mysql.jdbc.Driver");
		
//?useUnicode=true&characterEncoding=UTF-8  强制把数据库编程utf-8
			url ="jdbc:mysql://localhost:3306/mall";
			user = "root";
			password = "root";
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {

		}
	}

	
	public static Statement getConn() {

		try {

			smt = conn.createStatement();

		} catch (Exception e) {

		}

		return smt;

	}

	public static PreparedStatement getConncetion(String sql) {
		try {

			psmt = conn.prepareStatement(sql);
		} catch (Exception e) {

		}
		return psmt;

	}

	public static void close() {
		try {
			smt.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	public static void close2() throws Exception {
		try {
			psmt.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
