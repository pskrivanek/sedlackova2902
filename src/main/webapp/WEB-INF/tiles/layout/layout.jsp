<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>
<%@ page import="com.sedlackova2902.svj.common.HttpDebugHelper" %>
<%
	String kontext = request.getContextPath();
	//long startPageTs_layoutmain = JSPLogger.startPage("layoutmain");
	try {
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Cache-Control" content="no-cache" />
	<meta http-equiv="Expires" content="0" />
    <meta name="google-site-verification" content="n8fd-2OSNi4SYGTodZO09_yILIYiVpa-jFPHOqlz00I" />
	<meta name="description" content="Informační portál společenství vlastníků bytového domu Sedláčkova 2902, Brno 62800">
	<meta name="keywords" content="Společenství vlastníků jednotek Sedláčkova čp. 2902, SVJ Sedláčkova 2902, oficiální stránky SVJ, bytový dům Na Panence, bytový dům NaPanence, Sedláčkova 2902/12, Sedláčkova 2902/14, Sedláčkova 2902/16, Sedláčkova 2902/18, Sedláčkova 2902/20, Sedláčkova 2902/22, Sedláčkova 2902/24, Sedláčkova 2902/26, Sedláčkova 2902/28, Sedláčkova 2902/30, Sedláčkova 2902/32, Sedláčkova 2902/34">
	<title><spring:message code="page.title"/> - <tiles:insertAttribute name="title" ignore="true" /></title>
	<link rel="stylesheet" href="<%= kontext + "/css/svj_003.css"%>" type="text/css" />
	<!-- kalendar stylesheet -->
	<link rel="stylesheet" href="<%=kontext + "/include/calendar/calendar.css"%>" type="text/css" media="all" />
	<link rel="shortcut icon" href="<%=kontext + "/img/icons/favicon.ico" %>" type="image/vnd.microsoft.icon"> 
	<link rel="icon" href="<%=kontext + "/img/icons/favicon.ico" %>" type="image/vnd.microsoft.icon">
</head>
<body>
	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-20231900-1']);
	  _gaq.push(['_trackPageview']);

	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>
	<div id="maincontent">
		<div id="header">
			<tiles:insertAttribute name="navigation" />
		</div>
		<div id="details" >			
			<div class="details_main">
				<tiles:insertAttribute name="body" />			
			</div>
			<%--
out.println(HttpDebugHelper.getHtmlRequestParameters(request));
out.println(HttpDebugHelper.getHtmlRequestAttributes(request));
out.println(HttpDebugHelper.getHtmlSessionAttributes(request));
--%>
		</div>		
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>
<%
	} catch (Exception e) {
		//JSPLogger.error("layoutmain", e.getMessage(), e);
		throw e;
	} finally {
		//JSPLogger.endPage("layoutmain", startPageTs_layoutmain);
		//JSPLogger.debug("layoutmain", "xxxxxxxxxxxxxxxxxxxxxxxxx");
	}
%>
