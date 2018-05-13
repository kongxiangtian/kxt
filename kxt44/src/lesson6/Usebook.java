package lesson6;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


import lesson6.Book;



public class Usebook extends Base {
	public  int insert(Connection conn,Book user) {
		String sql="insert into users(username,workplace,telephone,phone,email,address,group,information)values(?,?,?,?,?,?,?,? )";
		int infor=super.update(conn, sql, user.getUsername(),user.getWorkplace(),user.getTelephone(),user.getPhone(),user.getEmail(),user.getAddress(),user.getGroup(),user.getInformation());
		return infor;
		
	}

	public  int update(Connection conn,Book user,String beforename) {
		String sql="update users set username=?,workplace=?,telephone=?,phone=?,email=?,address=?,group=?,information=?";
		int infor=super.update(conn, sql, user.getUsername(),user.getWorkplace(),user.getTelephone(),user.getPhone(),user.getEmail(),user.getAddress(),user.getGroup(),user.getInformation());
		return infor;
		
	}
	
	public int delete(Connection conn,Book user) {
		String sql="delete from users where username=?";
		int infor=super.update(conn, sql, user.getUsername());
		return infor;
		
		
	}
	public Book query(Connection conn,String username){ 
 		String sql = "select * from users where username=?"; 
		ResultSet re = super.query(conn, sql, username);
		Book user=null;

 		try { 
			while(re.next()){ 
				user.setUsername(re.getString(2)); 
				user.setWorkplace(re.getString(3));
				user.setTelephone(re.getString(4));
				user.setPhone(re.getString(5)); 
				user.setEmail(re.getString(6));
				user.setAddress(re.getString(7));
 				user.setGroup(re.getString(8)); 
 				user.setInformation(re.getString(9));
				return user;
			} 
		} catch (SQLException e) { 
			// TODO Auto-generated catch block 
 			e.printStackTrace(); 
		} 
 		return user; 
 		 
 	} 

}
