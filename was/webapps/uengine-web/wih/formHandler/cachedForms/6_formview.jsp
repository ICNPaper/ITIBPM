<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<p>
	차량번호 :&nbsp;
 <% 
 java.util.Hashtable carno_0 = new java.util.Hashtable(); 
 
 %> 
 <input:text name="carno" attributes="<%=carno_0%>" default="" viewMode="<%=InputConstants.VIEW%>" /></p>
<p>
	보증기한 만료여부 :&nbsp;
 <% 
 java.util.Hashtable yesno_1 = new java.util.Hashtable(); 
 
 %> 
 <input:text name="yesno" attributes="<%=yesno_1%>" default="" viewMode="<%=InputConstants.VIEW%>" /></p>
