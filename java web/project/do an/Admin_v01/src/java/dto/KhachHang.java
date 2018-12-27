/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Administrator
 */
public class KhachHang {
    private int id;
    private String ten;
    private int sdt;
    private int id_themdiachi;
    private String matkhau;
    private String email;
    private NguoiNhan nguoinhan;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getSdt() {
        return sdt;
    }

    public void setSdt(int sdt) {
        this.sdt = sdt;
    }

    public int getId_themdiachi() {
        return id_themdiachi;
    }

    public void setId_themdiachi(int id_themdiachi) {
        this.id_themdiachi = id_themdiachi;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public NguoiNhan getNguoinhan() {
        return nguoinhan;
    }

    public void setNguoinhan(NguoiNhan nguoinhan) {
        this.nguoinhan = nguoinhan;
    }
}
