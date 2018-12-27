
package dto;

public class ChiTietDonHang {
    private int id_dondathang;
    private int id_sanpham;
    private int soluong;
    private int gia;
    private DienThoai dienthoai;
    private Anh anh;

    public Anh getAlbumanh() {
        return anh;
    }

    public void setAlbumanh(Anh anh) {
        this.anh = anh;
    }

    public DienThoai getDienthoai() {
        return dienthoai;
    }

    public void setDienthoai(DienThoai dienthoai) {
        this.dienthoai = dienthoai;
    }

    public int getId_dondathang() {
        return id_dondathang;
    }

    public void setId_dondathang(int id_dondathang) {
        this.id_dondathang = id_dondathang;
    }

    public int getId_sanpham() {
        return id_sanpham;
    }

    public void setId_sanpham(int id_sanpham) {
        this.id_sanpham = id_sanpham;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }
    
}
