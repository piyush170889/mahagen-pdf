package com;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.DbUtil;
import util.PDFConstants;

/**
 *
 * @author SAII
 */
public class UserDownloadFile extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private Object pw;
    int hitCount = 0;
    // int id = 0;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //String id = request.getParameter("id");
        // System.out.println("file id" + id);
        String filename = "";

        String txt1 = "";
        String ac = "";
        int dot = 0;
        String filebase = "";
        String decode = "";

        int i = 0;
        HttpSession session = request.getSession();

        String email = (String) session.getAttribute("uname");
        String id = (String) session.getAttribute("id");
        System.out.println("com.UserDownloadFile.doGet() id = " + id + ", email  = " + email);

        PrintWriter pw = response.getWriter();

        Connection cn = DbUtil.getConnection();

        try {
            PreparedStatement ps = cn.prepareStatement("select *  from file where id=?");

            ps.setString(1, id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                filename = rs.getString("filename");
                txt1 = rs.getString("ext");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        dot = filename.lastIndexOf('.');
        filebase = (dot == -1) ? filename : filename.substring(0, dot);
        decode = filebase + ".des";
        String fileextension = (dot == -1) ? "" : filename.substring(dot + 1);
        String fname = filebase + "." + txt1;
        //fname="demo.txt";
        //filename=demo.des      
        try {

//            new AESFileDecryption().dodecode("d:/upload/" + filename, "d:/upload/" + fname, txt1);
        } catch (Exception e) {
            e.printStackTrace();
        }

        //filename=demo.des 
        //decode=demo.txt
        System.out.println("file name is " + fname);
        System.out.println("Download from d:/upload/");

//        String filepath = "F:\\PDF\\docs\\";
//        String filepath;
        try {
            String filepath = PDFConstants.getFILE_REPOSITORY() + "\\";
            response.setContentType("APPLICATION/OCTET-STREAM");
            response.setHeader("Content-Disposition", "attachment; filename=\""
                    + fname + "\"");

            FileInputStream fileInputStream = new FileInputStream(filepath
                    + fname);

            i = 0;
            while ((i = fileInputStream.read()) != -1) {
                out.write(i);
            }
            fileInputStream.close();
            out.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserDownloadFile.class.getName()).log(Level.SEVERE, null, ex);
        }

        RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp");
        rd.forward(request, response);

    }

}
