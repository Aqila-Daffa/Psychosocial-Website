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
public class Login {
    public User checkLogin(String usname, String pass) throws SQLException, ClassNotFoundException{  
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "psychosocial";
        String url = "jdbc:mysql://localhost/" + dbName +"?";
        String userName = "root";
        String password = "";
        String query = "SELECT * FROM users WHERE username=? and password=?";

        Class.forName(driver);  
        Connection con=DriverManager.getConnection(url, userName, password);  

        PreparedStatement st = con.prepareStatement(query);  
        st.setString(1,usname);  
        st.setString(2,pass);  
        
        ResultSet rs = st.executeQuery();
        
        User user = null;
        if (rs.next()) {
            user = new User();
            user.setEmail(rs.getString("email"));
            user.setUsername(usname);
        }
 
        con.close();
 
        return user;


        }  
}
