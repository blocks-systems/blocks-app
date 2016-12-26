// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.1.3.js
//= require jquery.form
//= require bootstrap-all
//= require jquery-autoNumeric
//= require devoops
//= require moment-with-langs.min
//= require bootstrap-datetimepicker.min
//= require select2.min
//= require select2_locale_pl
//= require raphael
//= require morris
//= require jquery.sparkline
//= require jquery.noty.packaged.min
//= require jquery.dataTables.min
//= require datatables.responsive
//= require TableTools.min
//= require ColVis.min
//= require fontawesome-iconpicker
//= require twist-panel
//= require bootstrap-wysiwyg-all
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $('#spinner').ajaxStart(function() {
            $(this).fadeIn();
        }).ajaxStop(function() {
            $(this).fadeOut();
        });
    })(jQuery);
}
(function($){
    var proxy = $.fn.serialize;
    $.fn.serialize = function(){
        var inputs = this.find(':disabled');
        inputs.prop('disabled', false);
        var serialized = proxy.apply( this, arguments );
        inputs.prop('disabled', true);
        return serialized;
    };
})(jQuery);

$(function () {
	  $('[data-toggle="tooltip"]').tooltip();
});

$(function () {
	var inputs = document.querySelectorAll('input');
	for (var i = 0; i < inputs.length; i++) {
		if (!$(inputs[i]).hasClass('ignore-interacted')) {
		    inputs[i].addEventListener('blur', function(event) {
		        event.target.classList.add('interacted');
		    }, false);
		}
	}
});
