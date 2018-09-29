<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<p>
	차량번호 :&nbsp;
<%
java.util.Hashtable carno_0 = new java.util.Hashtable();
 carno_0.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="carno" viewMode="0" attributes="<%=carno_0%>" default="" /></p>
<p>
	보증기한 만료여부 :&nbsp;
<%
java.util.Hashtable yesno_1 = new java.util.Hashtable();
 yesno_1.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="yesno" viewMode="0" attributes="<%=yesno_1%>" default="" /></p>

<script language="javascript"> 
<!-- 
function valid_check(){ 

	return true; 
} 

//--> 
</script> 