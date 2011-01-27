<%@ include file="../common/include_top.jsp"%>
<script type="text/javascript">
	$("#deleteImg").click(
		function deleteItem(itemIdValue){
			$("#itemId").attr("value", itemIdValue);
			$("#operateForm").attr("action", "<%=request.getContextPath()%>/pages/target_catelog/targetCatelogAction_removeTargetCatelog.action");			
			$("#operateForm").submit();
		}
	)
	
	$("#updateImg").click(
		function updateItem(itemIdValue){
			$("#itemId").attr("value", itemIdValue);
			$("#operateForm").attr("action", "<%=request.getContextPath()%>/pages/target_catelog/targetCatelogAction_toModifyTargetCatelogPage.action");			
			$("#operateForm").submit();
		}
	)
</script>
<div id="content">
<table id="table_center">
	<tr id="table_header">
		<td>序号</td>
		<td>操作</td>
		<td>目标分类名称</td>
		<td>目标分类详情</td>
	</tr>
	
	<s:iterator value="#request.targetCatelogs" status="status">
		<tr>
			<td><s:property value="#status.index+1" /></td>
			<td>
				<img id="deleteImg" src="../../image/delete_button.png" onclick="deleteItem('<s:property value="id" />')"></img>
				<img id="updateImg" src="../../image/update_button.png" onclick="updateItem('<s:property value="id" />')"></img>
			</td>
			<td><s:property value="name" /></td>
			<td><s:property value="catelogDetail" /></td>
		</tr>
	</s:iterator>
</table>
<%@ include file="../common/pagination.jsp"%>
</div>
<s:form id="operateForm">
	<s:hidden id="itemId" name="targetCatelog.id"/>
</s:form>
<s:set name="actionUrl" value="/pages/target_catelog/targetCatelogAction_queryTargetCatelogs.action"/>
<%@ include file="../common/include_bottom.jsp"%>