var reviewJS = function() {
  $('.flag').click(function() {
		$.ajax({
		  type: "POST",
		  url: $(this).attr('action'),
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(function(json) {
			$('.flag').css('display', 'none');
			$('#notice--flag').css('display', 'block');
		});
	});
}

$(document).ready(contentJS);
$(document).on('page:load', reviewJS);