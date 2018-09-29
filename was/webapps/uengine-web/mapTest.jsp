<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="org.uengine.ui.taglibs.input.InputConstants"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map,java.util.Enumeration"%>
<%@page import="java.util.Iterator,java.util.ArrayList"%>
<%@page import="java.util.List,org.uengine.kernel.*"%>
<%@page import="org.uengine.processmanager.*"%>
<%@ taglib uri="http://www.uengine.org/taglibs/input" prefix="input" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="lib/jquery/importJquery.jsp"%>
<%@include file="lib/google/importGoogleMap.jsp"%>
<script type="text/javascript">
$(document).ready(function() {
	$("#btnurl").click(function(){
		alert(gmap_test.staticMapUrl({"zoom" : "12"}));
		$("#imgTest").attr("src", gmap_test.staticMapUrl({"zoom" : "12"}));
		
		gmap_test.addMark(gmap_test.getLat(), gmap_test.getLng());
	});
});
</script>
</head>
<body>
<input type="button" value="url" id="btnurl"/>
<input:googlemap name="test" viewmode="0"></input:googlemap>

<img src="" id="imgTest"/>
</body>
</html>