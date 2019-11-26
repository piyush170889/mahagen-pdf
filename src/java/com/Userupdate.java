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
public class Userupdate extends HttpServlet {

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

        PrintWriter pw = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobno = request.getParameter("mob");
        String date = request.getParameter("dob");
        String uname = request.getParameter("uname");
        String gender = request.getParameter("gender");
        String jdate = request.getParameter("jdate");
        String edate = request.getParameter("edate");
        String empcode = request.getParameter("empcode");
        String cpfno = request.getParameter("cpfno");
        int id = Integer.parseInt(request.getParameter("id"));
        
        Connection cn = DbUtil.getConnection();
        try {

            PreparedStatement ps = cn.prepareStatement("update user set name=?,email=?,dob=?,mob=?,uname=?,gender=?,jdate=?,"
                    + "edate=?,empcode=?,cpfno=? where id=?");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, date);
            ps.setString(4, mobno);
            ps.setString(5, uname);
            ps.setString(6, gender);
            ps.setString(7, jdate);
            ps.setString(8, edate);
            ps.setString(9, empcode);
            ps.setString(10, cpfno);
            ps.setInt(11, id);
            ps.executeUpdate();

            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('User Updated Successfully!!');");
            pw.println("</script>");

            RequestDispatcher rd = request.getRequestDispatcher("User_Mgmt.jsp");
            rd.include(request, response);

        } catch (Exception e) {
            e.printStackTrace();

            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Error Occured Updating User!!');");
            pw.println("</script>");

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
