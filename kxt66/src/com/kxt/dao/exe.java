package com.kxt.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class exe {
	static Statement stmt = null;
	static Connection conn = Dbcontact.getcon();
	static ResultSet rs = null;
 public static int add(String name,String organization,String phonenumber,String telephone,String email,String address,String group,String remark) {
	 try {
		stmt = conn.createStatement();
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	 int i = 0 ;
	 try {
	 i = stmt.executeUpdate("INSERT INTO book VALUES (NULL,'"+name+"', '"+organization+"', '"+phonenumber+"', '"+telephone+"','"+email+"','"+address+"','"+group+"','"+remark+"')");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	 return i;
}
 
 public static int delete (String name){
	 try {
		stmt = conn.createStatement();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 int i = 0;
	 try {
		i = stmt.executeUpdate("DELETE FROM book WHERE name = '"+name+"'");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	 return i;
 }
 
 public static int correct(String name,String option,Object ob) {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 int i = 0;
		 try {
			i = stmt.executeUpdate("UPDATE book SET "+option+"= '"+ob+"' WHERE name = '"+name+"'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return i;
}
 public static ResultSet select(String name) {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 try {
			
			rs = stmt.executeQuery("SELECT * FROM book WHERE name LIKE '%"+name+"%'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 return rs;
}
 public static ResultSet selectgp(String group) {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 try {
			
			rs = stmt.executeQuery("SELECT * FROM book WHERE group1 LIKE '%"+group+"%'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 return rs;
}
 
 public static ResultSet selectallgroup() {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 try {
			 
			rs = stmt.executeQuery("SELECT * FROM gro");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 return rs;
}
 
 public static int addgroup(String name){
	 try {
		stmt = conn.createStatement();
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	 int i = 0 ;
	 try {
	 i = stmt.executeUpdate("INSERT INTO gro VALUES (NULL,'"+name+"')");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
 }
	 return i;
}
 
 public static int groupcorrect(String name,int id) {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 int i = 0;
		 try {
			i = stmt.executeUpdate("UPDATE gro SET name= '"+name+"' WHERE id = "+id+"");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return i;
}
 public static int groupdelete(String name,int id) {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 int i = 0;
		 try {
			i = stmt.executeUpdate("DELETE FROM gro WHERE id = "+id+"");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return i;
}
 public static ResultSet selectcb() {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 try {
			 
			rs = stmt.executeQuery("SELECT * FROM book");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 return rs;
}
 
 public static int deletecb(int id) {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 int i = 0;
		 try {
			
			 i = stmt.executeUpdate("DELETE FROM book WHERE id = "+id+"");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 return i;
}
 
 public static int cbcorrect(int id,String name,String organization,String phonenumber,String telephone,String email,String address,String group,String remark) {
	 try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 int i = 0;
		 try {
			
			 i = stmt.executeUpdate("UPDATE book SET name= '"+name+"',organization='"+organization+"',phonenumber='"+phonenumber+"',telephone='"+telephone+"',email='"+email+"',address='"+address+"',group1='"+group+"',remark='"+remark+"' WHERE id ="+id+"");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 return i;
}
}
 
 
 
 
 
 
 
 
 
 
 

