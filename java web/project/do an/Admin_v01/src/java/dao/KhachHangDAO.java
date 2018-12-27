/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import utils.DatabaseUtils;

/**
 *
 * @author Administrator
 */
public class KhachHangDAO {
    public static ArrayList<KhachHang> listKhachHang() {
        ArrayList<KhachHang> list = new ArrayList<KhachHang>();
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        KhachHang kh = null;
        try {
            String sql = "select p.*,n.diachi1,n.diachi2,n.diachi3"
                + " from tbl_khachhang p,tbl_nguoinhan n "
                + "where p.id=n.id ";
            con = DatabaseUtils.getConnection();
            sta = con.createStatement();
            rs = sta.executeQuery(sql);
            
            while (rs.next()) {
                kh = new KhachHang();
                NguoiNhan nn = new NguoiNhan();
                
                nn.setTen(rs.getString("ten"));
                nn.setSdt(rs.getString("sdt"));                
                nn.setDiachi1(rs.getString("diachi1"));
                nn.setDiachi2(rs.getString("diachi2"));
                nn.setDiachi3(rs.getString("diachi3"));
                kh.setNguoinhan(nn);
                
                kh.setId(rs.getInt("id"));
                kh.setTen(rs.getString("ten"));
                kh.setSdt(rs.getInt("sdt"));
                kh.setId_themdiachi(rs.getInt("id_themdiachi"));
                kh.setMatkhau(rs.getString("matkhau"));
                kh.setEmail(rs.getString("email"));
                list.add(kh);
                
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseConnection(con);
            DatabaseUtils.CloseStatement(sta);
            DatabaseUtils.CloseResultSet(rs);
        }

        return list;
    }
}
