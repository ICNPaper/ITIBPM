<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<UL style="BORDER-BOTTOM-STYLE: dotted; BORDER-BOTTOM-COLOR: gray; BORDER-TOP-COLOR: gray; MARGIN: 0px 0px 5px; BORDER-LEFT-STYLE: dotted; BORDER-TOP-STYLE: dotted; HEIGHT: 227px; BORDER-RIGHT-COLOR: gray; BORDER-RIGHT-STYLE: dotted; BORDER-LEFT-COLOR: gray" class=ui-sortable>
<DIV id=groupArea>
<DIV style="WIDTH: 50%" id=viewGroupArea><SPAN></SPAN></DIV>
<DIV style="TEXT-ALIGN: right; WIDTH: 49%; DISPLAY: none" id=groupMenuArea><A style="CURSOR: pointer" id=sss>removeGroup</A></DIV></DIV>
<LI style="HEIGHT: 76px" class=ui-state-default>
<DIV id=titleArea>
<DIV style="DISPLAY: block" id=viewTitleArea><SPAN style="FONT-WEIGHT: normal">홍수 지도</SPAN></DIV></DIV>
<DIV style="DISPLAY: block" id=fieldArea>
<DIV style="DISPLAY: block" id=viewFieldArea>
<DIV id=rowViewFieldArea> <input:googlemap name="map" viewmode="0"></input:googlemap></DIV></DIV></DIV></LI>
<LI style="Z-INDEX: 1000; HEIGHT: 81px" class=ui-state-default>
<DIV id=titleArea>
<DIV style="DISPLAY: block" id=viewTitleArea><SPAN style="FONT-WEIGHT: normal">설명</SPAN></DIV></DIV>
<DIV id=fieldArea>
<DIV style="DISPLAY: block" id=viewFieldArea>
<DIV id=rowViewFieldArea>
<%
java.util.Hashtable c_0 = new java.util.Hashtable();
 c_0.put("style", "WIDTH: 50%");
 c_0.put("id", "c");
 c_0.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="c" viewMode="0" attributes="<%=c_0%>" default="" /></DIV></DIV></DIV></LI>
<LI style="Z-INDEX: 1000; HEIGHT: 76px" class=ui-state-default>
<DIV id=titleArea>
<DIV style="DISPLAY: block" id=viewTitleArea><SPAN style="FONT-WEIGHT: normal">동영상</SPAN></DIV></DIV>
<DIV style="DISPLAY: block" id=fieldArea>
<DIV style="DISPLAY: block" id=viewFieldArea>
<DIV id=rowViewFieldArea> <input:fileupload name="file" viewmode="0" fileclass="general"></input:fileupload></DIV></DIV></DIV></LI></UL>

<script language="javascript"> 
<!-- 
function valid_check(){ 

	return true; 
} 

//--> 
</script> 