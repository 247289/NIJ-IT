/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author JERRIER
 */
public class DatabaseUtils {
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:9999;databaseName=DOAN",
            "sa", "1");            
//            Class.forName("com.mysql.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlysinhvien","root", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    } 

    public static void CloseConnection(Connection con){
        try{
            if(con!=null){
                con.close();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public static void CloseStatement(Statement state){
        try{
            if(state!=null){
                state.close();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public static void CloseResultSet(ResultSet rs){
        try{
            if(rs!=null){
                rs.close();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}