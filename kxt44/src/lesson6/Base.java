package lesson6;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;





public class Base {
	private PreparedStatement pre=null;
	private ResultSet re=null;
	public int update(Connection conn,String sql,Object...values) {
		int result=0;
		try {
		pre= conn.prepareStatement(sql);
		if(values!=null) {
			for(int i=0;i<values.length;i++) {
				pre.setObject(i+1, values[i]);
				
			}
			
		}
		result=pre.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();			
		}	
		return result;		
	}
	public ResultSet query(Connection conn,String sql,Object...values) {
		try {
		pre= conn.prepareStatement(sql);
		if(values!=null) {
			for(int i=0;i<values.length;i++) {
				pre.setObject(i+1, values[i]);
				
			}
			
		}
		re=pre.executeQuery();
		}
		catch(SQLException e) {
			e.printStackTrace();			
		}	
		return re;		
	}
	
	
}
