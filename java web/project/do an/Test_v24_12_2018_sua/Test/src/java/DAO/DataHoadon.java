/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author Xuan Truong PC
 */
import java.util.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import model.*;

public class DataHoadon {

    public static Vector<Receipt> getAllReceipt() {
        Vector<Receipt> res = new Vector<Receipt>();
        String sql = "select *,ht.tenhinhthuc hinhthucthanhtoan from hoadon h,hinhthucthanhtoan ht where h.hinhthucthanhtoan=ht.mahinhthuc";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                Receipt r = new Receipt();
                Comsumer c = DataKH.getKH(rs.getInt("makh") + "");
                r.setCom(c);
                r.setDiachigiaohang(rs.getString("diachigiaohang"));
                r.setDienthoainguoinhan(rs.getString("dienthoainguoinhan"));
                r.setEm(DataEmployee.getEmployee(rs.getInt("manhanvien") + ""));
                r.setEmailnguoinhan(rs.getString("emailnguoinhan"));
                r.setGiamgia(rs.getInt("giamgia"));
                r.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
                r.setMahoadon(rs.getString("mahoadon"));
                r.setNgayhoanthanh(rs.getTimestamp("ngayhoanthanh"));
                r.setNgaytao(rs.getTimestamp("ngaytao"));
                r.setPhivanchuyen(rs.getDouble("phivanchuyen"));
                r.setTennguoinhan(rs.getString("tennguoinhan"));
                r.setTrangthai(rs.getInt("trangthai"));
                res.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    public static Vector<Receipt> filter(String makh, String tenkh, String trangthai) {
        Vector<Receipt> res = new Vector<Receipt>();
        String sql = "select *,ht.tenhinhthuc hinhthucthanhtoan from khachhang k, hoadon h,hinhthucthanhtoan ht where h.hinhthucthanhtoan=ht.mahinhthuc and k.makh=h.makh";
        if (!makh.equals("")) {
            try {
                makh = Integer.parseInt(makh) + "";
                sql += " and k.makh=" + makh;
            } catch (Exception e) {
                makh = "0";
            }

        }
        sql += " and k.hoten like \'%" + tenkh + "%\' and h.trangthai=" + trangthai;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                Receipt r = new Receipt();
                Comsumer c = DataKH.getKH(rs.getInt("makh") + "");
                r.setCom(c);
                r.setDiachigiaohang(rs.getString("diachigiaohang"));
                r.setDienthoainguoinhan(rs.getString("dienthoainguoinhan"));
                r.setEm(DataEmployee.getEmployee(rs.getInt("manhanvien") + ""));
                r.setEmailnguoinhan(rs.getString("emailnguoinhan"));
                r.setGiamgia(rs.getInt("giamgia"));
                r.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
                r.setMahoadon(rs.getString("mahoadon"));
                r.setNgayhoanthanh(rs.getTimestamp("ngayhoanthanh"));
                r.setNgaytao(rs.getTimestamp("ngaytao"));
                r.setPhivanchuyen(rs.getDouble("phivanchuyen"));
                r.setTennguoinhan(rs.getString("tennguoinhan"));
                r.setTrangthai(rs.getInt("trangthai"));
                res.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    public static void delete(String mahoadon) {
        String sql = "delete from chitiethoadon where mahoadon=\'" + mahoadon + "\'";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        Receipt r=getReceipt(mahoadon);
        Vector<Product> listPro=r.getListPro();
        Comsumer com=r.getCom();
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            if (state.executeUpdate(sql) > 0) {

                sql = "delete from hoadon where mahoadon=\'" + mahoadon + "\'";
                state.executeUpdate(sql);
                sql="update khachhang set diemso="+(com.getDiemso()-r.getTonggiatri()/1000000)+" where makh="+com.getMakh();
                state.execute(sql);
                for(Product p:listPro){
                    String sql1="update sanpham set soluongtonkho="+(p.getSoLuong()+p.getSoluong())+" where masp="+p.getMaSP();
                    state.executeUpdate(sql1);
                }
            }
        } catch (Exception e) {

        } finally {
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
    }

    public static String update(String mahoadon, String trangthai, String manv, String ghichu) {
        String sql = "";
        if (trangthai.equals("1")) {
            sql = "update hoadon set trangthai=" + trangthai + ",manhanvien=" + manv + ",ghichu=\'" + ghichu + "\' where mahoadon=\'" + mahoadon + "\'";
        } else if (trangthai.equals("2")) {
            sql = "update hoadon set trangthai=" + trangthai + ",manhanvien=" + manv + ",ghichu=\'" + ghichu + "\' where mahoadon=\'" + mahoadon + "\'";
        } else {
            sql = "update hoadon set trangthai=" + trangthai + ",manhanvien=" + manv + ",ghichu=\'" + ghichu + "\',ngayhoanthanh=now() where mahoadon=\'" + mahoadon + "\'";
        }
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {

        } finally {
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return sql;
    }

    public static Receipt getReceipt(String mahoadon) {
        Receipt r = new Receipt();
        String sql = "select *,ht.tenhinhthuc hinhthucthanhtoan from hoadon h,hinhthucthanhtoan ht where h.hinhthucthanhtoan=ht.mahinhthuc and mahoadon=\'" + mahoadon + "\'";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                r.setGhichu(rs.getString("ghichu"));
                Comsumer c = DataKH.getKH(rs.getInt("makh") + "");
                r.setCom(c);
                r.setDiachigiaohang(rs.getString("diachigiaohang"));
                r.setDienthoainguoinhan(rs.getString("dienthoainguoinhan"));
                r.setEm(DataEmployee.getEmployee(rs.getInt("manhanvien") + ""));
                r.setEmailnguoinhan(rs.getString("emailnguoinhan"));
                r.setGiamgia(rs.getInt("giamgia"));
                r.setHinhthucthanhtoan(rs.getString("hinhthucthanhtoan"));
                r.setMahoadon(rs.getString("mahoadon"));
                r.setNgayhoanthanh(rs.getTimestamp("ngayhoanthanh"));
                r.setNgaytao(rs.getTimestamp("ngaytao"));
                r.setPhivanchuyen(rs.getDouble("phivanchuyen"));
                r.setTennguoinhan(rs.getString("tennguoinhan"));
                r.setTrangthai(rs.getInt("trangthai"));
            }
            sql = "select *,sanpham.tensanpham name from chitiethoadon,sanpham where mahoadon=\'" + mahoadon + "\' and sanpham.masp=chitiethoadon.masp";
            rs = state.executeQuery(sql);
            Vector<Product> pros = new Vector<Product>();
            while (rs.next()) {
                String masp=rs.getInt("masp")+"";
                Product p = new Data().getProduct(masp);
                p.setSoluong(rs.getInt("soluong"));
                p.setGiaban(rs.getDouble("giaban"));
                p.setTenSP(rs.getString("name"));
                pros.add(p);
            }
            r.setListPro(pros);
        } catch (Exception e) {

        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return r;
    }

//    insert into 
//    hoadon(mahoadon,makh,manhanvien,ngaytao,ngayhoanthanh,
//    hinhthucthanhtoan,giamgia ,dienthoainguoinhan,diachigiaohang,tennguoinhan,
//    emailnguoinhan,phivanchuyen,trangthai)
//    values('12345678','1','2',now(),null,1,2,'0123456789','Ha Noi','dxt','email',15000,1) 
    //public static String InsertReceipt(String mahoadon,String makh,String manv,String ngaytao,)
    public static String InsertReceipt(String makh, String manhanvien, String giamgia, String dienthoainguoinhan, String diachigiaohang, String tennguoinhan, String emailnguoinhan, String phivanchuyen, String hinhthucthanhtoan, String ghichu, Vector<Product> listPro, double tonggiatri, double diem) {
        Random rd = new Random();
        SimpleDateFormat output = new SimpleDateFormat("dd MM Y HH mm ss");
        String ma = output.format(new java.util.Date()).replaceAll(" ", "") + makh;
        String sql = "insert into hoadon(mahoadon,makh,manhanvien,ngaytao,ngayhoanthanh,"
                + "hinhthucthanhtoan,giamgia ,dienthoainguoinhan,diachigiaohang,tennguoinhan,"
                + "emailnguoinhan,phivanchuyen,trangthai,ghichu)"
                + "values(\'" + ma + "\'," + makh + "," + manhanvien + ",now(),null,"+hinhthucthanhtoan+"," + giamgia + ",\'" + dienthoainguoinhan + "\',\'" + diachigiaohang + "\',\'" + tennguoinhan + "\',\'" + emailnguoinhan + "\'," + phivanchuyen + ",1,\'" + ghichu + "\')";
        String sql2 = "insert into chitiethoadon(mahoadon,masp,soluong,giaban) values(\'" + ma + "\'," + (Math.abs(rd.nextInt()) % 113 + 1) + "," + Math.abs(rd.nextInt()) % 10 + "," + (Math.abs(rd.nextInt()) % 3 + 3) * 80000 + ")";
        Connection con = null;
        Statement state = null;
        for(Product p:listPro){
            p.setGiaban(p.getGia());
        }
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            if (state.executeUpdate(sql) > 0) {
                int x = listPro.size();
                for (Product p : listPro) {
                    sql2 = "insert into chitiethoadon(mahoadon,masp,soluong,giaban) values(\'" + ma + "\'," + p.getMaSP() + "," + p.getSoluong() + "," + p.getGiaban() + ")";
                    if(state.executeUpdate(sql2)>0){
                        String sql4="update sanpham set soluongtonkho="+(p.getSoLuong()-p.getSoluong())+" where masp="+p.getMaSP();
                        state.executeUpdate(sql4);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return sql + "\n" + sql2;
    }
    
    public static double getTonggiatri(Vector<Product> listPro,double diemso,int giamgia){
        double result=0;
        for(Product p:listPro){
            result+=p.getGiaban()*p.getSoluong();
        }
        result-=result*diemso/100;
        result-=result*giamgia/100;
        return result;
    }
    
     public static double getTonggiatri(Vector<Product> listPro){
        double result=0;
        if(listPro==null|listPro.size()==0){
            return 0;
        }
        for(Product p:listPro){
            result+=p.getGia()*p.getSoluong();
        }
        return result;
    }
     
    public static double getTonggiatriGioHang(Vector<Product> listPro,double diem,int giamgia){
        double result=0;
        if(listPro==null|listPro.size()==0){
            return 0;
        }
        for(Product p:listPro){
            result+=p.getGia()*p.getSoluong();
        }
        result-=result*diem/100;
        result-=result*giamgia/100;
        return result;
    }
}
