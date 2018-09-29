<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<p>
	장애내용:
 <% 
 java.util.Hashtable trouble_desc_4 = new java.util.Hashtable(); 
 trouble_desc_4.put("cols", "80"); 
 trouble_desc_4.put("rows", "5"); 
 
 %> 
 <input:textarea name="trouble_desc" attributes="<%=trouble_desc_4%>" default="" viewMode="<%=InputConstants.VIEW%>" /></p>
<p>
	장애분류:
 <% 
 java.util.Hashtable trouble_class_0 = new java.util.Hashtable(); 
 java.util.List trouble_class_1 = new java.util.Vector(); 
 java.util.List trouble_class_2 = new java.util.Vector(); 
 trouble_class_1.add("시스템 오류"); trouble_class_2.add("system"); 
 trouble_class_1.add("하드웨어 오류"); trouble_class_2.add("hardware"); 
 trouble_class_1.add("개선"); trouble_class_2.add("req"); 
 
 %> 
 <input:select name="trouble_class" optionLabels="<%=trouble_class_1%>" optionValues="<%=trouble_class_2%>" attributes="<%=trouble_class_0%>" multiple="false" viewMode="<%=InputConstants.VIEW%>"  /> </p>
<p>
	처리결과:
 <% 
 java.util.Hashtable trouble_result_5 = new java.util.Hashtable(); 
 trouble_result_5.put("cols", "80"); 
 trouble_result_5.put("rows", "5"); 
 
 %> 
 <input:textarea name="trouble_result" attributes="<%=trouble_result_5%>" default="" viewMode="<%=InputConstants.VIEW%>" /></p>
