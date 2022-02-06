/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DbConn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
public class HistoryBookServlet extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession(true);
            String fname = (String)session.getAttribute("fname");
            String date = (String)session.getAttribute("date");
            String time = (String)session.getAttribute("time");
            String psy = (String)session.getAttribute("psy");
            int appId = (Integer)session.getAttribute("appId");
            int usId = (Integer)session.getAttribute("usId");
            String tranStat = "Pending";
            
            int tranId = 0;
            String query1 = "INSERT INTO books (fullname, date, time, psychologist, statusTransaction, userId, transactionId) VALUES (?, ?, ?, ?, ?, ?, ?)";
            String query2 = "SELECT * FROM transactions WHERE appointmentId=?";
            
            Connection con = DbConn.initializeDatabase();
            
            PreparedStatement ac = con.prepareStatement(query2);
               ac.setInt(1,appId);
               ResultSet rst = ac.executeQuery();
               PreparedStatement stmt = con.prepareStatement(query1);           
            
            while(rst.next()){
               tranId += rst.getInt(1);            
               }
               
               stmt.setString(1, fname);                          
               stmt.setString(2,date);
               stmt.setString(3,time);
               stmt.setString(4,psy);
               stmt.setString(5,tranStat);
               stmt.setInt(6,usId);
               stmt.setInt(7,tranId);
            
            
            stmt.executeUpdate();
            
            ac.close();
            rst.close();
            stmt.close();
            con.close();
            response.sendRedirect("User/TransactionHistory.jsp");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(HistoryBookServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(HistoryBookServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(HistoryBookServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(HistoryBookServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
