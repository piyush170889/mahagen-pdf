/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DbUtil;

/**
 *
 * @author Mayur
 */
public class ChangeAdminPassword extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        String oldpass = request.getParameter("oldpass");
        String newpass = request.getParameter("newpass");
        String SetPass = null;
        int id = Integer.parseInt(request.getParameter("id"));

        PrintWriter pw = response.getWriter();
        Connection cn = DbUtil.getConnection();

        try {
            PreparedStatement ps = cn.prepareStatement("SELECT * FROM admin WHERE pass=?");
            ps.setString(1, oldpass);

            ps.executeQuery();

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                int adminRecordId = rs.getInt("id");

                String updateAdminRecordSql = "update admin set pass=? where id=?";
                ps = cn.prepareStatement(updateAdminRecordSql);
                ps.setString(1, newpass);
                ps.setInt(2, adminRecordId);

                ps.executeUpdate();

                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Admin Password Updated Successfully!!');");
                pw.println("</script>");
            } else {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Incorrect Old Password!!');");
                pw.println("</script>");
            }
        } catch (Exception e) {
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Error Occured Updating User Password!!');");
            pw.println("</script>");
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher("Settings.jsp");
            rd.include(request, response);
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
            Logger.getLogger(ChangeAdminPassword.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ChangeAdminPassword.class.getName()).log(Level.SEVERE, null, ex);
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
