/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author Mayur
 */
public class PDFConstants {

    private static final String CONF_PROPERTY_FILE_NAME = "conf.properties";

    private static final String CONF_FILE_SAVEPATH_KEY = "file.savepath";

//    public static String FILE_REPOSITORY = "F:\\PDF\\docs\\";

    public static String getFILE_REPOSITORY() throws SQLException, IOException {
//        Connection cn = DbUtil.getConnection();
//        PreparedStatement ps = cn.prepareStatement("SELECT * from config where configkey='FILE_REPOSITORY'");
//        ResultSet rs = ps.executeQuery();
//
//        if (rs.next()) {
//            return rs.getString("configvalue");
//        } else {
//            return "";
//        }
        CommonUtil commonUtil = new CommonUtil();
        Properties properties = commonUtil.getPropertySourceHolder("conf.properties");

        String path = properties.getProperty("file.savepath");
        return path;
    }

    public static void setFILE_REPOSITORY(String fileLocation) throws SQLException, IOException {
        //PDFConstants.FILE_REPOSITORY = FILE_LOCATION;
//        Connection cn = DbUtil.getConnection();
//        PreparedStatement ps = cn.prepareStatement("UPDATE config set configvalue=? where configkey='FILE_REPOSITORY'");
//        ps.setString(1, FILE_LOCATION);
//        ps.executeUpdate();

        CommonUtil commonUtil = new CommonUtil();
        commonUtil.setProperty(PDFConstants.CONF_PROPERTY_FILE_NAME,
                PDFConstants.CONF_FILE_SAVEPATH_KEY, fileLocation);

    }

}
