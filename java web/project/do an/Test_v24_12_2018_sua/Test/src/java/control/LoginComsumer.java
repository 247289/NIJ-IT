/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;
//
import DAO.DataKH;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Comsumer;
/**
 *
 *  @author daomi
 */
public class LoginComsumer extends HttpServlet {

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
            String user = request.getParameter("ten_dang_nhap");
            String pass = request.getParameter("mat_khau_dang_nhap");
            model.Comsumer e = DataKH.checkLogin(user, pass);
            if (e!=null) {
                out.print("out");
                HttpSession session = request.getSession();
                session.setAttribute("user", e);
//                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/default.jsp");
//                dispatch.forward(request, response);
                String page=(String)session.getAttribute("prePage");
                out.print(page);
                response.sendRedirect(page);
                //request.getServletContext().getRequestDispatcher("/"+page);
            } else {
                out.print("hack ak");
//                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/form/form.jsp");
//                dispatch.forward(request, response);
                response.sendRedirect("form/form.jsp");
                //request.getServletContext().getRequestDispatcher("/form/form.jsp");
            }
        } catch(Exception e){
            out.print(e.getMessage());
        }
        finally {
            out.close();
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
