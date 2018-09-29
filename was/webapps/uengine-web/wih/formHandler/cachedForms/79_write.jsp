<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<UL style="BORDER-BOTTOM-STYLE: dotted; BORDER-BOTTOM-COLOR: gray; BORDER-TOP-COLOR: gray; MARGIN: 0px 0px 5px; BORDER-LEFT-STYLE: dotted; BORDER-TOP-STYLE: dotted; HEIGHT: 94px; BORDER-RIGHT-COLOR: gray; BORDER-RIGHT-STYLE: dotted; BORDER-LEFT-COLOR: gray" class=ui-sortable>
<DIV id=groupArea>
<DIV style="WIDTH: 50%" id=viewGroupArea><SPAN></SPAN></DIV>
<DIV style="TEXT-ALIGN: right; WIDTH: 49%; DISPLAY: none" id=groupMenuArea><A style="CURSOR: pointer" id=sss>removeGroup</A></DIV></DIV>
<LI style="HEIGHT: 76px" class=ui-state-default>
<DIV id=titleArea>
<DIV style="DISPLAY: block" id=viewTitleArea><SPAN style="FONT-WEIGHT: normal">test</SPAN></DIV></DIV>
<DIV id=fieldArea>
<DIV style="DISPLAY: block" id=viewFieldArea>
<DIV id=rowViewFieldArea> <input:calendartag name="tt" viewmode="0" objecttype="calendar"></input:calendartag></DIV></DIV></DIV></LI></UL>

<script language="javascript"> 
<!-- 
function valid_check(){ 

	return true; 
} 

//--> 
</script> 