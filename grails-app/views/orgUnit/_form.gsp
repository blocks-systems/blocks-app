
<%@ page import="blocks.organization.OrgUnit"%>
<div class="form-group col-lg-12">
    <blocks:field id="code" type="text" fieldName="code"
                  data-toggle="tooltip" required="${true}" maxlength="16"
                  error="${hasErrors(bean:orgUnit, field:'code', 'has-error')}"
                  data-placement="bottom" name="code" labelCode="code"
                  value="${orgUnit?.code}" ></blocks:field>
    <blocks:field id="name" fieldName="name" type="text"
                  data-toggle="tooltip" required="${true}" maxlength="64"
                  error="${hasErrors(bean:orgUnit, field:'name', 'has-error')}"
                  data-placement="bottom" name="name" labelCode="name"
                  value="${orgUnit?.name}"></blocks:field>
</div>

<div class="form-group col-lg-12">
    <blocks:select id="parentUnit" controller="orgUnitController" create="orgUnit"
        error="${hasErrors(bean:orgUnit, field:'parentUnit', 'has-error')}"
        labelCode="parentUnit"
        from="${blocks.organization.OrgUnit.list()}"
        optionKey="id" name="parentUnit.id"
        value="${orgUnit?.parentUnit?.id}"
        class="selectable many-to-one" />
</div>