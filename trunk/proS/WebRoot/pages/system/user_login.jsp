<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
System.out.print(path);
%>
<html>
<head>
<style>
body {
	text-align: center;
}

#center {
	text-align:center;
	MARGIN-RIGHT: auto;
	MARGIN-LEFT: auto;
	height: 400px;
	width: 300px;
	vertical-align: middle;
	border: solid;
}

#loginDiv {
	text-align: center;
}

table {
	text-align: center;
}

</style>
</head>
<body>
<div id="center">
<table>
	<s:form namespace="/system" action="userAction" validate="true">
		
			<tr>
				<td>用户名:</td>
				<td><s:textfield name="user.username" /></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><s:password name="user.password" /></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<s:submit method="login" align="left" type="image" src="../../image/login_button.gif" />
					<s:submit method="toRegisterPage" align="right" type="image" src="../../image/register_button.gif" />
				</td>
			</tr>
		
	</s:form>
	</table>
</div>
</body>
</html>