/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.Enumeration;
import java.util.Hashtable;

/**
 *
 * @author Admin
 */
public  class GioHangdto {
    
    private Hashtable<Integer, SanPhamGioHang> cart = new Hashtable<Integer, SanPhamGioHang>();
    
    public void addsp (SanPhamGioHang sp) {
        if(cart.containsKey(sp.getId())) {
            SanPhamGioHang product = cart.get(sp.getId());
            product.setSoluong(product.getSoluong() + 1);
        } else {
            cart.put(sp.getId(), sp);
        }
    }
    
    //method dung de xoa mot san pham khoi gio hang theo id
    public void removesp(Integer id) {
        if(cart.containsKey(id))
            cart.remove(id);
    }
    
    //lay ve toan bo so luong cac san pham trong gio hang
    public int getAllsoluonghang() {
        return cart.size();
    }
    
    //cap nhat so luong cua 1 san pham trong gio hang
    public void updatesoluong(int itemId, int newsoluong) {
        //lay ve san pham trong gio hang theo id
        SanPhamGioHang product = cart.get(itemId);
        //cap nhat lai so luong cua san pham
        product.setSoluong(newsoluong);
    }
    
    //method nay dung de tra ve tat ca cac san pham trong gio hang
    public Enumeration getAllSanPham() {
        return cart.elements();
    }
    
    //method dung de tra ve tong gia tri cua shoppingcart
    public float tongtien() {
        float sum = 0;
        //lay ve cac san pham trong gio hang
        Enumeration items = cart.elements();
        //duyet qua tat ca cac san pham trong gio hang de tinh gia tri
        while(items.hasMoreElements()) {
            SanPhamGioHang product = (SanPhamGioHang)items.nextElement();
            float gia = product.getGia();
            int soluong = product.getSoluong();
            float tong = gia * soluong;
            sum += tong;
        }        
        return sum;
    }
    
    //method dung de xoa gio hang
    public void clearCart() {
        cart.clear();
    }
    
    //method nay cho phep dem tong so san pham trong gio hang
    public int getAllSoluong() {
        int AllItems = 0;
        Enumeration items = cart.elements();
        //dem tong so luong cac san pham trong gio hang
        while(items.hasMoreElements()) {
            SanPhamGioHang product = (SanPhamGioHang)items.nextElement();
            int soluong = product.getSoluong();            
            AllItems += soluong;
        }
        return AllItems;
    }
    
}
