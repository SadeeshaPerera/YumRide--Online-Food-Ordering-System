package com.cart.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName("com.mysql.jdbc.Driver");
            
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/yumride","root","sadee");
            System.out.print("connected");
        }
        else {
        	System.out.print("Not connected");
        }
        return connection;
    }
}
