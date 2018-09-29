<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="lib/jquery/importJquery.jsp"%>
<%@include file="common/styleHeader.jsp"%>
<style>
.sortable, #sortable2 { list-style-type: none; margin: 0; padding: 0; zoom: 1; }
.sortable li, #sortable2 li { margin: 0 5px 5px 5px; padding: 3px; width: 90%; }
</style>
<title>Survey</title>
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
</head>
<body>
<div id="question">
    <input type="hidden" value="1;" name="selectitem" id="selectitem"/>
    <h3 class="docs">Question : <input type="text" value="" id="question_name_1" style="width:50%"></h3>
    <ul class="sortable">
        <li class="ui-state-default" id="item_1" style="display:block">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span id="num_1">1</span>
                        <input type="radio" value="1" id="rdo_item_1" name="rdo_item"/>
                        <input type="text" value="" id="text_item_1" name="text_item_1"/>
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
                        <input type="radio" value="2" id="rdo_item_2" name="rdo_item"/>
                        <input type="text" value="" id="text_item_2" name="text_item_2"/>
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
                        <input type="radio" value="3" id="rdo_item_3" name="rdo_item"/>
                        <input type="text" value="" id="text_item_3" name="text_item_3"/>
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
                        <input type="radio" value="4" id="rdo_item_4" name="rdo_item"/>
                        <input type="text" value="" id="text_item_4" name="text_item_4"/>
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
                        <input type="radio" value="5" id="rdo_item_5" name="rdo_item"/>
                        <input type="text" value="" id="text_item_5" name="text_item_5"/>
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
                        <input type="radio" value="6" id="rdo_item_6" name="rdo_item"/>
                        <input type="text" value="" id="text_item_6" name="text_item_6"/>
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
                        <input type="radio" value="7" id="rdo_item_7" name="rdo_item"/>
                        <input type="text" value="" id="text_item_7" name="text_item_7"/>
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
                        <input type="radio" value="8" id="rdo_item_8" name="rdo_item"/>
                        <input type="text" value="" id="text_item_8" name="text_item_8"/>
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
                        <input type="radio" value="9" id="rdo_item_9" name="rdo_item"/>
                        <input type="text" value="" id="text_item_9" name="text_item_9"/>
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
                        <input type="radio" value="10" id="rdo_item_10" name="rdo_item"/>
                        <input type="text" value="" id="text_item_10" name="text_item_10"/>
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
</body>
</html>