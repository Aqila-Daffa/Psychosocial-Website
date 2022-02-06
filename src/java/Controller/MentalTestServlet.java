/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

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
 * @author ASUS
 */
public class MentalTestServlet extends HttpServlet {

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
            HttpSession session = request.getSession(true);
            int score;
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            int num3 = Integer.parseInt(request.getParameter("num3"));
            int num4 = Integer.parseInt(request.getParameter("num4"));
            int num5 = Integer.parseInt(request.getParameter("num5"));
            int num6 = Integer.parseInt(request.getParameter("num6"));
            int num7 = Integer.parseInt(request.getParameter("num7"));
            int num8 = Integer.parseInt(request.getParameter("num8"));
            int num9 = Integer.parseInt(request.getParameter("num9"));
            int num10 = Integer.parseInt(request.getParameter("num10"));
            int num11 = Integer.parseInt(request.getParameter("num11"));
            int num12 = Integer.parseInt(request.getParameter("num12"));
            int num13 = Integer.parseInt(request.getParameter("num13"));
            int num14 = Integer.parseInt(request.getParameter("num14"));
            int num15 = Integer.parseInt(request.getParameter("num15"));
            int num16 = Integer.parseInt(request.getParameter("num16"));
            int num17 = Integer.parseInt(request.getParameter("num17"));
            int num18 = Integer.parseInt(request.getParameter("num18"));
            int num19 = Integer.parseInt(request.getParameter("num19"));
            int num20 = Integer.parseInt(request.getParameter("num20"));
            int num21 = Integer.parseInt(request.getParameter("num21"));
            int num22 = Integer.parseInt(request.getParameter("num22"));
            int num23 = Integer.parseInt(request.getParameter("num23"));
            int num24 = Integer.parseInt(request.getParameter("num24"));
            int num25 = Integer.parseInt(request.getParameter("num25"));
            int num26 = Integer.parseInt(request.getParameter("num26"));
            int num27 = Integer.parseInt(request.getParameter("num27"));
            int num28 = Integer.parseInt(request.getParameter("num28"));
            int num29 = Integer.parseInt(request.getParameter("num29"));
            int num30 = Integer.parseInt(request.getParameter("num30"));
            int num31 = Integer.parseInt(request.getParameter("num31"));
            int num32 = Integer.parseInt(request.getParameter("num32"));
            int num33 = Integer.parseInt(request.getParameter("num33"));
            int num34 = Integer.parseInt(request.getParameter("num34"));
            int num35 = Integer.parseInt(request.getParameter("num35"));
            
            score = num1 + num2 + num3 + num4 + num5 + 
                    num6 + num7 + num8 + num9 + num10 + 
                    num11 + num12 + num13 + num14 + num15 + 
                    num16 + num17 + num18 + num19 + num20 + 
                    num21 + num22 + num23 + num24 + num25 + 
                    num26 + num27 + num28 + num29 + num30 + 
                    num31 + num32 + num33 + num34 + num35;
            session.setAttribute("score", score);
            
            RequestDispatcher rd = request.getRequestDispatcher("User/MentalHResult.jsp");
            rd.forward(request, response);
            
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
