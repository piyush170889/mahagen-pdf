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
import java.util.ArrayList;
import java.util.Collections;



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
public class OfficeList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter pw = response.getWriter();

        Connection cn = DbUtil.getConnection();

        try {
            PreparedStatement ps = cn.prepareStatement("select * from list_offices");

            ArrayList<String> officeList = new ArrayList<String>();
//            Gson gson = new Gson();
            
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                officeList.add(rs.getString("name"));
            }
          
            Collections.sort(officeList);
            
            HttpSession session = request.getSession();
            session.setAttribute("officeList", officeList);
//            request.setAttribute("officeList, officeList);
            RequestDispatcher rd = request.getRequestDispatcher("Upload.jsp");
            rd.forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
