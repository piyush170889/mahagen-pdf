/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DbUtil;
import static util.DbUtil.getConnection;
import util.PDFConstants;

/**
 *
 * @author Piyush
 */
public class DeleteFile extends HttpServlet {

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
        PrintWriter out = response.getWriter();

        DbUtil dbUtil = new DbUtil();

        //Start Transaction
        dbUtil.executeQuery("START TRANSACTION");

        try {
            String fileToDelete = request.getParameter("fileToDelete");
            System.out.println("fileToDelete = " + fileToDelete);

            String deleteFilePath = PDFConstants.getFILE_REPOSITORY() + "/" + fileToDelete;
            System.out.println("deleteFilePath = " + deleteFilePath);

            //Delete File Data From DB
            Connection cn = DbUtil.getConnection();

            PreparedStatement ps = null;
            ps = cn.prepareStatement("select idfiles from files1 where savedFileName=?");
            ps.setString(1, fileToDelete);
            ResultSet rs = ps.executeQuery();
            
            int idFiles = 0;
            if (rs.next()) {
                idFiles = rs.getInt("idfiles");
            } else {
                throw new Exception("No Record Found For Given FileName");
            }

            ps = cn.prepareStatement("delete from files1 where idfiles=?");
            ps.setInt(1, idFiles);
            ps.executeUpdate();
            ps.close();

            //Delete File From Disk
            File fileToDeleteObj = new File(deleteFilePath);
            if (fileToDeleteObj.delete()) {

                //Commit Transaction
                dbUtil.executeQuery("COMMIT");

                out.println("<script type=\"text/javascript\">");
                out.println("alert('File Deleted SuccessFully..!');");
                out.println("</script>");
            } else {
                throw new Exception("No Such File Present");
            }
        } catch (Exception e) {

            //Rollback Transaction
            dbUtil.executeQuery("ROLLBACK");

            e.printStackTrace();

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Failed To Delete File..!');");
            out.println("</script>");
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher("Browse.jsp");
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
