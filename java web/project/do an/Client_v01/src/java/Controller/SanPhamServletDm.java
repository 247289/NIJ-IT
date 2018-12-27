/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.SanPhamDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class SanPhamServletDm extends HttpServlet {

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
            
            List apple1 = SanPhamDao.GetByDanhMuc("1", "1");
            request.setAttribute("dtapple", apple1);
            
            List apple2 = SanPhamDao.GetByDanhMuc("1", "2");
            request.setAttribute("tabletapple", apple2);
            
            List apple3 = SanPhamDao.GetByDanhMuc("1", "3");
            request.setAttribute("pkapple", apple3);
            
            
            
            List samsung1 = SanPhamDao.GetByDanhMuc("2", "1");
            request.setAttribute("dtsamsung", samsung1);
            
            List samsung2 = SanPhamDao.GetByDanhMuc("2", "2");
            request.setAttribute("tabletsamsung", samsung2);
            
            List samsung3 = SanPhamDao.GetByDanhMuc("2", "3");
            request.setAttribute("pksamsung", samsung3);
            
            
            
            List oppo1 = SanPhamDao.GetByDanhMuc("3", "1");
            request.setAttribute("dtoppo", oppo1);
            
            List oppo2 = SanPhamDao.GetByDanhMuc("3", "2");
            request.setAttribute("tabletoppo", oppo2);
            
            List oppo3 = SanPhamDao.GetByDanhMuc("3", "3");
            request.setAttribute("pkoppo", oppo3);
            
            List nokia1 = SanPhamDao.GetByDanhMuc("4", "1");
            request.setAttribute("dtnokia", nokia1);
            
            List nokia2 = SanPhamDao.GetByDanhMuc("4", "2");
            request.setAttribute("tabletnokia", nokia2);
            
            List nokia3 = SanPhamDao.GetByDanhMuc("4", "3");
            request.setAttribute("pknokia", nokia3);
            
            
            
            List asus1 = SanPhamDao.GetByDanhMuc("5", "1");
            request.setAttribute("dtasus", asus1);
            
            List asus2 = SanPhamDao.GetByDanhMuc("5", "2");
            request.setAttribute("tabletasus", asus2);
            
            List asus3 = SanPhamDao.GetByDanhMuc("5", "3");
            request.setAttribute("pkasus", asus3);
            
            
            
            List xiaomi1 = SanPhamDao.GetByDanhMuc("6", "1");
            request.setAttribute("dtxiaomi", xiaomi1);
            
            List xiaomi2 = SanPhamDao.GetByDanhMuc("6", "2");
            request.setAttribute("tabletxiaomi", xiaomi2);
            
            List xiaomi3 = SanPhamDao.GetByDanhMuc("6", "3");
            request.setAttribute("pkxiaomi", xiaomi3);
            
            RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/SanPham.jsp");
            rd.forward(request, response);
                        
        }
        catch (Exception e) {
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
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
