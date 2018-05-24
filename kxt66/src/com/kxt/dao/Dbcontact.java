package com.kxt.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbcontact {
	static Connection con;

	public static Connection getcon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String uri = "jdbc:mysql://127.0.0.1/book?useUnicode=true&characterEncoding=gb2312";
		String user = "root";
		String pwd = "1";
		try {
			con = DriverManager.getConnection(uri, user, pwd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
}
