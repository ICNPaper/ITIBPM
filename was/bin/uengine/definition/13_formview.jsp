<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<p>
	Issue Title : 
 <% 
 java.util.Hashtable fld_isu_title_5 = new java.util.Hashtable(); 
 fld_isu_title_5.put("size", "50"); 
 
 %> 
 <input:text name="fld_isu_title" attributes="<%=fld_isu_title_5%>" default="" viewMode="<%=InputConstants.VIEW%>" /></p>
<p>
	Issue Class : 
 <% 
 java.util.Hashtable fld_isu_cls_0 = new java.util.Hashtable(); 
 java.util.List fld_isu_cls_1 = new java.util.Vector(); 
 java.util.List fld_isu_cls_2 = new java.util.Vector(); 
 fld_isu_cls_1.add("Software"); fld_isu_cls_2.add("sw"); 
 fld_isu_cls_1.add("Hardware"); fld_isu_cls_2.add("hw"); 
 fld_isu_cls_1.add("Etc"); fld_isu_cls_2.add("etc"); 
 
 %> 
 <% 
 String[] fld_isu_cls_3 = new String[1]; 
 fld_isu_cls_3[0] = "sw"; 
 %> 
 <input:select name="fld_isu_cls" defaults="<%=fld_isu_cls_3%>" optionLabels="<%=fld_isu_cls_1%>" optionValues="<%=fld_isu_cls_2%>" attributes="<%=fld_isu_cls_0%>" multiple="false" viewMode="<%=InputConstants.VIEW%>"  /> </p>
<p>
	Issue Note :
 <% 
 java.util.Hashtable fld_isu_note_4 = new java.util.Hashtable(); 
 fld_isu_note_4.put("cols", "80"); 
 fld_isu_note_4.put("rows", "10"); 
 
 %> 
 <input:textarea name="fld_isu_note" attributes="<%=fld_isu_note_4%>" default="" viewMode="<%=InputConstants.VIEW%>" /></p>
