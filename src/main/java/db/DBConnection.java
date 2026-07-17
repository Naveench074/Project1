package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static final String url="jdbc:mysql://localhost:3306/student_db";
	private static final String username="root";
	private static final String password="root";
	
	public static Connection getConnection() {
		
		Connection con= null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con =DriverManager.getConnection(url,username,password);
			
			System.out.println("Database connection is successfull");
		}
		catch( Exception e){
			e.printStackTrace();
		}
		return con;
		
	}
	
}
