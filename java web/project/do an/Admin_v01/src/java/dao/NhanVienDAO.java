/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.NhanVien;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import utils.DatabaseUtils;

/**
 *
 * @author Administrator
 */
public class NhanVienDAO {
    public static ArrayList<NhanVien> listNhanVien() {
        ArrayList<NhanVien> listNhanVien = new ArrayList<NhanVien>();
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        try {
            con = DatabaseUtils.getConnection();
            String sql = "select * from tbl_nhanvien ";

            sta = con.createStatement();
            rs = sta.executeQuery(sql);

            while (rs.next()) {
                NhanVien nv = new NhanVien();
                nv.setId(rs.getInt("id"));
                nv.setTen(rs.getString("ten"));
                nv.setSdt(rs.getInt("sdt"));
                nv.setEmail(rs.getString("email"));
                nv.setNgaysinh(rs.getDate("ngaysinh"));

                listNhanVien.add(nv);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseConnection(con);
            DatabaseUtils.CloseStatement(sta);
            DatabaseUtils.CloseResultSet(rs);
        }

        return listNhanVien;
    }
    
    public static NhanVien getNV(int manv){
        NhanVien nv=null;
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        try {
            con = DatabaseUtils.getConnection();
            String sql = "select * from tbl_nhanvien where id = "+manv;

            sta = con.createStatement();
            rs = sta.executeQuery(sql);

            while (rs.next()) {
                nv = new NhanVien();
                nv.setId(rs.getInt("id"));
                nv.setTen(rs.getString("ten"));
                nv.setSdt(rs.getInt("sdt"));
                nv.setEmail(rs.getString("email"));
                nv.setNgaysinh(rs.getDate("ngaysinh"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseConnection(con);
            DatabaseUtils.CloseStatement(sta);
            DatabaseUtils.CloseResultSet(rs);
        }
        
        return nv;
    }
    public static void InsertNhanVien(String ten, String sdt, String email, String ngaysinh, String taikhoan, String matkhau) {
        String sql = "INSERT INTO tbl_nhanvien (ten, sdt, email, ngaysinh) VALUES (N'"+ten+"', "+sdt+", '"+email+"', '"+ngaysinh+"')";
        System.out.println(sql);
        Connection con = null;
        Statement state = null;
        ArrayList<NhanVien> nv = null;
        ResultSet rs = null;
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            state.executeUpdate(sql);
            nv = listNhanVien();
            int a = nv.size();
            NhanVien b = nv.get(a-1);
            int c = b.getId();
            TaiKhoanDAO.InsertTaiKhoan(c, taikhoan, matkhau);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
        }
    }

}
