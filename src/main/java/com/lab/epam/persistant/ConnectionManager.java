package com.lab.epam.persistant;

import com.lab.epam.logger.MyLogger;

import javax.servlet.ServletContext;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionManager {

    private static ConnectionPool instance = null;

    private ConnectionManager() {
    }

    public synchronized static ConnectionPool getConnection() {
        if (instance == null) {
            try {
                instance();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return instance;
    }

    private static void instance() throws SQLException {
        ConnectionPool connectionPool = new ConnectionPool(10);
        instance = connectionPool;
    }

}
