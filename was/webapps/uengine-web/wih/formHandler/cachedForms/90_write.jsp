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

function addItem(num) {
	var itemObj = $("#item_"+num);
	
	if ($(itemObj).next().attr("id")) {
		if ($(itemObj).next().css("display") == "block" || $(itemObj).next().css("display") == "") {
			var end = true;
			$(".ui-state-default").each(function(index, obj) {
				if (index+2 > num && end) {
    		        if ($(obj).css("display") == "none") {
    		        	$(obj).css("display", "block");
    		        	end = false;
    		        }
				}
		   });
			
			if (!end) {
				var prev = "";
				var next = "";
    			$(itemObj).next().each(function(index, obj) {
    				if ($(obj).css("display") == "block" || $(obj).css("display") == "") {
    					prev = $("text_item_"+(num+index+1), obj).val();
    					
    					$("text_item_"+(num+index+1), obj).val(next);
    					
    					next = prev;
    				}
    			});
			}
		} else {
			  $(itemObj).next().css("display", "block");
			  
			  var prev = "";
              var next = "";
              $(itemObj).next().each(function(index, obj) {
                  if ($(obj).css("display") == "block" || $(obj).css("display") == "") {
                      prev = $("text_item_"+(num+index+1), obj).val();
                      
                      $("text_item_"+(num+index+1), obj).val(next);
                      
                      next = prev;
                  }
              });
		}
	} else {
		alert("not item");
	}
	
	var cnt = 1;
	var selectItem = "";
	$(".ui-state-default").each(function(index, obj) {
        if ($(obj).css("display") == "block" || $(obj).css("display") == "") {
        	$("#num_"+(index+1), obj).html(cnt);
            cnt++;
            selectItem = selectItem + (index+1) + ";";
        }
    });
	
	$("#selectitem").val(selectItem);
}

function delItem(item) {
	var itemObj = $("#item_"+item);
	
	var cnt = 0;
	$(".ui-state-default").each(function(index, obj) {
		if ($(obj).css("display") == "block" || $(obj).css("display") == "") {
			cnt++;
		}
	});
	
	if (cnt > 1) {
		$(itemObj).css("display", "none");
		$("#text_item_"+item, itemObj).val("");
	}
	
	cnt = 0;
	var selectItem = "";
	$(".ui-state-default").each(function(index, obj) {
        if ($(obj).css("display") == "block" || $(obj).css("display") == "") {
            cnt = cnt + 1;
            $("#num_"+(index+1), obj).html(cnt);
            selectItem = selectItem + (index+1) + ";";
        }
    });
	
	$("#selectitem").val(selectItem);
}
</script>
<div id="question">
    
<%
java.util.Hashtable selectitem_11 = new java.util.Hashtable();
 selectitem_11.put("id", "selectitem");
 selectitem_11.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:hidden name="selectitem" viewMode="0" attributes="<%=selectitem_11%>" default="1;" />
    <h3 class="docs">Question : 
<%
java.util.Hashtable question_name_0 = new java.util.Hashtable();
 question_name_0.put("id", "question_name");
 question_name_0.put("style", "width:50%");
 question_name_0.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="question_name" viewMode="0" attributes="<%=question_name_0%>" default="" /></h3>
    <ul class="sortable">
        <li class="ui-state-default" id="item_1" style="display:block">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_1">1</span>
                        
 <% 
 java.util.Hashtable rdo_item_1 = new java.util.Hashtable(); 
 rdo_item_1.put("id", "rdo_item_1"); rdo_item_1.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="1" attributes="<%=rdo_item_1%>" default="" />
                        
<%
java.util.Hashtable text_item_1_12 = new java.util.Hashtable();
 text_item_1_12.put("id", "text_item_1");
 text_item_1_12.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_1" viewMode="0" attributes="<%=text_item_1_12%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(1);"><span>add</span></a>
                        <a href="javascript:delItem(1);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_2" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_2">2</span>
                        
 <% 
 java.util.Hashtable rdo_item_2 = new java.util.Hashtable(); 
 rdo_item_2.put("id", "rdo_item_2"); rdo_item_2.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="2" attributes="<%=rdo_item_2%>" default="" />
                        
<%
java.util.Hashtable text_item_2_14 = new java.util.Hashtable();
 text_item_2_14.put("id", "text_item_2");
 text_item_2_14.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_2" viewMode="0" attributes="<%=text_item_2_14%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(2);"><span>add</span></a>
                        <a href="javascript:delItem(2);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_3" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_3">3</span>
                        
 <% 
 java.util.Hashtable rdo_item_3 = new java.util.Hashtable(); 
 rdo_item_3.put("id", "rdo_item_3"); rdo_item_3.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="3" attributes="<%=rdo_item_3%>" default="" />
                        
