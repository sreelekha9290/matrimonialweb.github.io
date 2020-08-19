import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.sql.SQLException;

import java.sql.Statement;


public class DaoUtil {
	
private static DaoUtil daoUtil = null;


	private DaoUtil() {

	
}

	
public static DaoUtil getObject() {
		
if (daoUtil == null)
		
	daoUtil = new DaoUtil();
		
return daoUtil;


	}

	
public Connection getConnection() {
	
	Connection con = null;

		
try {
		
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println(Class.forName("com.mysql.jdbc.Driver"));

	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "root");
	System.out.println("connection established");

	
	} catch (Exception e) {
		
	e.printStackTrace();
		
}

	
	return con;
	
}

	
public  void closeConnectionCPR(Connection con,
PreparedStatement pstmt, ResultSet rs) {

	
	try {
		
	if (con != null)
				
con.close();
		
	if (pstmt != null)
		
		pstmt.close();
		
	if (rs != null)
			
	rs.close();
	
	} catch (SQLException e) {

			
e.printStackTrace();
		
}

	
}

	
public  void closeConnectionCSR(Connection con, Statement stmt,
ResultSet rs) {

	
	try {
			
if (con != null)
			
	con.close();
		
	if (stmt != null)
			
	stmt.close();
			
if (rs != null)
				
rs.close();
		
} catch (SQLException e) {


			e.printStackTrace();
	
	}

	}


	public  void closeConnectionCP(Connection con, PreparedStatement pstmt) {

		
try {
		
	if (con != null)
	
			con.close();
			
if (pstmt != null)
				
pstmt.close();

		
} catch (SQLException e) {

	
		e.printStackTrace();
		
}

	}
	
public  void main(String[] args) {
	

	
	new DaoUtil().getConnection();
	
}

}
