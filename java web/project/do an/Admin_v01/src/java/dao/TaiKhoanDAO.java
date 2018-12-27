/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.TaiKhoan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import utils.DatabaseUtils;

/**
 *
 * @author Administrator
 */
public class TaiKhoanDAO {

    public static TaiKhoan checkLogin(String user, String pass) {
        boolean isValid = false;
        TaiKhoan tk=null;
        try {
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from tbl_taikhoan where tentaikhoan = ? and matkhau = ?";
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, user);
            pre.setString(2, pass);

            ResultSet rs = pre.executeQuery();

            if (rs.next()) {
                tk=new TaiKhoan();
                tk.setId_nv(rs.getInt("id_nv"));
                tk.setTentaikhoan(rs.getString("tentaikhoan"));
            } else {
                isValid = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tk;
    }

    public static ArrayList<TaiKhoan> getTaiKhoan() {
        ArrayList<TaiKhoan> getTaiKhoan = new ArrayList<TaiKhoan>();
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        try {
            con = DatabaseUtils.getConnection();
            String sql = "select * from tbl_taikhoan";
            sta = con.createStatement();
            rs = sta.executeQuery(sql);

            while (rs.next()) {
                TaiKhoan tk = new TaiKhoan();
                tk.setId(rs.getInt("id"));
                tk.setId_quyen(rs.getInt("id_quyen"));
                tk.setId_nv(rs.getInt("id_nv"));
                tk.setTentaikhoan(rs.getString("tentaikhoan"));
                tk.setMatkhau(rs.getString("matkhau"));
                tk.setTrangthai(rs.getBoolean("trangthai"));
                getTaiKhoan.add(tk);
            }
        } catch (Exception e) {
        }
        return getTaiKhoan;
    }
    
    public static TaiKhoan getTaiKhoanById(String id) {
        String sql = "select * from tbl_taikhoan where id="+id;
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        TaiKhoan tk = null;
        try {
            con = DatabaseUtils.getConnection();
            sta = con.createStatement();
            rs = sta.executeQuery(sql);

            while (rs.next()) {
                tk = new TaiKhoan();
                tk.setId(rs.getInt("id"));
                tk.setId_quyen(rs.getInt("id_quyen"));
                tk.setId_nv(rs.getInt("id_nv"));
                tk.setTentaikhoan(rs.getString("tentaikhoan"));
                tk.setMatkhau(rs.getString("matkhau"));
                tk.setTrangthai(rs.getBoolean("trangthai"));
            }
        } catch (Exception e) {
        }
        return tk;
    }
    public static void updateThongTin(String ten, String sdt, String email, String id) {
        String sql = "update tbl_nhanvien set ten= N'" + ten + "', sdt="+ sdt +", email='"+ email +"' where id=" + id;
        Connection con = null;
        Statement state = null;
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
        }
    }
    public static void InsertTaiKhoan(int idnv, String taikhoan, String matkhau) {
        String sql = "insert into tbl_taikhoan (id_quyen, id_nv, tentaikhoan, matkhau, trangthai) values (2, "+idnv+", '"+taikhoan+"', '"+matkhau+"', 1)";
        System.out.println(sql);
        Connection con = null;
        Statement state = null;
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            state.executeUpdate(sql);
            System.out.println("thanh cong");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
        }
        
    }
    
}
