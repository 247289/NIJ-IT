/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.SanPhamDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet("/home")
public class SanPhamServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            List a = SanPhamDao.listDienThoai();
            request.setAttribute("sanpham", a);
            
            List b = SanPhamDao.GetPhoneByNSX("1");
            
            request.setAttribute("apple", b);
            
            List c =  SanPhamDao.GetPhoneByNSX("2");
            request.setAttribute("samsung", c);
            
            List d =  SanPhamDao.GetPhoneByNSX("3");
            request.setAttribute("oppo", d);
            
            List e =  SanPhamDao.GetPhoneByNSX("4");
            request.setAttribute("nokia", e);
            
            List f =  SanPhamDao.GetPhoneByNSX("5");
            request.setAttribute("asus", f);
            
            List g =  SanPhamDao.GetPhoneByNSX("6");
            request.setAttribute("xiaomi", g);
            
            

            RequestDispatcher rd = request.getRequestDispatcher("/TrangChu.jsp");
            rd.forward(request, response);
                        
        } catch (Exception e) {
            e.printStackTrace();
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
    

}

