
<%@ page import="blocks.BaseMessage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="devoops">
		<g:set var="entityName" value="${message(code: 'baseMessage', default: 'Message')}" />
		<title><g:message code="baseMessages" default="Messages" /></title>
	</head>
	<body>
		<div class="row">
			<div id="breadcrumb" class="col-md-12">
				<ol class="breadcrumb">
					<li><a class="home" href="${createLink(uri: '/')}"><g:message
								code="default.home.label" /></a></li>
					<li><a href="${createLink(controller : 'baseMessage', action:'index')}"><g:message code="baseMessages" default="Messages" /></a></li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-2">
				<ul id="messages-menu" class="nav msg-menu">
					<li>
						<a href="${createLink(controller : 'baseMessage', action:'create')}" 
							class="" id="msg-compose">
							<i class="fa fa-plus"></i>
							<span class="hidden-xs"><g:message code="compose" default="Compose"/></span>
						</a>
					</li>
					<li>
						<g:link class="list" action="index">
							<i class="fa fa-inbox"></i>
							<span class="hidden-xs"><g:message code="inbox" default="Inbox" />
								(${messageCount ?: 0})
							</span>
						</g:link>
					</li>
					<li>
						<g:link class="list" action="unread">
							<i class="fa fa-envelope"></i>
							<span class="hidden-xs"><g:message code="unread" default="Unread" />
								(${unreadCount ?: 0})
							</span>
						</g:link>
					</li>
					<li>
						<g:link class="list" action="important">
							<i class="fa fa-bookmark"></i>
							<span class="hidden-xs"><g:message code="important" default="Important" />
								(${importantCount ?: 0})
							</span>
						</g:link>
					</li>
					<li>
						<g:link class="list" action="sent">
							<i class="fa fa-reply"></i>
							<span class="hidden-xs"><g:message code="sent" default="Sent"/></span>
						</g:link>
					</li>
					<li>
						<a href="index.html" class="" id="msg-trash">
							<i class="fa fa-trash-o"></i>
							<span class="hidden-xs"><g:message code="trash" default="Trash"/></span>
						</a>
					</li>
				</ul>
			</div>
			<div id="messages-list" class="col-xs-10">
				<g:each in="${baseMessageList}" status="i" var="baseMessage">
					<div class="row one-list-message msg-inbox-item" id="msg-one">
						<div class="col-xs-2 checkbox">
							<label>
								<input type="checkbox"> ${fieldValue(bean: baseMessage, field: "sender")}
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-7 message-title">
							<g:link action="edit" id="${baseMessage.id}" style="${baseMessage.isRead == true ? 'font-weight: initial;' : 'font-weight: bold;'}"> 
							${fieldValue(bean: baseMessage, field: "subject")}
							</g:link>
						</div>
						<div class="col-xs-2 message-date"><g:formatDate date="${baseMessage.createdAt}" /></div>
					</div>
				</g:each>
				<div class="row one-list-message msg-starred-item">
					<div class="col-xs-1 checkbox">
						<label>
							<input type="checkbox"> Linus T.
							<i class="fa fa-square-o small"></i>
						</label>
					</div>
					<div class="col-xs-9 message-title"><b>Announce new release</b> Hi. 3.11.xx is released!</div>
					<div class="col-xs-2 message-date">12/31/13</div>
				</div>
				<div class="row one-list-message msg-one-item" style="display: none;">
					<div class="box">
						<div class="avatar">
							<img src="img/avatar.jpg" alt="Jane" />
						</div>
						<div class="page-feed-content">
							<small class="time">Jane Devops, 12 min ago</small>
							<p>Linux is a Unix-like and POSIX-compliant computer operating system assembled under the model of free and open source software development and distribution. Maemo - Software platform developed by Nokia and then handed over to Hildon Foundation for smartphones and Internet tablets</p>
							<div class="likebox">
								<ul class="nav navbar-nav">
									<li><i class="fa fa-thumbs-up"></i> 138</li>
									<li><i class="fa fa-thumbs-down"></i> 47</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
