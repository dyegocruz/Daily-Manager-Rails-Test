// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).ready(function() {  
  $('.view-task').click(function(){
  		var el = $(this);
  		$.getJSON( el.attr('href'), function(json) {
  			$("#modalTaskLabel").text(el.html()+' tasks');
  			$("#modal-task-date").text(json.task_date);
			  $("#modal-yesterday").text(json.yesterday);
			  $("#modal-today").text(json.today);
			  $("#modal-impediments").text(json.impediments);
			});

			$('#myTaskModal').modal('show');
  });
});

function clean_modal_fields(){
	$("#modalTaskLabel").text('');
	$("#modal-task-date").text('');
	$("#modal-yesterday").text('');
	$("#modal-today").text('');
	$("#modal-impediments").text('');
}