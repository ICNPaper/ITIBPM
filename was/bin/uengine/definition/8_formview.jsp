<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<p>
	제목 :&nbsp;
 <% 
 java.util.Hashtable title_0 = new java.util.Hashtable(); 
 
 %> 
 <input:text name="title" attributes="<%=title_0%>" default="" viewMode="<%=InputConstants.VIEW%>" /></p>
<p>
	&nbsp;</p>
<p>
	내용&nbsp;</p>
<p>
	<input:richtextarea height="300px" name="content" viewmode="<%=InputConstants.VIEW%>"  width="100%"></input:richtextarea></p>
