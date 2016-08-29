<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/i18n/langGet.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css"/>" />
<title><fmt:message key='createTask.title' /></title>
</head>
<body>

  		<div id="misoDiv" style="border-width: 0px 0px 0px 0px; border-style: solid; border-color: #600;">
  			
  			<!--  http://www.codingforums.com/dom-and-json-scripting/322227-dynamically-change-background-image-html-tag.html -->
  			<script type="text/javascript"> 
				(function() { 
				    var images = ['./images/jasmin2.jpg', './images/milo.jpg', './images/miso.jpg']; 
				    var body = window.document.body; 
				    var counter = 0; 
				    window.setInterval(function() { 
				        if( counter >= images.length ) { 
				            counter = 0; 
				        }; 
				        var image = "url(" + images[counter] + ")"; 
				        counter++; 
				        misoDiv.style.backgroundImage = image; 
				    }, 2000); 
				})(); 
			</script> 
  		
  		</div>
  		
  	<div id="mainDiv" style="width: 90%; border-width: 0px 0px 0px 0px; border-style: solid; border-color: #600;" align="center">

	<sf:form action="createTask.html" method="POST" commandName="task">
	
		<h1><fmt:message key='createTask.headline' /></h1>
			
		<table border="0" style="font-family: Arial; font-size: 20px;">
		<tr>
			<td><fmt:message key='createTask.user' /></td>
			<td>
			<sf:select style="width: 143px" path="user">
				<sf:option value=""/>
				<sf:options items="${userList}" itemValue="userId" itemLabel="displayName"/>
			</sf:select><br/>
			<sf:errors path="user" style="color: red"/></td>
		</tr>
		<tr>

			<td><fmt:message key='createTask.project' /></td>
			<td>
			<sf:select style="width: 143px" path="project">
				<sf:option value=""/>
				<sf:options items="${projectList}" itemValue="projectId" itemLabel="projectName"/>
			</sf:select>
			</td>
			<td><sf:errors path="project" style="color: red"/></td>
		</tr>

		<tr>
			<td><fmt:message key='createTask.description' /></td>
			<td>
			<sf:textarea path="taskDescription"></sf:textarea>
			</td>
			<td><sf:errors path="taskDescription" style="color: red"/></td>
		</tr>

		
		<tr>
			<td><fmt:message key='createTask.estimatedTime' /></td>
			<td>
			<sf:select style="width: 143px" path="estimatedTime">
				<sf:option value=""/>
				<sf:options items="${hoursList}" />
			</sf:select>
			</td>
			<td><sf:errors path="estimatedTime" style="color: red"/></td>
		</tr>
		<tr>	
					
			<td>
		
				<input type="submit" value="<fmt:message key='createTask.btnSaveTask' />"/>
		
			</td>
		
		</table>

	</sf:form>
	
</div>
<jsp:include page="/WEB-INF/i18n/langSelect.jsp"/>
</body>
</html>