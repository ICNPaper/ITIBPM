
var changeUserList = function(targetId, isMultiple, instanceName, returnValue, isApproval) {
	//var res = unescape(decodeURIComponent(returnValue));
	var resultArray = eval(returnValue);
	var oTable = document.getElementById(targetId);
	
	formatTable(oTable);
	
	var inputType = isMultiple ? "checkbox" : "radio"; 
	var inputName = (instanceName) ? instanceName : "chkUser";
	
	for (var i = 0; i < resultArray.length; i++) {
		var resultRow = resultArray[i];
		var row = appendRow(oTable);

		var rowId = resultRow.code;
		var rowName = unescape(decodeURIComponent(resultRow.name));
		var deptName = unescape(decodeURIComponent(resultRow.partname));
		var jikName = unescape(decodeURIComponent(resultRow.jikname));
		
		row.id = rowId;
		var rowClass = getCrossClassName(i, "portlet-section-body", "portlet-section-alternate");
		row.className = rowClass;

		addEventWithFunctionString(row, "mouseover", "document.getElementById('" + rowId + "').className = '" + rowClass + "-hover'");
		addEventWithFunctionString(row, "mouseout", "document.getElementById('" + rowId + "').className = '" + rowClass + "'");
		
		var cell = appendCell(row);
		var input = null;
		
		if (document.all) {
			var createString = "<input name='" + inputName + "' type='" + inputType + "' ";
			if (!isMultiple && !isApproval) {
				createString += " onclick='addUser(); window.top.onOk(selectedOrganizationList, window.top.opener.inputName); window.close();' ";
			}
			createString += " />";
			input = document.createElement(createString);
		} else {
			input = document.createElement("input");
			input.name = inputName;
			input.type = inputType;
			
			if (!isMultiple && !isApproval) {
				input.onclick = function() { 
						addUser();
						onOk(selectedOrganizationList, window.top.opener.inputName); 
						window.close();
				}
			}
		}
		
		input.id = rowId;
		input.value = "id=" + rowId + ";name=" + rowName + ";jikName=" + jikName;
		cell.appendChild(input);
		
		if (!isMultiple && i == 0) {
			input.checked = true;
		}
		
		cell = appendCell(row);
		var codeLabel = document.createElement("label");
		codeLabel.htmlFor = rowId;
		codeLabel.innerHTML = rowId;
		codeLabel.style.cursor = "pointer";
		cell.appendChild(codeLabel);
		
		cell = appendCell(row);
		var nameLabel = document.createElement("label");
		nameLabel.htmlFor = rowId;
		nameLabel.innerHTML = rowName;
		nameLabel.style.cursor = "pointer";
		cell.appendChild(nameLabel);
		
		cell = appendCell(row);
		cell.innerHTML = (deptName).encodeHtml();
		
		cell = appendCell(row);
		cell.innerHTML = jikName;
	}

	if (!isMultiple) {
		addUser();
	}
}

function getUserList(type, value, targetId, isMultiple, instanceName, isApproval) {
	if (
			(type != null && type != "")
			&& (value != null && value != "")
	) {
		type = (type + "").encodeURI();
		value = (value + "").encodeURI();
		
		var url = WEB_CONTEXT_ROOT + "/userList";
		var param = "column=" + type + "&key=" + value;
		submitAjaxServlet(
				url,
				"Post",
				function(returnValue)
				{
					changeUserList(targetId, isMultiple, instanceName, returnValue, isApproval);
				},
				param
		);
	} else {
		formatTable(document.getElementById(targetId));
	}
}

