/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DienThoaiDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class InsertPhone extends HttpServlet {

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
            String ten=request.getParameter("ten");
            String id_dm = request.getParameter("id_dm");
            String gia=request.getParameter("gia");
            String soluong=request.getParameter("soluong");
            String trongluong=request.getParameter("trongluong");
            String rom=request.getParameter("rom");
            String ram=request.getParameter("ram");
            String thenho=request.getParameter("thenho");
            String ctruoc=request.getParameter("ctruoc");
            String csau=request.getParameter("csau");
            String pin=request.getParameter("pin");
            String baohanh=request.getParameter("baohanh");
            String bluetooth=request.getParameter("bluetooth");
            String hang = request.getParameter("id_nsx");
            String cpu=request.getParameter("cpu");
            String manhinh=request.getParameter("manhinh");
            String [] ha=request.getParameterValues("hinh");
            
            //
            out.print(ha.length);
            out.print(DienThoaiDAO.InsertPhone(ten, id_dm, gia, soluong, trongluong, rom, ram, thenho, ctruoc, csau, pin, baohanh, bluetooth, hang, cpu, manhinh, ha));

            request.getServletContext().getRequestDispatcher("/dienthoai.jsp").forward(request, response);
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
