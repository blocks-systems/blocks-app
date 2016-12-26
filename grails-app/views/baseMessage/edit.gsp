<%@ page import="blocks.BaseMessage" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="devoops">
<g:set var="entityName"
	value="${message(code: 'baseMessage', default: 'Message')}" />
<g:set var="readOnly" value="true" />
<title><g:message code="baseMessage" /></title>
</head>
<body>
	<div class="row">
		<div id="breadcrumb" class="col-md-12">
			<ol class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/')}"><g:message
							code="default.home.label" /></a></li>
				<li><g:link class="list" action="index">
						<g:message code="baseMessages" />
					</g:link></li>
				<li><a href="#"><g:message code="baseMessage" /></a></li>
			</ol>
		</div>
	</div>

	<div class="row">
		<div class="col-xs-12 col-sm-12">
			<div class="box">
				<div class="box-header">
					<div class="box-name">
						<i class="fa fa-envelope"></i> <span><g:message code="baseMessage" /></span>
					</div>
					<div class="no-move"></div>
				</div>
				<div class="box-content">
					<g:if test="${flash.message}">
						<bootstrap:alert class="alert-info">
								${flash.message}
						</bootstrap:alert>
					</g:if>
					<g:hasErrors bean="${baseMessage}">
						<blocks:beanErrors bean="${baseMessage}" />
					</g:hasErrors>
					<g:form class="form-horizontal" role="form"
						url="[resource:baseMessage, action:'update']" method="POST">
						<g:render template="form" />
						<div class="form-group col-lg-12">
							<fieldset class="buttons">
								<g:link class="btn btn-danger btn-label-left" action="index">
									<span><i class="fa fa-times"></i></span>
									<g:message code="default.button.cancel.label" />
								</g:link>
								<button type="submit" class="btn btn-primary btn-label-left pull-right"
									name="_action_update"
									value="${message(code: 'default.button.update.label', default: 'Update')}" onclick="$('#contents').val($('#_contents').cleanHtml())">
									<span><i class="fa fa-mail-forward"></i></span>
									<g:message code="command.send" default="Send" />
								</button>
							</fieldset>
						</div>
					</g:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
