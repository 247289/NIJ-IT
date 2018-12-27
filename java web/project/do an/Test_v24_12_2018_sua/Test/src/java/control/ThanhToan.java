/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.DataHoadon;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Comsumer;
import model.Product;

/**
 *
 * @author Xuan Truong PC
 */
public class ThanhToan extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Comsumer com=(Comsumer)request.getSession().getAttribute("user");
            out.print("<br>Mã khách hang: "+com.getMakh());
            out.print("<br>Điểm tích lũy: "+com.getDiemso());
            String fullname=java.net.URLDecoder.decode(request.getParameter("fullname_nn"), "UTF-8");
            String phone=request.getParameter("phone_nn");
            String email=request.getParameter("email_nn");
            String address=java.net.URLDecoder.decode(request.getParameter("address_nn"),"UTF-8");
            String note=java.net.URLDecoder.decode(request.getParameter("content"), "UTF-8");
            String pttt=request.getParameter("pttt");
            String phi=request.getParameter("phi");
            String giamgia=request.getParameter("code");
            out.print("<br>Tên người nhận: "+fullname);
            out.print("<br>Điện thoại người nhận: "+phone);
            out.print("<br>Địa chỉ giao hang: "+address);
            out.print("<br>Ghi chú: "+note);
            out.print("<br>Hình thức thanh toán: "+pttt);
            out.print("<br>Phí vận chuyển: "+phi);
            out.print("<br>Email người nhận: "+email);
            out.print("<br>Giảm giá: "+giamgia);
            Vector<Product> pros=(Vector<Product>)request.getSession().getAttribute("giohang");
            out.print("<br>Số lượng mặt hàng trong giỏ: "+pros.size());
            DataHoadon.InsertReceipt(com.getMakh()+"", 4+"", giamgia, phone,address, fullname, email, phi,pttt+"", note, pros, 0, com.getDiemso());
            request.getSession().setAttribute("giohang", null);
//            request.getServletContext().getRequestDispatcher("/default.jsp");
           response.sendRedirect("default.jsp");
        }
    }
    //String makh, String manhanvien, String giamgia,
//    String dienthoainguoinhan, String diachigiaohang, String tennguoinhan, String emailnguoinhan,
//    String phivanchuyen, String trangthai, String ghichu, 
//            Vector<Product> listPro, double tonggiatri, double diem

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
