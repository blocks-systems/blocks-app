<%@ page contentType="text/html;charset=UTF-8"%>
<html>

<head>
<title><g:message code='spring.security.ui.forgotPassword.title' /></title>
<meta name='layout' content='auth' />
</head>

<body>
	<div class="text-center">
		<div class='errors'>
			<g:message code="springSecurity.denied.message" />
		</div>
		<div>
			<a href="${createLink(uri: '/')}"><span class="hidden-xs"><g:message
						code="page.main.back" /></span> </a>
		</div>
	</div>
</body>
</html>