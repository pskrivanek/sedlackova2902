/*
 * Created on 12.1.2005
 *
 * To change the template for this generated file go to
 * Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
package com.sedlackova2902.svj.common;

import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author Brain Systems
 *
 * To change the template for this generated type comment go to
 * Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
public class HttpDebugHelper {

	public static String getHtmlRequestParameters(HttpServletRequest request) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("<b>Request parameters</b>\n<table border=\"1\">\n");
        Enumeration parnames = request.getParameterNames();
        if (parnames.hasMoreElements()) {
            buffer.append("<tr><th>Key</th><th>Val</th></tr>\n");
        }
		while(parnames.hasMoreElements()) {
			String key = (String)parnames.nextElement();
			String[] val = request.getParameterValues(key);
			for (int i=0; i<val.length; i++) {
				buffer.append("<tr><td>").append(key).append("</td><td>").append(val[i]).append("</td></tr>\n");				
			}
		}
		buffer.append("</table>");
		return buffer.toString();
	}
	
	public static String getHtmlRequestAttributes(HttpServletRequest request) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("<b>Request atributes</b>\n<table border=\"1\">\n");
		Enumeration attrnames = request.getAttributeNames();
        if (attrnames.hasMoreElements()) {
            buffer.append("<tr><th>Key</th><th>Class</th><th>Val</th></tr>\n");
        }
		while(attrnames.hasMoreElements()) {
			String key = (String)attrnames.nextElement();
			Object val = request.getAttribute(key);
			buffer.append("<tr><td>").append(key).append("</td>");
			if (val==null) {
				buffer.append("<td></td><td></td>");
			} else {
				buffer.append("<td>").append(val.getClass()).append("</td>");
                buffer.append("<td>").append(val).append("</td>");
			}
			buffer.append("</tr>\n");			
		}
		buffer.append("</table>\n");
		return buffer.toString();
	}

	public static String getHtmlSessionAttributes(HttpServletRequest request) {
		return getHtmlSessionAttributes(request.getSession());
	}
	public static String getHtmlSessionAttributes(HttpSession session) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("<b>Session atributes</b>\n<table border=\"1\">\n");
		Enumeration attrnames = session.getAttributeNames();
        if (attrnames.hasMoreElements()) {
            buffer.append("<tr><th>Key</th><th>Class</th><th>Val</th></tr>\n");
        }
		while(attrnames.hasMoreElements()) {
			String key = (String)attrnames.nextElement();
			Object val = session.getAttribute(key);
            buffer.append("<tr><td>").append(key).append("</td>");
            if (val==null) {
                buffer.append("<td></td><td></td>");
            } else {
                buffer.append("<td>").append(val.getClass()).append("</td>");
                buffer.append("<td>").append(val).append("</td>");
            }
            buffer.append("</tr>\n");         
		}
		buffer.append("</table>\n");
		return buffer.toString();
	}

}
