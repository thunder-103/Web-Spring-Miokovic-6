<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/i18n/langGet.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css" title="currentStyle">
	@import "css/jquery.dataTables.css";

</style>

<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
    	oTable = $('#newTaskTable').dataTable();
    	oTable = $('#obranaTable').dataTable();
    
} );
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css"/>" />
<title><fmt:message key='displayTask.title' /></title>
</head>
<body>


	<center>

		<div>
			<h1 id="displayTitle"><fmt:message key='displayTask.titleMain' /></h1>
		
			<h2><fmt:message key='displayTask.titleSub' /></h2>

			
			<table id="newTaskTable" border="1">
			
			
			
			<thead>

				<tr>
				
					<th><fmt:message key='displayTask.name' /></th>
					<th><fmt:message key='displayTask.lastName' /></th>
					<th><fmt:message key='displayTask.userName' /></th>
					<th><fmt:message key='displayTask.projectName' /></th>
					<th><fmt:message key='displayTask.projectCompany' /></th>
					<th><fmt:message key='displayTask.description' /></th>
					<th><fmt:message key='displayTask.estimatedTime' /></th>
					
				</tr>
				
			</thead>
			
			<tbody>
			
			<c:forEach items="${tasksList}" var="taskVar">
				
				<tr>
				
	
					<td><c:out value='${taskVar.user.userFirstName}'/></td>
					
					<td><c:out value="${taskVar.user.userLastName}" /></td>
					
					<td><c:out value="${taskVar.user.userName}" /></td>
					
					<td><c:out value="${taskVar.project.projectName}" /></td>
					
					<td><c:out value="${taskVar.project.projectCompany}" /></td>
					
					<td><c:out value="${taskVar.taskDescription}" /></td>
					
					<td><c:out value="${taskVar.estimatedTime}" /></td>
					
					
					
				</tr>
				
				
				
			</c:forEach>
			
			</tbody>
			
			</table>
			
			</div>
			
			<form action="<c:url value="/createTask.html"/>" method="GET">
			
				<input type="submit" name="saveButton" value="<fmt:message key='displayTask.btnReturn' />">
			
			</form>
			
		

	</center>
<jsp:include page="/WEB-INF/i18n/langSelect.jsp"/>
</body>
</html>