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
    <input type="hidden" value="1;" name="selectitem" id="selectitem"/>
    <h3 class="docs">Question : <input type="text" value="" id="question_name_1" style="width:50%"></h3>
    <ul class="sortable">
        <li class="ui-state-default" id="item_1" style="display:none">
            <span id="num_1">1</span>
            <input type="radio" value="1" id="rdo_item_1" name="rdo_item"/>
            <input type="text" value="" id="text_item_1" name="text_item_1" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_2" style="display:none">
            <span id="num_2">2</span>
            <input type="radio" value="2" id="rdo_item_2" name="rdo_item"/>
            <input type="text" value="" id="text_item_2" name="text_item_2" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_3" style="display:none">
            <span id="num_3">3</span>
            <input type="radio" value="3" id="rdo_item_3" name="rdo_item"/>
            <input type="text" value="" id="text_item_3" name="text_item_3" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_4" style="display:none">
            <span id="num_4">4</span>
            <input type="radio" value="4" id="rdo_item_4" name="rdo_item"/>
            <input type="text" value="" id="text_item_4" name="text_item_4" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_5" style="display:none">
            <span id="num_5">5</span>
            <input type="radio" value="5" id="rdo_item_5" name="rdo_item"/>
            <input type="text" value="" id="text_item_5" name="text_item_5" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_6" style="display:none">
            <span id="num_6">6</span>
            <input type="radio" value="6" id="rdo_item_6" name="rdo_item"/>
            <input type="text" value="" id="text_item_6" name="text_item_6" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_7" style="display:none">
            <span id="num_7">7</span>
            <input type="radio" value="7" id="rdo_item_7" name="rdo_item"/>
            <input type="text" value="" id="text_item_7" name="text_item_7" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_8" style="display:none">
            <span id="num_8">8</span>
            <input type="radio" value="8" id="rdo_item_8" name="rdo_item"/>
            <input type="text" value="" id="text_item_8" name="text_item_8" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_9" style="display:none">
            <span id="num_9">9</span>
            <input type="radio" value="9" id="rdo_item_9" name="rdo_item"/>
            <input type="text" value="" id="text_item_9" name="text_item_9" viewmode="1" />
        </li>
        <li class="ui-state-default" id="item_10" style="display:none">
            <span id="num_10">10</span>
            <input type="radio" value="10" id="rdo_item_10" name="rdo_item"/>
            <input type="text" value="" id="text_item_10" name="text_item_10" viewmode="1" />
        </li>
    </ul>
</div>