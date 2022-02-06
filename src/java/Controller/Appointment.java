/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DbConn;
import java.sql.*;
import java.sql.Connection;
import java.io.IOException;
import java.io.PrintWriter;
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
public class Appointment extends HttpServlet {

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
            String fname = request.getParameter("fname");
            session.setAttribute("fname", fname);
                       
            int age = Integer.parseInt(request.getParameter("age"));
            String date = request.getParameter("date");
            session.setAttribute("date", date);
            
            String psy = request.getParameter("psycName");   
            session.setAttribute("psy", psy);
            
            int scr = (Integer)session.getAttribute("score");           
            String intr = (String)session.getAttribute("intpret");
            String usname = (String)session.getAttribute("name");
            
            int usId = 0;
            String time = "";
            double price = 0;
        
            if(psy.equals("Sevro")){
                    time += "08.00 AM";
                    price += 60.00;
                    session.setAttribute("time", time);
                    session.setAttribute("price", price);
                }else if(psy.equals("Fikri")){
                    time += "10.00 AM";
                    price += 70.00;
                    session.setAttribute("time", time);
                    session.setAttribute("price", price);
                }else if(psy.equals("Baim")){
                    time += "13.00 PM";
                    price += 80.00;
                    session.setAttribute("time", time);
                    session.setAttribute("price", price);
                }else if(psy.equals("Malskuy")){
                    time += "16.00 PM";
                    price += 90.00;
                    session.setAttribute("time", time);
                    session.setAttribute("price", price);
                }                       

            
                String query1 = "INSERT INTO appointments (fullname, age, date, time, psychologist, score, Interpretation, price, userId) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                String query2 = "SELECT * FROM users WHERE username = ?";

               Connection con = DbConn.initializeDatabase();
               PreparedStatement ab = con.prepareStatement(query2);
               ab.setString(1,usname); 
               ResultSet rs = ab.executeQuery();
               PreparedStatement st = con.prepareStatement(query1);
               
               while(rs.next()){
               usId += rs.getInt(1);            
               }
               
               st.setString(1, fname);                          
               st.setInt(2,age);
               st.setString(3, date);
               st.setString(4, time);
               st.setString(5, psy);
               st.setInt(6,scr);
               st.setString(7, intr);
               st.setDouble(8, price);          
               st.setInt(9, usId);
            
            
            st.executeUpdate();
            
            ab.close();
            rs.close();
            st.close();
            con.close();                   
                       
            session.setAttribute("usId", usId);
            response.sendRedirect("User/Payment.jsp");                 
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
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
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
