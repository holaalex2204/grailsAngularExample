
<%@ page import="mx.saccsa.phoneCat.domain.PhoneHeader" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phoneHeader.label', default: 'PhoneHeader')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-phoneHeader" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-phoneHeader" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list phoneHeader">
			
				<g:if test="${phoneHeaderInstance?.idDesc}">
				<li class="fieldcontain">
					<span id="idDesc-label" class="property-label"><g:message code="phoneHeader.idDesc.label" default="Id Desc" /></span>
					
						<span class="property-value" aria-labelledby="idDesc-label"><g:fieldValue bean="${phoneHeaderInstance}" field="idDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phoneHeaderInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="phoneHeader.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${phoneHeaderInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phoneHeaderInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="phoneHeader.imageUrl.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="imageUrl-label"><g:fieldValue bean="${phoneHeaderInstance}" field="imageUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phoneHeaderInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="phoneHeader.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${phoneHeaderInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phoneHeaderInstance?.snippet}">
				<li class="fieldcontain">
					<span id="snippet-label" class="property-label"><g:message code="phoneHeader.snippet.label" default="Snippet" /></span>
					
						<span class="property-value" aria-labelledby="snippet-label"><g:fieldValue bean="${phoneHeaderInstance}" field="snippet"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:phoneHeaderInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${phoneHeaderInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
