<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Blocks</title>
<meta name="description" content="description">
<meta name="author" content="Filip Grochowski Emil Wesołowski">
<meta name="viewport" content="width=device-width, initial-scale=1">
%{--<link rel="shortcut icon" href="${resource(dir:'images',file:'blocks_favicon.ico')}" type="image/x-icon" />--}%
<!--<script type='text/javascript' src='${createLink(controller: "javaScript", action: "scripts")}'></script>-->
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<g:javascript>
/* <![CDATA[ */
	window.appContext = '${request.contextPath}';
/* ]]> */
</g:javascript>
</head>
<body>
	<g:set var="baseMessageService" bean="baseMessageService"/>
	<!--Start Header-->
	<div id="screensaver">
		<canvas id="canvas"></canvas>
		<i class="glyphicon glyphicon-lock" id="screen_unlock"></i>
	</div>
	<div id="modalbox">
		<div class="devoops-modal">
			<div class="devoops-modal-header">
				<div class="modal-header-name">
					<span>Basic table</span>
				</div>
				%{--<div class="box-icons">encodeAsHTML
					<a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>--}%
			</div>
			<div class="devoops-modal-inner"></div>
			<div class="devoops-modal-botStom"></div>
		</div>
	</div>
	<header class="navbar">
		<div class="container-fluid expanded-panel">
			<div class="row">
				<div id="logo" class="col-xs-12 col-sm-2">
					<a href="${request.contextPath}">
					<asset:image src="blocks_logo_medium.png" 
						class="img-rounded" alt="Blocks" />
					</a>
				</div>
				<div id="top-panel" class="col-xs-12 col-sm-10">
					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
							<a href="#" class="show-sidebar"> <i
								class="glyphicon glyphicon-th-list"></i>
							</a>
							<div class="search" id="search">
								<g:form action="globalSearch" method="GET"
									controller="globalSearchResult">
									<input style="line-height: normal;" type="text"
										placeholder=${message(code: 'search')} 
										name="globalQuery" id="globalQuery" />
									<i onclick="gloablSearch()" style="cursor: pointer;"
										class="fa fa-search"></i>
										
										<%--<g:render template="/version" />--%>
										</g:form>
							</div>
							
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 top-panel-right">
							<ul class="nav navbar-nav pull-right panel-menu">
								<li>
									<a href="${createLink(controller : 'BaseMessage', action:'index')}">
										<i class="fa fa-envelope"></i>
										<span class="badge">${baseMessageService.unreadCount()}
										</span>
									</a>
								</li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle account" data-toggle="dropdown">
										<div class="avatar"></div> <i class="fa fa-chevron-down pull-right"></i>
										<div class="user-mini pull-right">
											<span class="welcome"><g:message code="welcome" args="${sec.username()}" /></span>
										</div>
								</a>
									<ul class="dropdown-menu">
										<li><a href="${createLink(controller : 'Profile', action:'index')}">
										<i class="fa fa-user"></i>
										<span class="hidden-sm text"><g:message code="profile" /></span>
										</a></li>
										<li><a
											href="${createLink(controller: 'profile', action: 'changePassword')}">
												<i class="fa fa-cog"></i> <span class="hidden-sm text">
													${message(code: 'user.changePassword')}
											</span>
										</a></li>
										<li><a
											href="${createLink(controller: 'logoff')}">
												<i class="fa fa-power-off"></i> <span class="hidden-sm text">
													${message(code: 'springSecurity.logout.button')}
											</span>
										</a></li>
									</ul></li>
									<li class="dropdown language">
										<a href="#" class="dropdown-toggle language" data-toggle="dropdown">
											<i class="fa fa-chevron-down pull-right"></i>
											<div class="language pull-right">
												<span class="language"><g:message code="internationalization" /></span>
											</div>
										</a>
										<ul class="dropdown-menu">
				                            <li><a href="?lang=pl"><i class="fa fa-flag"></i><span class="hidden-sm text"><g:message code="locale.pl"/></span></a></li>
				                            <li><a href="?lang=en"><i class="fa fa-flag"></i><span class="hidden-sm text"><g:message code="locale.en"/></span></a></li>
										</ul>
									</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--End Header-->
	<!--Start Container-->
	<div id="main" class="container-fluid">
		<div class="row">
			<g:render contextPath="/templates" template="mainMenu"></g:render>
			<!--Start Content-->
			<div id="content" class="col-xs-12 col-sm-10">
			<div class="preloader" style="display: none;">
				<asset:image src="devoops_getdata.gif" class="devoops-getdata" alt="preloader" />
			</div>
			<div id="ajax-content"></div>
				<div id="page-content">
					<g:layoutBody />
					<g:render contextPath="/templates"  template="twistPanel"bean=""></g:render>
				</div>

			</div>
			<!--End Content-->
		</div>
	</div>
	<!--End Container-->
	<g:javascript>
/* <![CDATA[ */
$(document) .ready(function () {
    $('#search').on('keydown', function(e){
        if (e.keyCode == 13){
            e.preventDefault();
            gloablSearch();
        }
    });
});

function gloablSearch(){
    $('#search').find('form').submit();
}
/* ]]> */
</g:javascript>
</body>
</html>
