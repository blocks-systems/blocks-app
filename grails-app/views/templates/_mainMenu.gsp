<div id="sidebar-left" class="col-xs-2 col-sm-2">
	<ul class="nav main-menu">
		<li><a href="${createLink(uri: '/')}"> <i
				class="fa fa-dashboard"></i> <span class="hidden-xs"><g:message
						code="default.dashboard.label" /></span>
		</a></li>
		<sec:access expression="hasRole('ROLE_SUPER_USER')">
		<li class="dropdown"><a href="#" class="dropdown-toggle"> <i
				class="fa fa-sliders"></i> <span class="hidden-xs"><g:message
						code="default.settings.label" /></span>
		</a>
			<ul class="dropdown-menu">
				<li><a href="${createLink(controller : 'orgUnit', action:'diagram')}"> <i
						class="fa fa-building"></i> <span class="hidden-xs"><g:message
						code="orgUnits" default="Organization Units"/></span>
				</a></li>
				<li><a href="${createLink(controller : 'user', action:'index')}"> <i
						class="fa fa-user"></i> <span class="hidden-xs"><g:message
								code="users" default="Users"/></span>
				</a></li>
				<li><a href="${createLink(controller : 'group', action:'index')}"> <i
						class="fa fa-group"></i> <span class="hidden-xs"><g:message
								code="default.groups.label" /></span>
				</a></li>
				<li><a href="${createLink(controller : 'privilege', action:'index')}"> <i
						class="fa fa-lock"></i> <span class="hidden-xs"><g:message
								code="default.priviliges.label" /></span>
				</a></li>
				<li><a href="${createLink(controller : 'document', action:'index')}"> <i
						class="fa fa-file-o"></i> <span class="hidden-xs"><g:message
								code="default.documents.label" /></span>
				</a></li>
				<li><a href="${createLink(controller : 'audit', action:'index')}"> <i
						class="fa fa-cog"></i> <span class="hidden-xs"><g:message
								code="default.auditLogEvent.label" /></span>
				</a></li>
				<li><a href="${createLink(controller : 'monitoring')}"> <i
						class="fa fa-wrench"></i> <span class="hidden-xs"><g:message
								code="default.monitoring.label" /></span>
				</a></li>
			</ul>
		</li>
		</sec:access>
	</ul>
</div>