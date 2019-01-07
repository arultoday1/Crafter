package com.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBConn {
	static Connection con;
	public static Connection create(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dmcluster","root","root");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
}
	
}
