<%@ page contentType="text/html;charset=UTF-8"%>
<html>

<head>
<title><g:message code='springSecurity.login.header' /></title>
<meta name='layout' content='auth' />
</head>

<body>
	<g:if test='${flash.error}'>
		<div class='alert alert-block alert-danger text-center'>
			<h3>
				${flash.error}
			</h3>
		</div>
	</g:if>

	<g:if test='${flash.message}'>
		<div class='alert alert-block alert-danger text-center'>
			<h3>
				${flash.message}
			</h3>
		</div>
	</g:if>
	<form action="${postUrl ?: '/login/authenticate'}" method='POST' id='loginForm' autocomplete='off'>
		<div class="text-center">
			<h3 class="page-header">
				<g:message code="springSecurity.login.header" />
			</h3>
		</div>
		<div class="form-group">
			<label for='username'><g:message code="springSecurity.login.username.label" />:</label>
			<input type="text" class="form-control ignore-interacted" class="form-control" name="${usernameParameter ?: 'username'}" id='username' />
		</div>
		<div class="form-group">
			<label for='password'><g:message code="springSecurity.login.password.label" />:</label>
			<input class="form-control ignore-interacted" type="password" class="form-control" name="${passwordParameter ?: 'password'}" id='password' />
		</div>
		<div class="form-group">
			<input type='checkbox' class='chk' name="${rememberMeParameter ?: 'remember-me'}" class="ignore-interacted"
				id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if> />
			<label for='remember_me'><g:message
					code="springSecurity.login.remember.me.label" /></label> <a href="#"
				class="forgot-password-link to-right"> ${message(code: 'spring.security.ui.forgotPassword.header')}
			</a>

		</div>
		<div class="text-center">
			<g:submitButton name="login"
				value='${message(code: "springSecurity.login.button")}'
				class="btn btn-primary" />
		</div>
	</form>
	<div class="inner-box text-center">
		<div class="forgotten-password">
			<div class="text-center">
				<h3 class="page-header">
					${message(code: 'spring.security.ui.forgotPassword.header')}
				</h3>
			</div>
			<g:form class="form-vertical forgot-password-form hide-default"
				action='forgotPassword' name="forgotPasswordForm"
				controller="register" autocomplete='off'>
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for='f_username'><g:message
								code="springSecurity.login.username.label" />:</label>
					</div>
					<div class="col-sm-10">
						<input class="form-control" id="f_username" type="text" class="ignore-interacted"
							name="username" />
					</div>
				</div>

				<div class="form-actions">
					<g:submitButton name="forgotten-password"
						value='${message(code: "spring.security.ui.forgotPassword.submit")}'
						class="btn btn-primary" />
				</div>
			</g:form>

			<script type='text/javascript'>
			<!--
				$(document).ready(function() {
					document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();

					$('.forgot-password-link').click(function(e) {
						e.preventDefault();
						$('.inner-box').slideToggle(200);
					});

					// Click on close-button
					$('.inner-box .close').click(function(e) {
						e.preventDefault();
						$('.inner-box').slideToggle(200);
					});

				});
			// -->
			</script>
</body>
</html>
