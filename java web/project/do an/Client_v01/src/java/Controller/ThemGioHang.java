/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dto.SanPham;
import DAO.*;
import dto.Oder;
import dto.SanPhamGioHang;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class ThemGioHang extends HttpServlet {

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ThemGioHang</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ThemGioHang at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
      
        int soluong = 1;
        String id = request.getParameter("id");
        if(id !=null) {
           SanPham idsp = SanPhamDao.GetPhone(id);
           if(idsp!=null) {
               if(request.getParameter("soluong")!=null) {
                   soluong = Integer.parseInt(request.getParameter("soluong"));
               }
               HttpSession s  = request.getSession();
               if (s.getAttribute("oder")==null) {
                   Oder o = new  Oder();
                   List<SanPhamGioHang> list = new ArrayList<SanPhamGioHang>();
//                   SanPhamGioHang sp = new SanPhamGioHang();
//                   sp.setSoluong(soluong);
//                   sp.setGia(Float.parseFloat(request.getParameter("gia")));
//                   sp.setId(Integer.parseInt(request.getParameter("id")));
//                   
//                   list.add(sp);
                   
                   o.setSanPhamGioHang(list);
                   
                   s.setAttribute("oder", o);
               }
               else {
                   Oder o = (Oder) s.getAttribute("oder");
                   List<SanPhamGioHang> list = o.getSanPhamGioHang();
                   boolean chex = false;
                   for (SanPhamGioHang sanPhamGioHang : list) {
                       if(sanPhamGioHang.getSanpham().getId()==idsp.getId()) {
                           sanPhamGioHang.setSoluong(sanPhamGioHang.getSoluong()+soluong);
                           chex = true;
                   }
                   }
                   if (chex==false) {
//                       SanPhamGioHang sp = new SanPhamGioHang();
//                       sp.setSoluong(soluong);
//                       sp.setSanpham(idsp);
//                       sp.setGia(idsp.getGia());
//                       
//                       list.add(sp);
                   }
                   s.setAttribute("oder", o);
           }
        }
           response.sendRedirect(request.getContextPath()+"/GioHang.jsp");
        }
        else {
            processRequest(request, response);
            response.sendRedirect(request.getContextPath()+"/GioHang.jsp");
        }
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
