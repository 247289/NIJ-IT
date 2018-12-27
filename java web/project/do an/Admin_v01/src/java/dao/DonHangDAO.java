/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.*;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import utils.DatabaseUtils;

/**
 *
 * @author Administrator
 */
public class DonHangDAO {

    public static DonHang GetDonHang(String id) {
        DonHang dh = null;
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        String sql = "select ddh.*,kh.ten,kh.sdt,nv.ten as 'tennv',nn.diachi1"
                + " from tbl_dondathang ddh,tbl_khachhang kh,tbl_nhanvien nv,tbl_nguoinhan nn"
                + " where ddh.id_khachhang=kh.id and ddh.id_nhanvien=nv.id and kh.id_themdiachi=nn.id and ddh.id=" + id;
        try {
            con = DatabaseUtils.getConnection();
            sta = con.createStatement();
            rs = sta.executeQuery(sql);
            while (rs.next()) {
                dh = new DonHang();

                KhachHang kh = new KhachHang();
                kh.setTen(rs.getString("ten"));
                kh.setSdt(rs.getInt("sdt"));
                dh.setKhachhang(kh);

                NguoiNhan nn = new NguoiNhan();
                nn.setDiachi1(rs.getString("diachi1"));
                dh.setNguoinhan(nn);

                NhanVien nv = new NhanVien();
                nv.setTen(rs.getString("tennv"));
                dh.setNhanvien(nv);

                dh.setId(rs.getInt("id"));
                dh.setId_khachhang(rs.getInt("id_khachhang"));
                dh.setId_nhanvien(rs.getInt("id_nhanvien"));
                dh.setNgaylap(rs.getDate("ngaylap"));
                dh.setTonggia(rs.getInt("tonggia"));
                dh.setTinhtrang(rs.getString("tinhtrang"));
                dh.setGhichu(rs.getString("ghichu"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseResultSet(rs);
            DatabaseUtils.CloseStatement(sta);
            DatabaseUtils.CloseConnection(con);
        }
        return dh;
    }

    public static ArrayList<DonHang> listDonHang() {
        ArrayList<DonHang> listDonHang = new ArrayList<DonHang>();
        Connection con = null;
        Statement sta = null;
        ResultSet rs = null;
        DonHang dh = null;
        String sql = "select ddh.*,kh.ten,nv.ten as 'tennv',nn.diachi1"
                + " from tbl_dondathang ddh,tbl_khachhang kh,tbl_nhanvien nv,tbl_nguoinhan nn"
                + " where ddh.id_khachhang=kh.id and ddh.id_nhanvien=nv.id and kh.id_themdiachi=nn.id";
        try {
            con = DatabaseUtils.getConnection();
            sta = con.createStatement();
            rs = sta.executeQuery(sql);
            while (rs.next()) {
                dh = new DonHang();

                KhachHang kh = new KhachHang();
                kh.setTen(rs.getString("ten"));
                dh.setKhachhang(kh);

                NguoiNhan nn = new NguoiNhan();
                nn.setDiachi1(rs.getString("diachi1"));
                dh.setNguoinhan(nn);

                NhanVien nv = new NhanVien();
                nv.setTen(rs.getString("tennv"));
                dh.setNhanvien(nv);

                dh.setId(rs.getInt("id"));
                dh.setId_khachhang(rs.getInt("id_khachhang"));
                dh.setId_nhanvien(rs.getInt("id_nhanvien"));
                dh.setNgaylap(rs.getDate("ngaylap"));
                dh.setTonggia(rs.getInt("tonggia"));
                dh.setTinhtrang(rs.getString("tinhtrang"));
                dh.setGhichu(rs.getString("ghichu"));
                listDonHang.add(dh);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseResultSet(rs);
            DatabaseUtils.CloseStatement(sta);
            DatabaseUtils.CloseConnection(con);
        }
        return listDonHang;
    }

    public static String updateDonHang(String ghichu, String id, String tinhtrang) {
        String sql = "update tbl_dondathang set tinhtrang=N'" + tinhtrang + "', ghichu=N'" + ghichu + "' where id=" + id;
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

    public static DienThoai GetChiTiet(String id) {
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
                ArrayList<Anh> lstAnh = new ArrayList<Anh>();
                Anh ha = new Anh();
                ha.setLink(rs.getString("link"));
                ha.setId_sp(rs.getInt("id_sp"));
                lstAnh.add(ha);

                dto.NhaSanXuat nsx = new dto.NhaSanXuat();
                nsx.setId(rs.getInt("id_nhasanxuat"));
                nsx.setTen(rs.getString("ten"));
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

    public static ArrayList<ChiTietDonHang> getSPDonHang(String id) {
        ArrayList<ChiTietDonHang> list = new ArrayList<ChiTietDonHang>();

        String sql = "select ctdh.id_dondathang, sp.ten, sp.gia, ctdh.soluong, aa.anh1 "
                + "from dbo.tbl_chitietdonhang ctdh, dbo.tbl_sanpham sp,dbo.tbl_album_anh aa "
                + "where  ctdh.id_sanpham=sp.id and sp.id_album_anh=aa.id and ctdh.id_dondathang=" + id;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        ChiTietDonHang ct = null;
        try {
            con = DatabaseUtils.getConnection();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                ct = new ChiTietDonHang();

                Anh aa = new Anh();
                aa.setLink(rs.getString("link"));
                ct.setAlbumanh(aa);
                
                DienThoai dt = new DienThoai();
                dt.setTen(rs.getString("ten"));
                dt.setGia(rs.getInt("gia"));
                ct.setDienthoai(dt);

                ct.setId_dondathang(rs.getInt("id_dondathang"));
                ct.setSoluong(rs.getInt("soluong"));
                list.add(ct);

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DatabaseUtils.CloseStatement(state);
            DatabaseUtils.CloseConnection(con);
            DatabaseUtils.CloseResultSet(rs);
        }
        return list;
    }
    
}
