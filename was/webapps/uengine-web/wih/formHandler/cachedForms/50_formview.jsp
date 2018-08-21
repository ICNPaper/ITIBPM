<%@ page pageEncoding="UTF-8" %><%response.setContentType("text/html; charset=UTF-8");%>
<%@include file="../../../common/commons.jsp"%>

<div id="groupArea" style="z-index: 1000">
	<div id="viewGroupArea" style="width: 50%">
		<span>test</span></div>
	<div id="groupMenuArea" style="text-align: right; width: 49%; display: none">
		<a id="sss" style="cursor: pointer">removeGroup</a></div>
</div>
<ul class="ui-sortable" style="border-bottom-style: dotted; border-bottom-color: gray; border-top-color: gray; margin: 0px 0px 5px; border-left-style: dotted; border-top-style: dotted; height: 94px; border-right-color: gray; border-right-style: dotted; border-left-color: gray">
	<li class="ui-state-default" style="z-index: 1000; height: 76px">
		<div id="titleArea">
			<div id="viewTitleArea" style="display: block">
				<span style="font-weight: normal">user</span></div>
		</div>
		<div id="fieldArea" style="display: block">
			<div id="viewFieldArea" style="display: block">
				<div id="rowViewFieldArea">
					<input:finduser multiple="false" name="u" viewmode="<%=InputConstants.VIEW%>" ></input:finduser></div>
			</div>
		</div>
	</li>
</ul>
