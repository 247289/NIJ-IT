/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.*;
import java.sql.*;
import java.util.*;
import utils.DatabaseUtils;

/**
 *
 * @author Administrator
 */
public class DienThoaiDAO {

    public static ArrayList<DienThoai> listDienThoai(int id) {
        ArrayList<DienThoai> listDienThoai = new ArrayList<DienThoai>();
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        DienThoai dt = null;
        try {
            con = DatabaseUtils.getConnection();
            String sql = "select sp.*, a.* from tbl_sanpham sp, tbl_album_anh a where sp.id=a.id and sp.id_danhmuc="+id;

            sta = con.createStatement();
            rs = sta.executeQuery(sql);

            while (rs.next()) {
                Anh aa = new Anh();
                dt = new DienThoai();
                ArrayList<Anh> a= new ArrayList<Anh>();
                aa.setLink(rs.getString("link"));
                aa.setId_sp(rs.getInt("id_sp"));
                a.add(aa);
                
                dt.setId(rs.getInt("id"));
                dt.setId_danhmuc(rs.getInt("id_danhmuc"));
                dt.setTen(rs.getString("ten"));
                dt.setGia(rs.getInt("gia"));
                dt.setSoluong(rs.getInt("soluong"));
                dt.setTrongluong(rs.getString("trongluong"));
                dt.setROM(rs.getString("ROM"));
                dt.setRAM(rs.getString("RAM"));
                dt.setThenho(rs.getString("thenho"));
                dt.setCamera_truoc(rs.getString("camera_truoc"));
                dt.setCamera_sau(rs.getString("camera_sau"));
                dt.setPin(rs.getInt("pin"));
                dt.setBaohanh(rs.getString("baohanh"));
                dt.setBluetooth(rs.getInt("bluetooth"));
                dt.setId_nhasanxuat(rs.getInt("id_nhasanxuat"));
                dt.setCPU(rs.getString("CPU"));
                dt.setManhinh(rs.getString("manhinh"));
                dt.setStatus(rs.getInt("status"));

                listDienThoai.add(dt);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseConnection(con);
            DatabaseUtils.CloseStatement(sta);
            DatabaseUtils.CloseResultSet(rs);
        }

        return listDienThoai;
    }
    
    public static DienThoai GetPhone(String id) {
        String sql = "select p.*,d.ten loai,n.ten ncc,ha.*"
                + " from tbl_sanpham p,tbl_nhasanxuat n,tbl_danhmuc d,tbl_album_anh ha "
                + "where p.id_danhmuc=d.id and p.id_nhasanxuat=n.id and p.id_album_anh=ha.id and p.id=" + id;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        DienThoai dt = null;
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                dt = new DienThoai();
                Anh aa =new Anh();
                ArrayList<Anh> a= new ArrayList<Anh>();
                aa.setLink(rs.getString("link"));
                aa.setId_sp(rs.getInt("id_sp"));
                a.add(aa);

                dto.NhaSanXuat nsx = new dto.NhaSanXuat();
                nsx.setId(rs.getInt("id_nhasanxuat"));
                nsx.setTen(rs.getString("ncc"));
                dt.setNsx(nsx);

                DanhMuc dmuc = new DanhMuc();
                dmuc.setId(rs.getInt("id_danhmuc"));
                dmuc.setTen(rs.getString("loai"));
                dt.setDanhmuc(dmuc);

                dt.setId(rs.getInt("id"));
                dt.setId_danhmuc(rs.getInt("id_danhmuc"));
                dt.setTen(rs.getString("ten"));
                dt.setGia(rs.getInt("gia"));
                dt.setSoluong(rs.getInt("soluong"));
                dt.setTrongluong(rs.getString("trongluong"));
                dt.setROM(rs.getString("ROM"));
                dt.setRAM(rs.getString("RAM"));
                dt.setThenho(rs.getString("thenho"));
                dt.setCamera_truoc(rs.getString("camera_truoc"));
                dt.setCamera_sau(rs.getString("camera_sau"));
                dt.setPin(rs.getInt("pin"));
                dt.setBaohanh(rs.getString("baohanh"));
                dt.setBluetooth(rs.getInt("bluetooth"));
                dt.setId_nhasanxuat(rs.getInt("id_nhasanxuat"));
                dt.setCPU(rs.getString("CPU"));
                dt.setManhinh(rs.getString("manhinh"));
                dt.setStatus(rs.getInt("status"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseResultSet(rs);
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
        }
        return dt;
    }

    public static String UpdatePhone(String ten, String gia, String soluong, String trongluong, String rom, String ram, String thenho, String ctruoc, String csau, String pin, String baohanh, String bluetooth, String cpu, String manhinh, String[] ha, String id) {
        String sql = "update tbl_sanpham set ten=\'" + ten + "\',gia=" + gia + ",soluong=" + soluong + ",trongluong=\'" + trongluong + "\',ROM=\'" + rom + "\',RAM=\'" + ram + "\',thenho=\'" + thenho + "\',"
                + "camera_truoc=\'" + ctruoc + "\',camera_sau=\'" + csau + "\',pin=" + pin + ",baohanh=\'" + baohanh + "\',bluetooth=" + bluetooth + ",CPU=\'" + cpu + "\',manhinh=\'" + manhinh + "\' where id=" + id + ";"
                + "update tbl_album_anh set anh1=\'" + ha[0] + "\',anh2=\'" + ha[1] + "\',anh3=\'" + ha[2] + "\',anh4=\'" + ha[3] + "\' where id=" + id;
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
        return sql;
    }

    public static String InsertPhone(String ten, String id_danhmuc, String gia, String soluong, String trongluong, String rom, String ram, String thenho, String ctruoc, String csau, String pin, String baohanh, String bluetooth, String id_nsx, String cpu, String manhinh, String[] ha) {
        id_danhmuc = "1";// (^-^)
        String sql = "exec InsertPhone @id_danhmuc = " + id_danhmuc + ", @ten = N\'" + ten + "\', @gia = " + gia + ",@soluong = " + soluong
                + ",@trongluong = N\'" + trongluong + "\',@ROM = N\'" + rom + "\',@RAM = N\'" + ram + "\', @thenho = N\'" + thenho + "\',@camera_truoc = N\'"
                + ctruoc + "\',@camera_sau = N\'" + csau + "\',@pin = N\'" + pin + "\', @baohanh = N\'" + baohanh + "\', @bluetooth =\'" + bluetooth
                + "\', @id_nhasanxuat = " + id_nsx + ", @CPU = N\'" + cpu + "\', @manhinh = N\'" + manhinh
                + "\', @anh1 = N\'" + ha[0] + "\', @anh2 = N\'" + ha[1] + "\',@anh3 = N\'" + ha[2] + "\', @anh4 = N\'" + ha[3] + "'";
        System.out.println(sql);
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
        return sql;
    }

    public static List<dto.NhaSanXuat> GetNameNSX() {
        
        ArrayList<dto.NhaSanXuat> lstNSX = new ArrayList<dto.NhaSanXuat>();
        String sql = "select * from tbl_nhasanxuat";
        Connection conn = null;
        Statement state = null;
        try {
            conn = DatabaseUtils.getConnection();
            state = conn.createStatement();
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                dto.NhaSanXuat nsx = new dto.NhaSanXuat();
                nsx.setId(rs.getInt("id"));
                nsx.setTen(rs.getString("ten"));

                lstNSX.add(nsx);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(conn);
        }
        
        return lstNSX;
    }
    
    public static List<DanhMuc> GetNameDM() {
        
        ArrayList<DanhMuc> lstDM = new ArrayList<DanhMuc>();
        String sql = "select * from tbl_danhmuc";
        Connection conn = null;
        Statement state = null;
        try {
            conn = DatabaseUtils.getConnection();
            state = conn.createStatement();
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                DanhMuc dm = new DanhMuc();
                dm.setId(rs.getInt("id"));
                dm.setTen(rs.getString("ten"));

                lstDM.add(dm);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(conn);
        }
        
        return lstDM;
    }

}
