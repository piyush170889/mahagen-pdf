/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author SAII
 */
//Health Care Monitoring System
public class DbUtil {

    private static Connection connection = null;

    public static Connection getConnection() throws IOException, SQLException {
        if (connection != null && connection.isClosed() == false) {
            return connection;
        } else {
            try {
                CommonUtil commonUtil = new CommonUtil();
                Properties properties = commonUtil.getPropertySourceHolder("db.properties");

                String driver = "com.mysql.jdbc.Driver";
                String url = properties.getProperty("db.url");
                String user = properties.getProperty("db.username");
                String password =  properties.getProperty("db.password");
                
                System.out.println("url = " + url + ", user = " + user + ", password = " + password);
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return connection;
        }
    }

    public boolean executeQuery(String sql) {

        boolean isExecuted = false;

        try {

            Connection cn = getConnection();
            PreparedStatement ps = null;

            ps = cn.prepareStatement(sql);
            ps.execute();
            ps.close();

            isExecuted = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isExecuted;
    }

}
