package com.lab.epam.logger;

import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;

public class MyLogger {

	public static Logger log = Logger.getLogger(MyLogger.class);
	

	public MyLogger() {
		DOMConfigurator.configure("WEB-INF/Log4j.properties");
	}

}
