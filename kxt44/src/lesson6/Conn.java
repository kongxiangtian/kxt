package lesson6;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;


public class Conn {
	public static final String classname="com.mysql.jdbc.Driver";
	public static final String uri="jdbc:mysql://127.0.0.1:3306/book";
	public static final String name="root";
	public static final String password="1";
	
	public static Connection getconn() {
		Connection conn=null;
	
			try {
				Class.forName(classname);
				conn=DriverManager.getConnection(uri,name,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch(ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();		
		}
		return conn;
	}

}
