<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>
<%@ page import="com.sedlackova2902.svj.common.HttpDebugHelper" %>
<%!
	String getButtonAttrs(boolean active, boolean access, String action) {
		String st = "class=\"oam_tab";
		if (!access) {
			return "class=\"oam_tab\"";
		}
		if (active) {
			return "class=\"oam_tab oam_tab_active\" onclick=\"" + action + "\"";
		}
		return "class=\"oam_tab oam_tab_std\" onclick=\"" + action + "\"";
	}

	String getSpanClass(boolean access) {
		return  access ? "button_left" : "button_left oam_noaccess"; 
	}
%>
<%
	String path = (String)request.getAttribute("org.springframework.web.servlet.HandlerMapping.pathWithinHandlerMapping");
	boolean hasAccess = false;
%>
	<div id="header_bg_ri"></div><!-- right aligned background image -->
	<div id="logo"></div>
	<div id="toplevel_nav"><!-- Top level navigation tabs -->	
		<button <%= getButtonAttrs(path.equals("homepage.html"), true, "window.location.href='homepage.html'") %>>
			<span class="<%= getSpanClass(true) %>"><img src="img/icons/home_24.png"/><spring:message code="menu.introduction"/></span>
		</button>
		<button <%= getButtonAttrs(path.equals("noticeboard.html"), true, "window.location.href='noticeboard.html'") %>>
			<span class="<%= getSpanClass(true) %>"><img src="img/icons/notice_board_24.png"/><spring:message code="menu.noticeBoard"/></span>
		</button>
		<button <%= getButtonAttrs(path.equals("committee.html"), true, "window.location.href='committee.html'") %>>
			<span class="<%= getSpanClass(true) %>"><img src="img/icons/briefcase_24.png"/><spring:message code="menu.committee"/></span>
		</button>
		<button <%= getButtonAttrs(path.equals("documents.html"), true, "window.location.href='documents.html'") %>>
			<span class="<%= getSpanClass(true) %>"><img src="img/icons/documents_24.png" /><spring:message code="menu.documents"/></span>
		</button>
		<button <%= getButtonAttrs(path.equals("contractors.html"), true, "window.location.href='contractors.html'") %> >
			<span class="<%= getSpanClass(true) %>"><img src="img/icons/hands_24.gif"/><spring:message code="menu.distributor"/></span>
		</button>
		<button <%= getButtonAttrs(false, true, "window.open('http://forum.sedlackova2902.cz/','forum');") %>>
			<span class="button_left"><img src="img/icons/phpBB.ico"/><spring:message code="menu.forum"/></span>
		</button>
	</div>
	<div id="meta_nav"><!-- Meta Navigation: Search, Help, Logout -->
        <button id="help" class="link"><span>Help</span></button>
        <button id="logout" class="link"><span>Login</span></button>
        <div id="search"><input type="text" id="input_search"></input><button id="btn_search"></button></div>   
	</div>	

