/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.JDBCType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author VLIT
 */
public class Account {
    private static String DB_URL = "jdbc:mysql://localhost:3306/test";
    private static String USER_NAME = "root";
    private static String PASSWORD = "1";
    public static boolean checkLogin(String username, String password){
        boolean isValid = false;
        try {
            //load driver
            Class.forName("com.mysql.jdbc.Driver");
            //connect database
            Connection conn= DriverManager.
                    getConnection(DB_URL,USER_NAME,PASSWORD);
            String sql = "select * from users where name = ? and pass = ?";
            PreparedStatement pre = conn.prepareCall(sql);
            pre.setString(1, username);
            pre.setString(2, password);
            //exe sql
            ResultSet rs = pre.executeQuery();
            if (rs.next()){
                isValid = true;
            }else{
                isValid = false;
            }
                
        } catch (Exception e) {
            e.printStackTrace();//dua ra thong bao loi
        }
        return isValid;
    }
}
