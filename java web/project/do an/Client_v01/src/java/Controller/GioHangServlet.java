/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dto.*;
import dto.SanPhamGioHang;
import java.io.IOException;
import java.io.PrintWriter;
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
public class GioHangServlet extends HttpServlet {

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
        
            
            HttpSession session = request.getSession();
            GioHangdto cart = (GioHangdto)session.getAttribute("cart");
            
            if(cart == null) {
                cart = new GioHangdto();       
                session.setAttribute("cart", cart);             
            }
            
            if(request.getParameter("action")=="add") {
               
                int gia = Integer.parseInt(request.getParameter("gia"));
                int id = Integer.parseInt(request.getParameter("id"));
                int soluong = Integer.parseInt(request.getParameter("soluong"));
                //String name = request.getParameter("name");
                
                SanPhamGioHang sp = new SanPhamGioHang( gia, soluong, id);
                
                cart.addsp(sp);
        }
//            else if(cartAction.endsWith("xoa")) {
//                int id = Integer.parseInt(request.getParameter("id"));
//                cart.removesp(id);
//            }
//            
//            else if(cartAction.equals("update")) {
//                String listid[] = request.getParameterValues("id");
//                String listsoluong[] = request.getParameterValues("soluong");
//                
//                if(listid != null) {
//                    if(listid.length == 1) {
//                        int id = Integer.parseInt(listid[0]);
//                        int quantity = Integer.parseInt(listsoluong[0]);
//                        cart.updatesoluong(id, quantity);
//                    } else {
//                        for(int i = 0; i < listid.length; i++) {
//                            int id = Integer.parseInt(listid[i]);
//                            int quantity = Integer.parseInt(listsoluong[i]);
//                            cart.updatesoluong(id, quantity);
//                        }
//                    }
//                }
//                }
//                else if(cartAction.equals("view")) {
//                RequestDispatcher dispatch = getServletContext().
//                    getRequestDispatcher("/GioHang.jsp");
//                dispatch.forward(request, response);
//            }   
//            
            session.setAttribute("cart", cart);
            RequestDispatcher dispatch = getServletContext().
            getRequestDispatcher("/GioHang.jsp");
            dispatch.forward(request, response);

            
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
