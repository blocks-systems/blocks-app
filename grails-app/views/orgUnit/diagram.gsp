<%@ page import="blocks.organization.OrgUnit"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="devoops">
    <g:set var="entityName"
           value="${message(code: 'orgUnit', default: 'Organization Unit')}" />
    <title><g:message code="orgUnits" default="Organization Units" /></title>
</head>
<body>
<div class="row">
    <div id="breadcrumb" class="col-md-12">
        <ol class="breadcrumb">
            <li><a class="home" href="${createLink(uri: '/')}"><g:message
                    code="default.home.label" /></a></li>
            <li><a href="#"><g:message code="orgUnits"
                                       default="Organization Units" /></a></li>
        </ol>
    </div>
</div>

<div class="row">
    <div id="list-actIdUser" class="content scaffold-list" role="main">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <div class="box-name">
                        <i class="fa fa-inbox"></i> <span><g:message
                            code="orgUnits" args="Organization Units" /></span>
                    </div>
                    <div class="box-icons"></div>
                    <div class="no-move"></div>
                </div>
                <div class="box-content no-padding">
                    <g:if test="${flash.message}">
                        <bootstrap:alert class="alert-info">
                            ${flash.message}
                        </bootstrap:alert>
                    </g:if>
                    <table
                            class="table table-bordered table-striped table-hover table-heading table-datatable table-condensed"
                            id="datatable-1">
                        <thead>
                        <tr>

                            <g:sortableColumn property="name"
                                              title="${message(code: 'name', default: 'Name')}" />

                            <th><g:message code="parentUnit" default="Parent" /></th>

                            <th><g:link class="create btn btn-primary btn-table-header pull-right"
                                        action="create">
                                <span class="fa fa-plus"> </span>
                            </g:link>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${orgUnitList}" status="i"
                                var="orgUnit">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                <td><g:link action="edit" id="${orgUnit.id}">
                                    ${fieldValue(bean: orgUnit, field: "name")}
                                </g:link></td>

                                <td>
                                    ${fieldValue(bean: orgUnit, field: "parentUnit")}
                                </td>

                                <td class="text-right">
                                    <blocks:genericTableActions instance="${orgUnit}" />
                                </td>
                            </tr>
                        </g:each>
                        </tbody>
                        <tfoot>
                        <tr>

                            <g:sortableColumn property="name"
                                              title="${message(code: 'name', default: 'Name')}" />

                            <th><g:message code="parentUnit" default="Parent" /></th>


                            <th />
                        </tr>
                        </tfoot>
                    </table>

                    <div class="pagination">
                        <g:paginate total="${orgUnitCount ?: 0}" />
                    </div>

                    <blocks:orgUnitTree />
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
