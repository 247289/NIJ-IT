/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.AlbumAnh;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import utils.DatabaseUtils;

/**
 *
 * @author Administrator
 */
public class AlbumAnhDAO {
    public static ArrayList<AlbumAnh> listAnh() {
        ArrayList<AlbumAnh> listAnh = new ArrayList<AlbumAnh>();
        try {
            Connection con = DatabaseUtils.getConnection();

            String sql = "select * from tbl_album_anh";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);

            while (rs.next()) {
                AlbumAnh aa = new AlbumAnh();
                aa.setId(rs.getInt("id"));
                aa.setAnh1(rs.getString("anh1"));
                aa.setAnh2(rs.getString("anh2"));
                aa.setAnh3(rs.getString("anh3"));
                aa.setAnh4(rs.getString("anh4"));

                listAnh.add(aa);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listAnh;
    }
    public static void main(String[] args) {
        System.out.println(listAnh().size());
    }
}
