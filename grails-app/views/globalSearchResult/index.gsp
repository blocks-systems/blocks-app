

<%@ page import="blocks.search.GlobalSearchResult"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="devoops">
<title><g:message code="globalSearchResults" default="Search results" /></title>
</head>
<body>

	<div class="row">
		<div id="breadcrumb" class="col-md-12">
			<ol class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/')}"><g:message
							code="default.home.label" /></a></li>
				<li><a href="#"><g:message code="globalSearchResults"
							default="Search results" /></a></li>
			</ol>
		</div>
	</div>

	<div class="row">

		<g:if test="${flash.message}">
			<bootstrap:alert class="alert-info">
				${flash.message}
			</bootstrap:alert>
		</g:if>

		<div class="col-xs-12">
			<p class="small">
				<g:message code="default.search.results"
							args="[globalSearchResultInstanceCount]" />
			About ${globalSearchResultInstanceCount} results</p>
			<g:each in="${globalSearchResultList}" status="i" var="globalSearchResult">
				<div class="one-result">
					<g:link action="edit" controller="${globalSearchResult.objectName}" id="${globalSearchResult.id}">
						<g:message code="${globalSearchResult.objectName}"
							default="${globalSearchResult.objectName}" />
					</g:link>
					<%--<a href="${createLink(action: 'edit', controller: '${globalSearchResult.objectName}', id: '${globalSearchResult.id}')}" class="large">
					<g:message code="${globalSearchResult.objectName}"
							default="${globalSearchResult.objectName}" />
					</a>
					 <p class="txt-primary">www.search.com</p> --%>
					<p>
						<g:fieldValue bean="${globalSearchResult}" field="description" />
					</p>
				</div>
			</g:each>
			<div class="pagination">
				<g:paginate total="${globalSearchResultInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
