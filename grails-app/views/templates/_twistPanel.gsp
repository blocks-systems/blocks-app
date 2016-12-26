<div class="container-fluid">
    <div class="row-fluid">
        <div id="twist-panel">
            <div class="fab btn-group show-on-hover dropup">
                <div data-toggle="tooltip" data-placement="left" title="Compose" style="margin-left: 42px;">
                    <button type="button" class="btn btn-danger btn-io dropdown-toggle" data-toggle="dropdown">
                        <span class="fa-stack fa-2x">
                            <i class="fa fa-circle fa-stack-2x fab-backdrop"></i>
                            <i class="fa fa-plus fa-stack-1x fa-inverse fab-primary"></i>
                            <i class="fa fa-pencil fa-stack-1x fa-inverse fab-secondary"></i>
                        </span>
                    </button></div>
                <ul class="dropdown-menu dropdown-menu-right" role="menu">'
                    <li><g:link action="create" data-toggle="tooltip" data-placement="left" controller="purchaseOrder"
                                title="${message(code: 'order', default: 'Order')}"><span class="fa fa-ship"></span>
                    </g:link></li>
                    <li><g:link action="create" data-toggle="tooltip" data-placement="left" controller="purchaseOrder"
                                title="${message(code: 'salesOrder', default: 'Sales Order')}"><span class="fa fa-pencil-square-o"></span>
                    </g:link></li>
                    <li><a href="#" data-toggle="tooltip" data-placement="left" title="LiveChat"><i class="fa fa-comments-o"></i></a></li>
                    <li><a href="#" data-toggle="tooltip" data-placement="left" title="${message(code: 'customer', default: 'Customer')}"><i class="fa fa-male"></i></a></li>
                    <li><a href="#" data-toggle="tooltip" data-placement="left" title="${message(code: 'baseMessage', default: 'Message')}"><i class="fa fa-envelope"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>