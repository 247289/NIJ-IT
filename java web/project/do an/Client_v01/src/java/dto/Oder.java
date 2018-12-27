/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.*;

/**
 *
 * @author Admin
 */
public class Oder {
    
    private int id;
    private TaiKhoan taikhoan;
    private List <SanPhamGioHang> SanPhamGioHang;
    private int status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public TaiKhoan getTaikhoan() {
        return taikhoan;
    }

    public void setTaikhoan(TaiKhoan taikhoan) {
        this.taikhoan = taikhoan;
    }

    public List<SanPhamGioHang> getSanPhamGioHang() {
        return SanPhamGioHang;
    }

    public void setSanPhamGioHang(List<SanPhamGioHang> SanPhamGioHang) {
        this.SanPhamGioHang = SanPhamGioHang;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
