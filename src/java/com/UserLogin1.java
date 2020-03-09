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
public class UserLogin1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        PrintWriter pw= response.getWriter();
        
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        System.out.println("email: "+email+"Pass: "+pass);
         int i=0;
        Connection cn= DbUtil.getConnection();
        
        try{
            PreparedStatement ps=cn.prepareStatement("select * from user where uname=? and password=?");
            
            ps.setString(1, email);
            ps.setString(2, pass);
            
            ResultSet rs=ps.executeQuery();
//            int id = 0;
            String empcode = "";
            while(rs.next()){
                i++;
                empcode = rs.getString("empcode");
            }
            
            if(i>0){
                HttpSession session=request.getSession();
                session.setAttribute("uname", email);
                session.setAttribute("empcode", empcode);
               
                    
                    RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp");
                    rd.include(request, response);
            }else {
                    System.out.println("Login Failed");
                    pw.println("<script type=\"text/javascript\">");
                    pw.println("alert('Login Failed..!');");
                    pw.println("</script>");
                    
                    RequestDispatcher rd = request.getRequestDispatcher("UserLogin.jsp");
                    rd.include(request, response);
                }
        }catch(Exception e){
            e.printStackTrace();
        }
                
    }

}
