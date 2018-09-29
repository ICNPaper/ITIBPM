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
var _QUESTION = "";
var _ITEM = "";


$(function() {
	$( ".sortable" ).sortable({
        items: "li:not(.ui-state-disabled)"
    });    
});

function addItem(obj) {
	var objQuestion = $(obj).parent().parent().parent();
	
	var objName = $(obj).attr("name");
	var nameArray = objName.split("_");
	var itemNum = nameArray[nameArray.length-1];
	
	var questionName = objQuestion.attr("id");
	var questionArray = questionName.split("_");
    var questionNum = questionArray[questionArray.length-1];
	
	var count = $("input[name=itemcount]", objQuestion).val();
	var add = $("input[name=itemaddcount]", objQuestion).val();
	
	var addNum = parseInt(add)+1;
	addItemName = questionName + "_item_" + addNum;
	
	var html = "<input type=\"radio\" value=\"\" id=\"rdo_"+addItemName+"\" name=\"rdo_"+addItemName+"\"/>";
	html += "&nbsp;<input type=\"text\" value=\"\" id=\"text"+addItemName+"\" name=\"text"+addItemName+"\"/>";
	html += "&nbsp;<input type=\"button\" value=\"add\" id=\"btnItemAdd_"+addNum+"\" onclick=\"addItem(this);\"/><input type=\"button\" value=\"del\" id=\"btnItemDel_"+addNum+"\" onclick=\"delItem(this)\"/>";
	
	var nextli = $("<li class=\"ui-state-default\" id=\""+addItemName+"\"></li>").insertAfter($(obj).parent());
	
	$(nextli).append(html);

	$("input[name=itemaddcount]", objQuestion).val(addNum);
	$("input[name=itemcount]", objQuestion).val(parseInt(count)+1);
	
	//$("ul > li", objQuestion).each(function (index, obj) {
	//	$("", obj)
	//});
}

function delItem(obj) {
	var objQuestion = $(obj).parent().parent().parent();
	
	var count = $("input[name=itemcount]", objQuestion).val();
	
	if (count > 1) {
		$(obj).parent().remove();
		
		$("input[name=itemcount]", objQuestion).val(parseInt(count)-1);
	}
}
</script>
</head>
<body>
<div id="question_1">
    <h3 class="docs">Question 1 : <input type="text" value="" id="question_name_1"></h3>
    <input type="text" value="1" name="itemcount" />
    <input type="text" value="1" name="itemmaxcount" />
    <ul class="sortable">
        <input:foreach variablename="question_1_item_1">
        <li class="ui-state-default" id="question_1_item_1" name="question_1_item_1">
            <input type="radio" value="" id="rdo_question_1_item_1" name="rdo_question_1_item_1"/>
            <input type="text" value="" id="text_question_1_item_1" name="text_question_1_item_1"/>
            <input type="button" value="add" id="btnItemAdd_1" onclick="addItem(this);"/><input type="button" value="del" id="btnItemDel_1" onclick="delItem(this);"/>
        </li>
        </input:foreach>
    </ul>
</div>
</body>
</html>