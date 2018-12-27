/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import utils.DatabaseUtils;
import dto.DanhMuc;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author Administrator
 */
public class DanhMucDAO {

    public static ArrayList<DanhMuc> listDanhMuc() {
        ArrayList<DanhMuc> listDanhMuc = new ArrayList<DanhMuc>();
        try {
            Connection con = DatabaseUtils.getConnection();

            String sql = "select * from tbl_danhmuc";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);

            while (rs.next()) {
                DanhMuc dm = new DanhMuc();
                dm.setId(rs.getInt("id"));
                dm.setTen(rs.getString("ten"));

                listDanhMuc.add(dm);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listDanhMuc;
    }
    public static void main(String[] args) {
        System.out.println(listDanhMuc().size());
    }
}
