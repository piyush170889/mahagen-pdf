/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.DbUtil;

/**
 *
 * @author SAII
 */
public class UserRegister extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String valemail = "", valmobno = "";
        Boolean flag1 = false;

        PrintWriter pw = response.getWriter();
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        String email = request.getParameter("email");
        String mobno = request.getParameter("mob");
        String date = request.getParameter("dob");
        String uname = request.getParameter("uname");
        String gender = request.getParameter("gender");
        String jdate = request.getParameter("jdate");
        String edate = request.getParameter("edate");
        String empcode = request.getParameter("empcode");
        String cpfno = request.getParameter("cpfno");
        
        Boolean flag = false;

        Connection cn = DbUtil.getConnection();
        try {

            //Class.forName("com.mysql.jdbc.Driver");
            //  Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Waste_Management", "root", "root");
                PreparedStatement ps = cn.prepareStatement("insert into user(name, email, password, dob, mob,uname,gender,jdate,edate,empcode,cpfno)values(?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, pass);
                ps.setString(4, date);
                ps.setString(5, mobno);
                ps.setString(6, uname);
                ps.setString(7, gender);
                ps.setString(8, jdate);
                ps.setString(9, edate);
                ps.setString(10, empcode);
                ps.setString(11, cpfno);
                ps.execute();
                
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('User Added!!');");
                pw.println("</script>");

                RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
                rd.include(request, response);

            
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
