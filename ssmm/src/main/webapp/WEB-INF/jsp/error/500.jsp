<%-- <%@page import="java.io.*"%>
<%@ page language="java" pageEncoding="UTF-8" isErrorPage="true"%>
<%@ page import="org.apache.log4j.Logger"%>
导入标签库
<%@include file="../include/taglib.jsp"%>
<%!private Logger logger = Logger.getLogger(this.getClass().getName() + "(500.jsp)");%>
<%
	if (exception == null) {
		exception = new Exception("未知异常");
	}
	logger.error("", exception);
%>
<!DOCTYPE HTML PUBLIC>
<html>
<head>
<title>${wa:name()}- 系统提示</title>
</head>

<body>
	<div>
		异常信息: <%=exception%>
		<a style="font-weight: bold; cursor: pointer;"
			onclick='{var sta=document.getElementById("exception_stack");sta.style.display= (sta.style.display == "none")? "":"none";}'> &gt;&gt; </a>

		<textarea id="exception_stack" style="display: none; height: 300px; width: 98%; word-spacing: normal; white-space: pre; clear: none;"
			onfocus="this.select()" title="Ctrl+C 复制内容">    
			<%
		    	try {
		    		PrintWriter printWriter = new PrintWriter(out);
		    		exception.printStackTrace(printWriter);
		    		out.println("=======================  request envements =======================");
		    		out.println("contextPath: " + request.getContextPath());
		    		out.println("method: " + request.getMethod());
		    		out.println("queryString: " + request.getQueryString());
		    		out.println("requestURI: " + request.getRequestURI());
		    		out.println("pathInfo: " + request.getPathInfo());
		    		out.println("==================================================================");
		    	} catch (Exception e) {
		    		out.println(e);
		    	}
		    %>
    	</textarea>

	</div>
</body>
</html> --%>