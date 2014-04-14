<%@ page import="mx.saccsa.phoneCat.domain.PhoneHeader" %>



<div class="fieldcontain ${hasErrors(bean: phoneHeaderInstance, field: 'idDesc', 'error')} ">
	<label for="idDesc">
		<g:message code="phoneHeader.idDesc.label" default="Id Desc" />
		
	</label>
	<g:textField name="idDesc" value="${phoneHeaderInstance?.idDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneHeaderInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="phoneHeader.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" value="${phoneHeaderInstance.age}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneHeaderInstance, field: 'imageUrl', 'error')} ">
	<label for="imageUrl">
		<g:message code="phoneHeader.imageUrl.label" default="Image Url" />
		
	</label>
	<g:textField name="imageUrl" value="${phoneHeaderInstance?.imageUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneHeaderInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="phoneHeader.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${phoneHeaderInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneHeaderInstance, field: 'snippet', 'error')} ">
	<label for="snippet">
		<g:message code="phoneHeader.snippet.label" default="Snippet" />
		
	</label>
	<g:textField name="snippet" value="${phoneHeaderInstance?.snippet}"/>
</div>

