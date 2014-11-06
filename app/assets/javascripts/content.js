var contentJS = function() {
  $('.trigger--form').click(function() {
		$('.form--response').css('display', 'block');
	});
	
	$('.form--response > form').on('submit', function(evt){
		evt.preventDefault();
		var valuesToSubmit = $(this).serialize();
		$.ajax({
		  type: "POST",
		  url: $(this).attr('action'),
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(function(json) {
			$('.form--response').css('display', 'none');
			$('p.response').text(json.res);
		});
	});

	$('.trigger--password').click(function() {
		$('.form--password-change').css('display', 'block');
	});
	$('.form--password-change > form').on('submit', function(evt){
		evt.preventDefault();
		var valuesToSubmit = $(this).serialize();
		$.ajax({
		  type: "POST",
		  url: $(this).attr('action'),
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(function(json) {
			$('.form--password-change').css('display', 'none');
		});
	});
}

$(document).ready(contentJS);
$(document).on('page:load', contentJS);