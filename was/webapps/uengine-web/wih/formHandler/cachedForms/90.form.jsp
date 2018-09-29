<style>
.sortable, #sortable2 { list-style-type: none; margin: 0; padding: 0; zoom: 1; }
.sortable li, #sortable2 li { margin: 0 5px 5px 5px; padding: 3px; width: 90%; }
</style>
<script type="text/javascript">

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
	
	$("ul > li", objQuestion).each(function (index, obj) {
		$("", obj)
	});
}

function delItem(obj) {
	var objQuestion = $(obj).parent().parent().parent();
	
	var count = $("input[name=itemcount]", objQuestion).val();
	
	if (count > 1) {
		$(obj).parent().remove();
		
		$("input[name=itemcount]", objQuestion).val(parseInt(count)-1);
	}
}

function addQuestion(q_num) {
	alert(q_num);
}
</script>
<div id="question_1" class="ui-widget-content">
    <table cellSpacing="0" cellpadding="0" border="0" width="100%">
        <colgroup>
            <col width="70%"/>
            <col width="30%"/>
        </colgroup>
        <tr>
            <td>
                <h3 class="ui-widget-header">Question 1 : <input type="text" value="" id="question_name_1" style="width:50%"></h3>
            </td>
            <td class="gBtn" style="padding-left:5px;">
                <a href="javascript:addQuestion(1);"><span>add</span></a>
                <a href="javascript:addQuestion(1);"><span>del</span></a>
            </td>
        </tr>
    </table>
    <input type="hidden" value="1" name="itemcount" />
    <ul class="sortable">
        <li class="ui-state-default" id="question_1_item_1">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span name="num">1</span>
                        <input type="radio" value="" id="rdo_question_1_item_1" name="rdo_question_1"/>
                        <input type="text" value="" id="text_question_1_item_1" name="text_question_1_item_1"/>
                    </td>
                    <td class="gBtn">
                        <a href="javascript:addItem(1, 1);"><span>add</span></a>
                        <a href="javascript:delItem(1, 1);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="question_1_item_2">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span name="num">2</span>
                        <input type="radio" value="" id="rdo_question_1_item_2" name="rdo_question_1"/>
                        <input type="text" value="" id="text_question_1_item_2" name="text_question_1_item_2"/>
                    </td>
                    <td class="gBtn">
                        <a href="javascript:addItem(1, 2);"><span>add</span></a>
                        <a href="javascript:delItem(1, 2);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
        <li class="ui-state-default" id="question_1_item_3">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span name="num">3</span>
                        <input type="radio" value="" id="rdo_question_1_item_3" name="rdo_question_1"/>
                        <input type="text" value="" id="text_question_1_item_3" name="text_question_1_item_3"/>
                    </td>
                    <td class="gBtn">
                        <a href="javascript:addItem(1, 3);"><span>add</span></a>
                        <a href="javascript:delItem(1, 3);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
    </ul>
</div>
<br/>
<div id="question_2" class="ui-widget-content">
    <table cellSpacing="0" cellpadding="0" border="0" width="100%">
        <colgroup>
            <col width="70%"/>
            <col width="30%"/>
        </colgroup>
        <tr>
            <td>
                <h3 class="ui-widget-header">Question 1 : <input type="text" value="" id="question_name_1" style="width:50%"></h3>
            </td>
            <td class="gBtn" style="padding-left:5px;">
                <a href="javascript:addQuestion(1);"><span>add</span></a>
                <a href="javascript:addQuestion(1);"><span>del</span></a>
            </td>
        </tr>
    </table>
    <input type="hidden" value="1" name="itemcount" />
    <ul class="sortable">
        <li class="ui-state-default" id="question_2_item_1">
            <table cellSpacing="0" cellpadding="0">
                <tr>
                    <td>
                        <span name="num">1</span>
                        <input type="radio" value="" id="rdo_question_2_item_1" name="rdo_question_1_item_1"/>
                        <input type="text" value="" id="text_question_2_item_1" name="text_question_1_item_1"/>
                    </td>
                    <td class="gBtn">
                        <a href="javascript:addItem(2, 1);"><span>add</span></a>
                        <a href="javascript:delItem(2, 1);"><span>del</span></a>
                    </td>
                </tr>
            </table>
        </li>
    </ul>
</div>