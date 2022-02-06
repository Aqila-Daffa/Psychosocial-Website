/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.*;

/**
 *
 * @author ASUS
 */
public class DbConn {
    public static Connection initializeDatabase()
        throws SQLException, ClassNotFoundException
    {
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "psychosocial";
        String url = "jdbc:mysql://localhost/" + dbName +"?";
        String userName = "root";
        String password = "";

        Class.forName(driver);  
        Connection con=DriverManager.getConnection(url, userName, password);
        return con;
    }
}
