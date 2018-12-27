/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import dto.AlbumAnh;
import dto.DanhMuc;
import dto.NhaSanXuat;
import dto.SanPham;
import java.sql.*;
import java.util.*;
import utils.*;

/**
 *
 * @author JERRIER
 */
public class SanPhamDao {
    public static ArrayList<SanPham> listDienThoai() {
        ArrayList<SanPham> listDienThoai = new ArrayList<SanPham>();
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        try {
            con = DatabaseUtils.getConnection();

            String sql = "select p.id idsp, p.*,d.ten loai,n.ten ncc,ha.*"
                + " from tbl_sanpham p,tbl_nhasanxuat n,tbl_danhmuc d,tbl_album_anh ha "
                + "where p.id_danhmuc=d.id and p.id_nhasanxuat=n.id and p.id_album_anh=ha.id ";

            sta = con.createStatement();
            rs = sta.executeQuery(sql);
            //out.print("ok<br>");
            while (rs.next()) {
                SanPham dt = new SanPham();
                AlbumAnh ha = new AlbumAnh();
                ha.setAnh1(rs.getString("anh1"));
                ha.setAnh2(rs.getString("anh2"));
                ha.setAnh3(rs.getString("anh3"));
                ha.setAnh4(rs.getString("anh4"));
                dt.setAlbumAnh(ha);

                NhaSanXuat nsx = new NhaSanXuat();
                nsx.setId(rs.getInt("id_nhasanxuat"));
                nsx.setTen(rs.getString("ncc"));
                dt.setNsx(nsx);

                DanhMuc dmuc = new DanhMuc();
                dmuc.setId(rs.getInt("id_danhmuc"));
                dmuc.setTen(rs.getString("loai"));
                dt.setDanhmuc(dmuc);

                dt.setId(rs.getInt("idsp"));
                dt.setId_danhmuc(rs.getInt("id_danhmuc"));
                dt.setTen(rs.getString("ten"));
                dt.setId_album_anh(rs.getInt("id_album_anh"));
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
        }finally{
            DatabaseUtils.CloseStatement(sta);
            DatabaseUtils.CloseResultSet(rs);
            DatabaseUtils.CloseConnection(con);
        }

        return listDienThoai;
    }

    public static SanPham GetPhone(String id) {
        String sql = "select p.*,d.ten loai,n.ten ncc,ha.*"
                + " from tbl_sanpham p,tbl_nhasanxuat n,tbl_danhmuc d,tbl_album_anh ha "
                + "where p.id_danhmuc=d.id and p.id_nhasanxuat=n.id and p.id_album_anh=ha.id and p.id=" + id;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        SanPham dt = null;
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                dt = new SanPham();

                AlbumAnh ha = new AlbumAnh();
                ha.setAnh1(rs.getString("anh1"));
                ha.setAnh2(rs.getString("anh2"));
                ha.setAnh3(rs.getString("anh3"));
                ha.setAnh4(rs.getString("anh4"));
                dt.setAlbumAnh(ha);

                NhaSanXuat nsx = new NhaSanXuat();
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
                dt.setId_album_anh(rs.getInt("id_album_anh"));
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

    public static List<NhaSanXuat> GetNameNSX() {
        
        ArrayList<NhaSanXuat> lstNSX = new ArrayList<NhaSanXuat>();
        String sql = "select * from tbl_nhasanxuat";
        Connection conn = null;
        Statement state = null;
        try {
            conn = DatabaseUtils.getConnection();
            state = conn.createStatement();
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                NhaSanXuat nsx = new NhaSanXuat();
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
    public static ArrayList<SanPham> GetPhoneByNSX(String id) {
        ArrayList<SanPham> list = new ArrayList<SanPham>();
        String sql = "select p.*,d.ten loai,n.ten ncc,ha.*"
                + " from tbl_sanpham p,tbl_nhasanxuat n,tbl_danhmuc d,tbl_album_anh ha "
                + "where p.id_danhmuc=d.id and p.id_nhasanxuat=n.id and p.id_album_anh=ha.id and n.id=" + id;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                SanPham dt = new SanPham();

                AlbumAnh ha = new AlbumAnh();
                ha.setAnh1(rs.getString("anh1"));
                ha.setAnh2(rs.getString("anh2"));
                ha.setAnh3(rs.getString("anh3"));
                ha.setAnh4(rs.getString("anh4"));
                dt.setAlbumAnh(ha);

                NhaSanXuat nsx = new NhaSanXuat();
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
                dt.setId_album_anh(rs.getInt("id_album_anh"));
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
                list.add(dt);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseResultSet(rs);
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
        }
        return list;
    }
    
    public static ArrayList<SanPham> GetPhoneById(String id) {
        ArrayList<SanPham> list = new ArrayList<SanPham>();
        String sql = "select p.*,d.ten loai,n.ten ncc,ha.*"
                + " from tbl_sanpham p,tbl_nhasanxuat n,tbl_danhmuc d,tbl_album_anh ha "
                + "where p.id_danhmuc=d.id and p.id_nhasanxuat=n.id and p.id_album_anh=ha.id and p.id=" + id;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                SanPham dt = new SanPham();

                AlbumAnh ha = new AlbumAnh();
                ha.setAnh1(rs.getString("anh1"));
                ha.setAnh2(rs.getString("anh2"));
                ha.setAnh3(rs.getString("anh3"));
                ha.setAnh4(rs.getString("anh4"));
                dt.setAlbumAnh(ha);

                NhaSanXuat nsx = new NhaSanXuat();
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
                dt.setId_album_anh(rs.getInt("id_album_anh"));
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
                list.add(dt);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseResultSet(rs);
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
        }
        return list;
    }
    
    
    public static ArrayList<SanPham> GetByDanhMuc(String id1 , String id) {
        ArrayList<SanPham> list = new ArrayList<SanPham>();
        String sql = "select p.*,d.ten loai,n.ten ncc,ha.*"
                + " from tbl_sanpham p,tbl_nhasanxuat n,tbl_danhmuc d,tbl_album_anh ha "
                + "where p.id_danhmuc=d.id and p.id_nhasanxuat=n.id and n.id="+id1+" and p.id_album_anh=ha.id and d.id=" + id;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                SanPham dt = new SanPham();

                AlbumAnh ha = new AlbumAnh();
                ha.setAnh1(rs.getString("anh1"));
                ha.setAnh2(rs.getString("anh2"));
                ha.setAnh3(rs.getString("anh3"));
                ha.setAnh4(rs.getString("anh4"));
                dt.setAlbumAnh(ha);

                NhaSanXuat nsx = new NhaSanXuat();
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
                dt.setId_album_anh(rs.getInt("id_album_anh"));
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
                list.add(dt);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseResultSet(rs);
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
        }
        return list;
    }
   
    
    public static double TinhSoLuong(Vector<SanPham> pros){
        double result=0;
        for(SanPham s:pros){
            result+=s.getSoluongmua();
        }
        return result;
    }
    
    public static double TinhTongGia(Vector<SanPham> pros){
        double result=0;
        for(SanPham s:pros){
            result+=s.getGia();
        }
        return result;
    }
}

