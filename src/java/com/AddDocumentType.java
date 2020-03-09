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
public class AddDocumentType extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter pw = response.getWriter();
        Connection cn = DbUtil.getConnection();
        String documentType = request.getParameter("DocumentType");

        try {
            PreparedStatement ps = cn.prepareStatement("INSERT INTO list_offices(id,name) VALUES (DEFAULT,?)");
            ps.setString(1, documentType);
            ps.execute();
            ps.close();

            HttpSession session = request.getSession();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Added..!');");
            pw.println("</script>");
//            request.setAttribute("officeList, officeList);
            RequestDispatcher rd = request.getRequestDispatcher("Settings.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
