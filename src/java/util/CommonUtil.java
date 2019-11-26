 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 *
 * @author Mayur
 */
public class CommonUtil {

    public Properties getPropertySourceHolder(String fileName) throws IOException {

        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        InputStream input = classLoader.getResourceAsStream("conf/" + fileName);

        Properties properties = new Properties();
        properties.load(input);

        return properties;
    }
    
    /**
     * 
     * @param fileName  Name of the Properties File To Load
     * @param propertyName  
     * @param propertyVal
     * @throws IOException 
     */
    public void setProperty(String fileName, String propertyName, String propertyVal) throws IOException {

        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        InputStream input = classLoader.getResourceAsStream("conf/" + fileName);
        
        

        Properties properties = new Properties();
//        properties.load(input);

        properties.setProperty(propertyName, propertyVal);
    }
}
