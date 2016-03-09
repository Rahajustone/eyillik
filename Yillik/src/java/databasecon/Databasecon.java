/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databasecon;
import java.sql.*;

/**
 *
 * @author Sezer
 */
public class Databasecon {
   static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialnetwork1","root",null);
		}
		catch(ClassNotFoundException | SQLException e)
		{
			System.out.println("class error");
		}
		return con;
	}
   }
    
    
    

