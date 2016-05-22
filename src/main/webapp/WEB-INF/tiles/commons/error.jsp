<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>
<%@ page isErrorPage="true" %>

<br/>
	<table border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<h2><spring:message code="error.error"/></h2>
			</td>
		</tr>
		<tr>
			<td>
				<p class="content" align="justify">
					<div class="type11pxboldyellow"><spring:message code="error.msg.1" /></div>
				</p>
			</td>
		</tr>

		<%-- TODO only for testing, comment this tr tag --%>
		<tr>
			<td>
				<hr/>
				<p class="content">&nbsp;</p>
					Chyba pouze pro testování

					<p>
						<!-- If there was an error, print it out -->
					</p>
			</td>
		</tr>
	</table>
<br/>
<div class="exceptionStackTrace">
	<pre>
	<%	java.io.PrintWriter pw = new java.io.PrintWriter(out, true);
		exception.printStackTrace(pw);	
	%>
	</pre>
</div>
