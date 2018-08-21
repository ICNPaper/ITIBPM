<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<style>
.sortable, #sortable2 { list-style-type: none; margin: 0; padding: 0; zoom: 1; }
.sortable li, #sortable2 li { margin: 0 5px 5px 5px; padding: 3px; width: 90%; }
</style>
<script type="text/javascript">
$(document).ready(function() {
	var itemText = $("#selectitem").val();
	
	var itemArray = itemText.split(";");
	
	for (var i=0; i < itemArray.length; i++) {
		$("#item_"+itemArray[i]).css("display", "block");
	}
});
</script>
<div id="question">
    
 <% 
 java.util.Hashtable selectitem_11 = new java.util.Hashtable(); 
 selectitem_11.put("id", "selectitem"); 
 
 %> 
 <input:hidden name="selectitem" attributes="<%=selectitem_11%>" default="1;" viewMode="<%=InputConstants.VIEW%>" />
    <h3 class="docs">Question : 
 <% 
 java.util.Hashtable question_name_0 = new java.util.Hashtable(); 
 question_name_0.put("id", "question_name"); 
 question_name_0.put("style", "width:50%"); 
 question_name_0.put("viewmode", "1"); 
 
 %> 
 <input:text name="question_name" attributes="<%=question_name_0%>" default="" viewMode="<%=InputConstants.VIEW%>" /></h3>
    <ul class="sortable">
        <li class="ui-state-default" id="item_1" style="display:none">
            <span id="num_1">1</span>
            
 <% 
 java.util.Hashtable rdo_item_1 = new java.util.Hashtable(); 
 rdo_item_1.put("id", "rdo_item_1"); 
 %> <input:radio name="rdo_item" value="1" attributes="<%=rdo_item_1%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_1_12 = new java.util.Hashtable(); 
 text_item_1_12.put("id", "text_item_1"); 
 text_item_1_12.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_1" attributes="<%=text_item_1_12%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_2" style="display:none">
            <span id="num_2">2</span>
            
 <% 
 java.util.Hashtable rdo_item_2 = new java.util.Hashtable(); 
 rdo_item_2.put("id", "rdo_item_2"); 
 %> <input:radio name="rdo_item" value="2" attributes="<%=rdo_item_2%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_2_14 = new java.util.Hashtable(); 
 text_item_2_14.put("id", "text_item_2"); 
 text_item_2_14.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_2" attributes="<%=text_item_2_14%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_3" style="display:none">
            <span id="num_3">3</span>
            
 <% 
 java.util.Hashtable rdo_item_3 = new java.util.Hashtable(); 
 rdo_item_3.put("id", "rdo_item_3"); 
 %> <input:radio name="rdo_item" value="3" attributes="<%=rdo_item_3%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_3_15 = new java.util.Hashtable(); 
 text_item_3_15.put("id", "text_item_3"); 
 text_item_3_15.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_3" attributes="<%=text_item_3_15%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_4" style="display:none">
            <span id="num_4">4</span>
            
 <% 
 java.util.Hashtable rdo_item_4 = new java.util.Hashtable(); 
 rdo_item_4.put("id", "rdo_item_4"); 
 %> <input:radio name="rdo_item" value="4" attributes="<%=rdo_item_4%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_4_16 = new java.util.Hashtable(); 
 text_item_4_16.put("id", "text_item_4"); 
 text_item_4_16.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_4" attributes="<%=text_item_4_16%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_5" style="display:none">
            <span id="num_5">5</span>
            
 <% 
 java.util.Hashtable rdo_item_5 = new java.util.Hashtable(); 
 rdo_item_5.put("id", "rdo_item_5"); 
 %> <input:radio name="rdo_item" value="5" attributes="<%=rdo_item_5%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_5_17 = new java.util.Hashtable(); 
 text_item_5_17.put("id", "text_item_5"); 
 text_item_5_17.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_5" attributes="<%=text_item_5_17%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_6" style="display:none">
            <span id="num_6">6</span>
            
 <% 
 java.util.Hashtable rdo_item_6 = new java.util.Hashtable(); 
 rdo_item_6.put("id", "rdo_item_6"); 
 %> <input:radio name="rdo_item" value="6" attributes="<%=rdo_item_6%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_6_18 = new java.util.Hashtable(); 
 text_item_6_18.put("id", "text_item_6"); 
 text_item_6_18.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_6" attributes="<%=text_item_6_18%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_7" style="display:none">
            <span id="num_7">7</span>
            
 <% 
 java.util.Hashtable rdo_item_7 = new java.util.Hashtable(); 
 rdo_item_7.put("id", "rdo_item_7"); 
 %> <input:radio name="rdo_item" value="7" attributes="<%=rdo_item_7%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_7_19 = new java.util.Hashtable(); 
 text_item_7_19.put("id", "text_item_7"); 
 text_item_7_19.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_7" attributes="<%=text_item_7_19%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_8" style="display:none">
            <span id="num_8">8</span>
            
 <% 
 java.util.Hashtable rdo_item_8 = new java.util.Hashtable(); 
 rdo_item_8.put("id", "rdo_item_8"); 
 %> <input:radio name="rdo_item" value="8" attributes="<%=rdo_item_8%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_8_20 = new java.util.Hashtable(); 
 text_item_8_20.put("id", "text_item_8"); 
 text_item_8_20.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_8" attributes="<%=text_item_8_20%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_9" style="display:none">
            <span id="num_9">9</span>
            
 <% 
 java.util.Hashtable rdo_item_9 = new java.util.Hashtable(); 
 rdo_item_9.put("id", "rdo_item_9"); 
 %> <input:radio name="rdo_item" value="9" attributes="<%=rdo_item_9%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_9_21 = new java.util.Hashtable(); 
 text_item_9_21.put("id", "text_item_9"); 
 text_item_9_21.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_9" attributes="<%=text_item_9_21%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
        <li class="ui-state-default" id="item_10" style="display:none">
            <span id="num_10">10</span>
            
 <% 
 java.util.Hashtable rdo_item_10 = new java.util.Hashtable(); 
 rdo_item_10.put("id", "rdo_item_10"); 
 %> <input:radio name="rdo_item" value="10" attributes="<%=rdo_item_10%>" default="" viewMode="<%=InputConstants.VIEW%>" />
            
 <% 
 java.util.Hashtable text_item_10_13 = new java.util.Hashtable(); 
 text_item_10_13.put("id", "text_item_10"); 
 text_item_10_13.put("viewmode", "1"); 
 
 %> 
 <input:text name="text_item_10" attributes="<%=text_item_10_13%>" default="" viewMode="<%=InputConstants.VIEW%>" />
        </li>
    </ul>
</div>
