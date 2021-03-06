<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/resource/common_html_meat.jsp"%>
<%@ include file="/manage/system/common.jsp"%>
<%@ include file="/resource/common_html_validator.jsp"%>
</head>

<body>
<s:form action="express" namespace="/manage" theme="simple" id="form">

	<table class="table table-bordered">
		<tr style="display: none;">
			<td>id</td>
			<td><s:hidden name="e.id" label="id" id="id"/></td>
		</tr>
		<tr style="background-color: #dff0d8">
			<td colspan="2" style="background-color: #dff0d8;text-align: center;">
				<strong>配送方式编辑</strong>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">编码</td>
			<td style="text-align: left;"><s:textfield name="e.code" data-rule="编码:required;code;length[1~10];" 
					id="code" /></td>
		</tr>
		<tr>
			<td style="text-align: right;">名称</td>   
			<td style="text-align: left;"><s:textfield name="e.name" id="name" data-rule="名称:required;name;length[1~45];" ></s:textfield></td>
		</tr>
		<tr>
			<td style="text-align: right;">费用</td>   
			<td style="text-align: left;"><s:textfield name="e.fee" id="fee" data-rule="费用:required;integer;fee;length[1~5];"></s:textfield></td>
		</tr>
		<tr>
			<td style="text-align: right;">顺序</td>   
			<td style="text-align: left;"><s:textfield name="e.order1" id="order1" data-rule="费用:required;integer;order1;length[1~5];"></s:textfield></td>
		</tr>
		<tr>
			<td style="text-align: center;" colspan="2">
				<s:if test="e.id=='' or e.id==null">
<%-- 					<s:submit method="insert" value="新增" cssClass="btn btn-primary"/> --%>
<%-- 					<s:a method="insert" cssClass="btn btn-success"> --%>
<!-- 						<i class="icon-plus-sign icon-white"></i> 新增 -->
<%-- 					</s:a> --%>
					<button method="express!insert.action" class="btn btn-success">
						<i class="icon-ok icon-white"></i> 新增
					</button>
				</s:if> 
				<s:else>
<%-- 					<s:submit method="update" value="保存" cssClass="btn btn-primary"/> --%>
<%-- 					<s:a method="update" cssClass="btn btn-success"> --%>
<!-- 						<i class="icon-ok icon-white"></i> 保存 -->
<%-- 					</s:a> --%>
					<button method="express!update.action" class="btn btn-success">
						<i class="icon-ok icon-white"></i> 保存
					</button>
				</s:else>
			</td>
		</tr>
	</table>
				
</s:form>		
</body>
</html>
