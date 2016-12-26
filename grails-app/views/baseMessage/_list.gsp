
<table
	class="table table-bordered table-striped table-hover table-heading table-datatable table-condensed"
	id="datatable-1">
	<thead>
		<tr>
			
									<th><g:message code="baseMessage.sender" default="Sender" /></th>
										
									<g:sortableColumn property="contents" title="${message(code: 'baseMessage.contents', default: 'Content')}" />
										
									<g:sortableColumn property="subject" title="${message(code: 'baseMessage.subject', default: 'Subject')}" />
										
									<g:sortableColumn property="isRead" title="${message(code: 'baseMessage.isRead', default: 'Is Read')}" />
										
									<g:sortableColumn property="priority" title="${message(code: 'baseMessage.priority', default: 'Priority')}" />
										
									<g:sortableColumn property="dueDate" title="${message(code: 'baseMessage.dueDate', default: 'Due Date')}" />
										
			<th> </th>
		</tr>
	</thead>
	<tbody>
		<g:each in="${baseMessageList}" status="i" var="baseMessageInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
										<td>${fieldValue(bean: baseMessageInstance, field: "sender")}</td>
									
										<td>${fieldValue(bean: baseMessageInstance, field: "contents")}</td>
									
										<td>${fieldValue(bean: baseMessageInstance, field: "subject")}</td>
									
										<td><g:checkBox name="isRead" value="${baseMessageInstance.isRead}" disabled="disabled"/></td>
									
										<td>${fieldValue(bean: baseMessageInstance, field: "priority")}</td>
									
										<td><g:formatDate date="${messageInstance.dueDate}" /></td>
									
				<td class="text-right">
					<blocks:editAjaxLink id="edit_baseMessage_${baseMessageInstance.id}" class="edit btn btn-app-sms btn-info" controller="baseMessage" objectId="${baseMessageInstance.id}" />
					<blocks:deleteLink id="${baseMessageInstance.id}" controller="baseMessage" removeFromTableOnly="${true}" />
				</td>
			</tr>
		</g:each>
	</tbody>
</table>