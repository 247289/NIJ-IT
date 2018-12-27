/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author JERRIER
 */
public class SanPham {
    private int id;
    private int id_danhmuc;
    private String ten;
    private int id_album_anh;
    private int gia;
    private int soluong;
    private String trongluong;
    private String ROM;
    private String RAM;
    private String thenho;
    private String camera_truoc;
    private String camera_sau;
    private int pin;
    private String baohanh;
    private int bluetooth;
    private int id_nhasanxuat;
    private String CPU;
    private String manhinh;
    private int status;
    private AlbumAnh albumAnh;
    private DanhMuc danhmuc;
    private NhaSanXuat nsx;
    private int soluongmua;

    public int getSoluongmua() {
        return soluongmua;
    }

    public void setSoluongmua(int soluongmua) {
        this.soluongmua = soluongmua;
    }
    
    
    public DanhMuc getDanhmuc() {
        return danhmuc;
    }

    public void setDanhmuc(DanhMuc danhmuc) {
        this.danhmuc = danhmuc;
    }

    public NhaSanXuat getNsx() {
        return nsx;
    }

    public void setNsx(NhaSanXuat nsx) {
        this.nsx = nsx;
    }
    

    public AlbumAnh getAlbumAnh() {
        return albumAnh;
    }

    public void setAlbumAnh(AlbumAnh albumAnh) {
        this.albumAnh = albumAnh;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_danhmuc() {
        return id_danhmuc;
    }

    public void setId_danhmuc(int id_danhmuc) {
        this.id_danhmuc = id_danhmuc;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getId_album_anh() {
        return id_album_anh;
    }

    public void setId_album_anh(int id_album_anh) {
        this.id_album_anh = id_album_anh;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getTrongluong() {
        return trongluong;
    }

    public void setTrongluong(String trongluong) {
        this.trongluong = trongluong;
    }

    public String getROM() {
        return ROM;
    }

    public void setROM(String ROM) {
        this.ROM = ROM;
    }

    public String getRAM() {
        return RAM;
    }

    public void setRAM(String RAM) {
        this.RAM = RAM;
    }

    public String getThenho() {
        return thenho;
    }

    public void setThenho(String thenho) {
        this.thenho = thenho;
    }

    public String getCamera_truoc() {
        return camera_truoc;
    }

    public void setCamera_truoc(String camera_truoc) {
        this.camera_truoc = camera_truoc;
    }

    public String getCamera_sau() {
        return camera_sau;
    }

    public void setCamera_sau(String camera_sau) {
        this.camera_sau = camera_sau;
    }

    public int getPin() {
        return pin;
    }

    public void setPin(int pin) {
        this.pin = pin;
    }

    public String getBaohanh() {
        return baohanh;
    }

    public void setBaohanh(String baohanh) {
        this.baohanh = baohanh;
    }

    public int getBluetooth() {
        return bluetooth;
    }

    public void setBluetooth(int bluetooth) {
        this.bluetooth = bluetooth;
    }

    public int getId_nhasanxuat() {
        return id_nhasanxuat;
    }

    public void setId_nhasanxuat(int id_nhasanxuat) {
        this.id_nhasanxuat = id_nhasanxuat;
    }

    public String getCPU() {
        return CPU;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }

    public String getManhinh() {
        return manhinh;
    }

    public void setManhinh(String manhinh) {
        this.manhinh = manhinh;
    }
    
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}

