/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import dto.TaiKhoan;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import utils.DatabaseUtils;

/**
 *
 * @author Admin
 */
public class TaiKhoanDao {
    public static TaiKhoan checkLogin(String user, String pass) {
        TaiKhoan e = null;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        String sql="select * from tbl_taikhoan where tentaikhoan=\'"+user+"\' and matkhau=\'"+pass+"\'";
        try {
            con = new DatabaseUtils().getConnection();
            state = con.createStatement();
            rs=state.executeQuery(sql);
            if(rs.next()){
                e=new TaiKhoan();
                e.setTentaikhoan(rs.getString("tentaikhoan"));
                e.setMatkhau(rs.getString("matkhau"));
                e.setTrangthai(rs.getString("trangthai"));
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        } finally {
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
        }
        return e;
    }
}
