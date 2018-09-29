<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<p>
	map <input:calendartag name="ca" objecttype="calendar" viewmode="<%=InputConstants.VIEW%>" ></input:calendartag></p>
<p>
	<input:googlemap name="test" viewmode="<%=InputConstants.VIEW%>" ></input:googlemap></p>
