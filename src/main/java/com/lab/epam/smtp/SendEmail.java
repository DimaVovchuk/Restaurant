package com.lab.epam.smtp;

import com.lab.epam.logger.MyLogger;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by Dima on 31-May-15.
 */
public class SendEmail {

    public static Properties getProp() {
        Properties props = new Properties();
        try {
            File configFile = new File("D:\\JAVA\\IDE\\eclipse\\workspace\\Task4WebRestourant\\src\\main\\webapp\\WEB-INF\\persistant.xml");
            InputStream stream = new FileInputStream(configFile);
            props.loadFromXML(stream);
        } catch (IOException e) {
            e.printStackTrace();
            MyLogger.log.error(e);
        }
        return props;
    }

    private static Sender sender = new Sender(getProp().getProperty("email.login"), getProp().getProperty("email.password"));

    public static void sender(String subject, String text, String toEmail) {
        sender.send(subject, text, "", toEmail);
    }

}
