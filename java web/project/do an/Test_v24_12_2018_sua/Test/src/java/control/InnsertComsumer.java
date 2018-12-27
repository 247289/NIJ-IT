/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.DataKH;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author daomi
 */
public class InnsertComsumer extends HttpServlet {

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
            String hoten = java.net.URLDecoder.decode(request.getParameter("hoten"), "UTF-8");
            String sdt = request.getParameter("sdt");
            String gioitinh = request.getParameter("gt");
            String matkhau = request.getParameter("mk");
            String email = request.getParameter("email");
            out.print(hoten+"<br>");
            out.print(sdt+"<br>");
            out.print(gioitinh+"<br>");
            out.print(matkhau+"<br>");
            out.print(email+"<br>");
            String diachi = java.net.URLDecoder.decode(request.getParameter("diachi"), "UTF-8");
            out.print(diachi+"<br>");
            out.print(DataKH.insertComsumer(hoten, diachi, sdt, email,matkhau, gioitinh));
            //DataKH.checkLogin(email, matkhau);
            request.getServletContext().getRequestDispatcher("/LoginComsumer?ten_dang_nhap="+email+"&mat_khau_dang_nhap="+matkhau).forward(request, response);
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
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
