/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.PDFConstants;

/**
 *
 * @author sur00744
 */
public class DownloadServlet extends HttpServlet {

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
            throws ServletException, IOException, SQLException {

        String filename = request.getParameter("filename");
        String orgfilename = request.getParameter("orgfilename");
        String filepath = PDFConstants.getFILE_REPOSITORY();
        String fileResourcePath = filepath + "\\" + filename;

        System.out.println("FilePath = " + filepath + ", Filename = " + filename + ", orgfilename = " + orgfilename);

        //try (PrintWriter out = response.getWriter()) {
        //            response.setContentType("APPLICATION/OCTET-STREAM");
        //            response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
        //
        //            //use inline if you want to view the content in browser, helpful for pdf file
        //            //response.setHeader("Content-Disposition","inline; filename=\"" + filename + "\"");
        //            try (FileInputStream fileInputStream = new FileInputStream(filepath + filename)) {
        //                int i;
        //                while ((i = fileInputStream.read()) != -1) {
        //                    out.write(i);
        //                }
        //            }
        //        }
        final int ARBITARY_SIZE = 1048;

        response.setContentType("application/pdf");
        response.setHeader("Content-disposition", "attachment; filename=" + orgfilename);

        try (FileInputStream fileInputStream = new FileInputStream(fileResourcePath);
                OutputStream out = response.getOutputStream()) {

            byte[] buffer = new byte[ARBITARY_SIZE];

            int numBytesRead;
            while ((numBytesRead = fileInputStream.read(buffer)) > 0) {
                out.write(buffer, 0, numBytesRead);
            }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(DownloadServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(DownloadServlet.class.getName()).log(Level.SEVERE, null, ex);
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
