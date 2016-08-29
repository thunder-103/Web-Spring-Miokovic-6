<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/i18n/langGet.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key='loginPage.title' /></title>
</head>
<body>

		<form id="loginForm" action="j_security_check" method="post">
			<table align="center">
			<c:if test='${not empty param["error"]}'>
 				<tr>
  					<td style="color: red" colspan="2" align="center"><b>
  						<fmt:message key='error.message' /></b>
  					</td>
 				</tr>
 				<tr>
  					<td>&nbsp;</td>
 				</tr>
			</c:if>
				<tr>
					<td><fmt:message key='loginPage.username' /></td>
					<td><input type="text" name="j_username" maxlength="22"/></td>
				</tr>
				<tr>
					<td><fmt:message key='loginPage.password' /></td>
					<td><input type="password" name="j_password" maxlength="22"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="<fmt:message key="loginPage.btnSubmit" />"/></td>
				</tr>
			
			</table>
		</form>
<jsp:include page="/WEB-INF/i18n/langSelect.jsp"/>
</body>
</html>