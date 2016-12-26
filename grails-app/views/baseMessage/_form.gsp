

<%@ page import="blocks.BaseMessage" %>

<div class="form-group col-lg-12">
	<blocks:select id="recipients" name="recipients" labelCode="recipients" hideShow="${true}" 
		create="recipients" from="${blocks.auth.User.list()}" multiple="multiple" optionKey="id" 
		error="${hasErrors(bean:baseMessage, field:'recipients', 'has-error')}"  
		value="${baseMessage?.recipients*.id}" class="selectable many-to-many" 
		readOnly="${readOnly}" />
		
	<blocks:field id="subject" type="text" class="form-control" data-toggle="tooltip" 
		data-placement="bottom" maxlength="128" name="subject" required="${true}"
		value="${baseMessage?.subject}" readOnly="${readOnly}"
		error="${hasErrors(bean:baseMessage, field:'subject', 'has-error')}" labelCode="subject" />
</div>

<div class="form-group col-lg-12">
	<div class="btn-toolbar" data-role="editor-toolbar"
		 data-target="#contents">
		<div class="btn-group">
			<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
			<ul class="dropdown-menu">
			</ul>
		</div>
		<div class="btn-group">
			<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
				<li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
				<li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
			</ul>
		</div>
		<div class="btn-group">
			<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
			<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
			<a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
			<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
		</div>
		<div class="btn-group">
			<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
			<a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
			<a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-outdent"></i></a>
			<a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
		</div>
		<div class="btn-group">
			<a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
			<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
			<a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
			<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
		</div>
		<div class="btn-group">
			<a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
			<div class="dropdown-menu input-append">
				<input class="span2" placeholder="URL" type="text" data-edit="createLink"/>
				<button class="btn" type="button">Add</button>
			</div>
			<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>

		</div>

		<div class="btn-group">
			<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
			<a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
		</div>
		<input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
	</div>
	<input type="hidden" name="contents" id="contents" value="${baseMessage.contents}">
<div id="_contents" name="_contents" fieldname="_contents"
		style="margin-bottom: 5px !important; padding-bottom: 2px !important; overflow:scroll; max-height:300px; height:250px;"
		${readOnly=='true' ? 'readOnly' : ''} >
		${baseMessage?.contents.encodeAsRaw()}
		</div>
</div>

<div class="form-group col-lg-12">
	<div>
		<div class="col-sm-2 control-label">
			<label>
				<g:message code="priority" default="Priority" />
			</label></div>
		<div class="col-sm-4 control-label" style="text-align: left ! important;">
			<div type="button" class="btn btn-primary" onclick="changePriority()" 
			${readOnly=='true' ? 'disabled' : ''}> 
				<span><i class="fa fa-minus" id="priority-icon"></i></span>
			</div>
		</div>
	</div>
	<blocks:datetimepicker id="dueDate" beanName="baseMessage"  required="${true}" 
		fieldName="dueDate" labelCode="dueDate" value="${baseMessage?.dueDate}" 
		error="${hasErrors(bean:baseMessage, field:'dueDate', 'has-error')}" 
		readOnly="${readOnly}" />
</div>

<input id="priority" name="priority" value="${baseMessage.priority}" required="required" type="hidden">

<script>
$(document).ready(function () {
	$('#_contents').wysiwyg();
	var priority = $('#priority').val();
	if (priority <= 33) {
		$('#priority-icon').removeClass().addClass('fa fa-chevron-down');
	} 
	if (priority > 33 && priority <= 66) {
		$('#priority').val(100);
		$('#priority-icon').removeClass().addClass('fa fa-minus');
	}
	if (priority > 66) {
		$('#priority').val(0);
		$('#priority-icon').removeClass().addClass('fa fa-chevron-up');
	}
});
function changePriority() {
	var priority = $('#priority').val();
	if (priority <= 33) {
		$('#priority').val(50);
		$('#priority-icon').removeClass().addClass('fa fa-minus');
	} 
	if (priority > 33 && priority <= 66) {
		$('#priority').val(100);
		$('#priority-icon').removeClass().addClass('fa fa-chevron-up');
	}
	if (priority > 66) {
		$('#priority').val(0);
		$('#priority-icon').removeClass().addClass('fa fa-chevron-down');
	}
}
$(function(){
    function initToolbarBootstrapBindings() {
      var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
            'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
            'Times New Roman', 'Verdana'],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
      $.each(fonts, function (idx, fontName) {
          fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
      });
      $('a[title]').tooltip({container:'body'});
    	$('.dropdown-menu input').click(function() {return false;})
		    .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
        .keydown('esc', function () {this.value='';$(this).change();});

      $('[data-role=magic-overlay]').each(function () {
        var overlay = $(this), target = $(overlay.data('target'));
        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
      });
      if ("onwebkitspeechchange"  in document.createElement("input")) {
        var editorOffset = $('#contents').offset();
        $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#contents').innerWidth()-35});
      } else {
        $('#voiceBtn').hide();
      }
	};
	function showErrorAlert (reason, detail) {
		var msg='';
		if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }
		else {
			console.log("error uploading file", reason, detail);
		}
		$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+
		 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
	};
    initToolbarBootstrapBindings();
	$('#contents').wysiwyg({ fileUploadError: showErrorAlert} );
    window.prettyPrint && prettyPrint();
  });
</script>
