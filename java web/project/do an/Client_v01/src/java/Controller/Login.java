/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.TaiKhoanDao;
import dto.TaiKhoan;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class Login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8"); // dể không bị lỗi font khi load qua jsp
        request.setCharacterEncoding("UTF-8");

        try (PrintWriter out = response.getWriter()) {
            String user = request.getParameter("name");
            String pass = request.getParameter("pass");
            
            boolean isValid=true;
                    //isValid = TaiKhoanDAO.checkLogin(user, pass);
//            boolean tt = false;
            TaiKhoan e=TaiKhoanDao.checkLogin(user, pass);
            if (e!=null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", e);
                
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/index.jsp");
                dispatch.forward(request, response);
//                
//                tt = true;
            } 
            else {
                String erro = "Thông tin đăng nhập không chính xác !";
                request.setAttribute("erro", erro);
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/DangNhap.jsp");
                dispatch.forward(request, response);            
            }
        } finally{
            out.close();
        }
      
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
