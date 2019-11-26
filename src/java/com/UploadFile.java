/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import util.PDFConstants;
import util.DbUtil;

/**
 *
 * @author sur00744
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1000,
        maxFileSize = 1024 * 1024 * 1000,
        maxRequestSize = 1024 * 1024 * 1000)
public class UploadFile extends HttpServlet {

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

        try {
//           MultipartRequest m=new MultipartRequest(request,PDFConstants.FILE_REPOSITORY);

            String fname = null, temp;//=m.getParameter("fname");
            String empcode = request.getParameter("empcode");
            String cpfno = request.getParameter("cpfno");
//            Enumeration files = m.getFileNames();
//            while (files.hasMoreElements()) {
//                temp = (String) files.nextElement();
//                fname = m.getFilesystemName(temp);
//            }

            Connection cn = DbUtil.getConnection();

            for (Part part : request.getParts()) {

                fname = getFileName(part);
                System.out.println("fname = " + fname);

                if (fname != null) {

                    String[] fnameSplitArr = fname.split("\\.");
                    System.out.println("fnameSplitArr = " + fnameSplitArr);
                    String fileNameToSave = fnameSplitArr[0] + "_" + new Date().getTime() + "." + fnameSplitArr[1];

                    String fileResourceSavePath = PDFConstants.getFILE_REPOSITORY() + "\\" + fileNameToSave;
                    System.out.println("Uploading to = " + fileResourceSavePath);
                    part.write(fileResourceSavePath);

                    PreparedStatement ps = cn.prepareStatement("insert into files1"
                            + "(empcode, filename, savedFileName, cpfno) values(?,?,?,?)");
                    ps.setString(1, empcode);
                    ps.setString(2, fname);
                    ps.setString(3, fileNameToSave);
                    ps.setString(4, cpfno);
                    ps.execute();
                    ps.close();

                    System.out.println("Org. Filename=" + fname + "  empcode=" + empcode
                            + ", cpfno = " + cpfno + ", Saved FileName = " + fileNameToSave);
                }
            }

            out.println("<script type=\"text/javascript\">");
            out.println("alert('File Uploaded..!');");
            out.println("</script>");

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Failed To Upload File!');");
            out.println("</script>");
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher("Upload.jsp");
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

    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return null;
    }
}
