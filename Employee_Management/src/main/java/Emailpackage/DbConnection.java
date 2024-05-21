package Emailpackage;

import java.sql.*;
public class DbConnection {
    public static Connection getConnection() {
        Connection con=null;
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","12345678");  
        }
        catch(Exception ex)
        {
                ex.printStackTrace();
        }
        return con;
    }
}