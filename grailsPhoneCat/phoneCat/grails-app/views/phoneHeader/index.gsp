
<%@ page import="mx.saccsa.phoneCat.domain.PhoneHeader" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phoneHeader.label', default: 'PhoneHeader')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-phoneHeader" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-phoneHeader" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="idDesc" title="${message(code: 'phoneHeader.idDesc.label', default: 'Id Desc')}" />
					
						<g:sortableColumn property="age" title="${message(code: 'phoneHeader.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="imageUrl" title="${message(code: 'phoneHeader.imageUrl.label', default: 'Image Url')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'phoneHeader.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="snippet" title="${message(code: 'phoneHeader.snippet.label', default: 'Snippet')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${phoneHeaderInstanceList}" status="i" var="phoneHeaderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${phoneHeaderInstance.id}">${fieldValue(bean: phoneHeaderInstance, field: "idDesc")}</g:link></td>
					
						<td>${fieldValue(bean: phoneHeaderInstance, field: "age")}</td>
					
						<td>${fieldValue(bean: phoneHeaderInstance, field: "imageUrl")}</td>
					
						<td>${fieldValue(bean: phoneHeaderInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: phoneHeaderInstance, field: "snippet")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${phoneHeaderInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
