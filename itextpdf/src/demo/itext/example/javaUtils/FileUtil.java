package demo.itext.example.javaUtils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.apache.juli.logging.Log;
import org.apache.juli.logging.LogFactory;

public final class FileUtil {
    private static final Log LOG = LogFactory.getLog(FileUtil.class);
    
    public static String loadJsonString(String file) {      
        try {
            ClassLoader classloader = Thread.currentThread().getContextClassLoader();
            InputStream inputStream = classloader.getResourceAsStream("json-mock/" + file);
            return IOUtils.toString(inputStream, "UTF-8");
        } catch (IOException e) {
            
        } 
        return null;
    }

}
