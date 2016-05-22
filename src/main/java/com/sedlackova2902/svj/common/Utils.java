package com.sedlackova2902.svj.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.SocketException;

import javax.servlet.http.HttpServletResponse;

public class Utils {
	private static final org.slf4j.Logger log4j = org.slf4j.LoggerFactory.getLogger(Utils.class);


	public static void downloadFile(HttpServletResponse response, File file, String fileName) throws Exception {
		response.setContentType("application/x-download");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
		OutputStream os = null;
			
		FileInputStream in = null;
		try {
			os = response.getOutputStream();
			in = new FileInputStream(file);
			int bytesRead = 0;
			byte[] buffer = new byte[1024];
			while ((bytesRead = in.read(buffer, 0, 1024)) != -1) {
				os.write(buffer, 0, bytesRead);
			}
		} catch (SocketException se) {
			log4j.warn("Client cancel download " + se);
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (in != null) { in.close(); }
				if (os != null) { os.close(); }
			} catch (IOException se) {
				log4j.warn("Client cancel download " + se);
			}
		}
	}
	
}
