<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<p>
	제목 :&nbsp;
<%
java.util.Hashtable title_0 = new java.util.Hashtable();
 title_0.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="title" viewMode="0" attributes="<%=title_0%>" default="" /></p>
<p>
	&nbsp;</p>
<p>
	내용&nbsp;</p>
<p>
	<input:richtextarea height="300px" name="content" viewmode="0" width="100%"></input:richtextarea></p>

<script language="javascript"> 
<!-- 
function valid_check(){ 

	return true; 
} 

//--> 
</script> 