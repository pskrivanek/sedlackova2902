<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>

<%!
	String generateItem(String location, String type, boolean selected, String text) {
		StringBuilder str = new StringBuilder();
		str.append("<div class=\"subnavitem");
		if (selected) {
			str.append(" selected");
		}
		str.append("\" onclick=\"window.location='").append(location);
		if (type != null) {
			str.append("?t=").append(type);
		}
		str.append("'\">");
		str.append(text).append("</div>");
		return str.toString();
	}
%>
<%
	String path = (String)request.getAttribute("org.springframework.web.servlet.HandlerMapping.pathWithinHandlerMapping");
	String type = (String) request.getAttribute("type");
%>

<div id="subnavigation">
	<%
		if ("committee.html".equals(path)) {
			out.println(generateItem("committee.html", "i", "i".equals(type), "Identifikační údaje"));
			out.println(generateItem("committee.html", "c", "c".equals(type), "Členové výboru"));
			out.println(generateItem("committee.html", "cc", "cc".equals(type), "Členové kontrolní komise"));
			
		} else if ("contractors.html".equals(path)) {
            out.println(generateItem("contractors.html", "c", "c".equals(type) || type == null, "Kontakty"));
			out.println(generateItem("contractors.html", "l", "l".equals(type), "Seznam dodavatelů"));
			out.println(generateItem("contractors.html", "s", "s".equals(type), "Servis"));
			out.println(generateItem("contractors.html", "p", "p".equals(type), "Platby dodavetelům"));
			//out.println(generateItem("contractors.html", "d", "d".equals(type), "Dluhy"));
      
		} else if ("documents.html".equals(path)) {
            out.println(generateItem("documents.html", "r", "r".equals(type) || type == null, "Stanovy SVJ"));
            out.println(generateItem("documents.html", "e", "e".equals(type) || type == null, "Zápisy SVJ"));
            out.println(generateItem("documents.html", "g", "g".equals(type) || type == null, "GDPR"));
            out.println(generateItem("documents.html", "c", "c".equals(type) || type == null, "Smlouvy"));
            out.println(generateItem("documents.html", "v", "v".equals(type) || type == null, "Vyúčtování - často kladené otázky"));
            out.println(generateItem("documents.html", "h", "h".equals(type) || type == null, "Návody a rady"));
            out.println(generateItem("documents.html", "p", "p".equals(type) || type == null, "Energetický štítek"));
            out.println(generateItem("documents.html", "a", "a".equals(type) || type == null, "Dražba 28.3.2011"));
            out.println(generateItem("documents.html", "s", "s".equals(type) || type == null, "Shromáždění SVJ 24.11.2011"));
            out.println(generateItem("documents.html", "z", "z".equals(type) || type == null, "Shromáždění SVJ 11.6.2012"));
            out.println(generateItem("documents.html", "x", "x".equals(type) || type == null, "Mimořádná schůze SVJ 20.3.2013"));
            out.println(generateItem("documents.html", "t", "t".equals(type) || type == null, "Shromáždění SVJ 25.9.2013"));
            out.println(generateItem("documents.html", "f", "f".equals(type) || type == null, "Shromáždění SVJ 25.6.2014"));
            out.println(generateItem("documents.html", "j", "j".equals(type) || type == null, "Shromáždění SVJ 2.6.2015"));
            out.println(generateItem("documents.html", "k", "k".equals(type) || type == null, "Shromáždění SVJ 9.6.2016"));
            out.println(generateItem("documents.html", "i", "i".equals(type) || type == null, "Shromáždění SVJ 6.6.2017"));
            out.println(generateItem("documents.html", "w", "w".equals(type) || type == null, "Shromáždění SVJ 4.6.2018"));
            out.println(generateItem("documents.html", "q", "q".equals(type) || type == null, "Shromáždění SVJ 5.6.2019"));
		}       
	%>
</div>