<%
java.util.Hashtable text_item_3_15 = new java.util.Hashtable();
 text_item_3_15.put("id", "text_item_3");
 text_item_3_15.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_3" viewMode="0" attributes="<%=text_item_3_15%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(3);"><span>add</span></a>
                        <a href="javascript:delItem(3);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_4" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_4">4</span>
                        
 <% 
 java.util.Hashtable rdo_item_4 = new java.util.Hashtable(); 
 rdo_item_4.put("id", "rdo_item_4"); rdo_item_4.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="4" attributes="<%=rdo_item_4%>" default="" />
                        
<%
java.util.Hashtable text_item_4_16 = new java.util.Hashtable();
 text_item_4_16.put("id", "text_item_4");
 text_item_4_16.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_4" viewMode="0" attributes="<%=text_item_4_16%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(4);"><span>add</span></a>
                        <a href="javascript:delItem(4);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_5" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_5">5</span>
                        
 <% 
 java.util.Hashtable rdo_item_5 = new java.util.Hashtable(); 
 rdo_item_5.put("id", "rdo_item_5"); rdo_item_5.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="5" attributes="<%=rdo_item_5%>" default="" />
                        
<%
java.util.Hashtable text_item_5_17 = new java.util.Hashtable();
 text_item_5_17.put("id", "text_item_5");
 text_item_5_17.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_5" viewMode="0" attributes="<%=text_item_5_17%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(5);"><span>add</span></a>
                        <a href="javascript:delItem(5);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_6" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_6">6</span>
                        
 <% 
 java.util.Hashtable rdo_item_6 = new java.util.Hashtable(); 
 rdo_item_6.put("id", "rdo_item_6"); rdo_item_6.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="6" attributes="<%=rdo_item_6%>" default="" />
                        
<%
java.util.Hashtable text_item_6_18 = new java.util.Hashtable();
 text_item_6_18.put("id", "text_item_6");
 text_item_6_18.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_6" viewMode="0" attributes="<%=text_item_6_18%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(6);"><span>add</span></a>
                        <a href="javascript:delItem(6);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_7" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_7">7</span>
                        
 <% 
 java.util.Hashtable rdo_item_7 = new java.util.Hashtable(); 
 rdo_item_7.put("id", "rdo_item_7"); rdo_item_7.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="7" attributes="<%=rdo_item_7%>" default="" />
                        
<%
java.util.Hashtable text_item_7_19 = new java.util.Hashtable();
 text_item_7_19.put("id", "text_item_7");
 text_item_7_19.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_7" viewMode="0" attributes="<%=text_item_7_19%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(7);"><span>add</span></a>
                        <a href="javascript:delItem(7);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_8" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_8">8</span>
                        
 <% 
 java.util.Hashtable rdo_item_8 = new java.util.Hashtable(); 
 rdo_item_8.put("id", "rdo_item_8"); rdo_item_8.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="8" attributes="<%=rdo_item_8%>" default="" />
                        
<%
java.util.Hashtable text_item_8_20 = new java.util.Hashtable();
 text_item_8_20.put("id", "text_item_8");
 text_item_8_20.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_8" viewMode="0" attributes="<%=text_item_8_20%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(8);"><span>add</span></a>
                        <a href="javascript:delItem(8);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_9" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_9">9</span>
                        
 <% 
 java.util.Hashtable rdo_item_9 = new java.util.Hashtable(); 
 rdo_item_9.put("id", "rdo_item_9"); rdo_item_9.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="9" attributes="<%=rdo_item_9%>" default="" />
                        
<%
java.util.Hashtable text_item_9_21 = new java.util.Hashtable();
 text_item_9_21.put("id", "text_item_9");
 text_item_9_21.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_9" viewMode="0" attributes="<%=text_item_9_21%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(9);"><span>add</span></a>
                        <a href="javascript:delItem(9);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="item_10" style="display:none">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_10">10</span>
                        
 <% 
 java.util.Hashtable rdo_item_10 = new java.util.Hashtable(); 
 rdo_item_10.put("id", "rdo_item_10"); rdo_item_10.put("attrid", "TEMP_ATTR_ID"); 
 %> <input:radio name="rdo_item" viewMode="0" value="10" attributes="<%=rdo_item_10%>" default="" />
                        
<%
java.util.Hashtable text_item_10_13 = new java.util.Hashtable();
 text_item_10_13.put("id", "text_item_10");
 text_item_10_13.put("attrid", "TEMP_ATTR_ID"); 
%>
<input:text name="text_item_10" viewMode="0" attributes="<%=text_item_10_13%>" default="" />
                    </td>
                    <td class="gBtn" style="padding-left:5px;" width="100px;">
                        <a href="javascript:addItem(10);"><span>add</span></a>
                        <a href="javascript:delItem(10);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
    </ul>
</div>

<script language="javascript"> 
<!-- 
function valid_check(){ 

	return true; 
} 

//--> 
</script> 