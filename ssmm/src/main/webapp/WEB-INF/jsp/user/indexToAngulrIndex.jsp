<!DOCTYPE html PUBLIC>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/common/jquery-1.9.0.min.js"></script>
<%-- <%
response.sendRedirect(basePath+"res/otcV2/zwzp/index.html");
%> --%>
<script type="text/javascript">
	$(function() {
		//$("#submit").click(function(){
		//alert("aa");
		var href = "${pageContext.request.contextPath}/static/mstpAngulr/index.html";
		location.href = href;
		/* $("#submit").attr("href",href);
		$("#submit").attr("onclick",'');     
		//激发标签点击事件OVER        
		$("#submit").click("return false");  */
		//});
	})
</script>
</head>
<body>
	<a id="submit" target="_blank"></a>
</body>
</html>