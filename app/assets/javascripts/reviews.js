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

  $('.helpful').click(function() {
		$.ajax({
		  type: "POST",
		  url: $(this).attr('action'),
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(function(json) {
			$('.helpful-rating').css('display', 'none');
			$('.post-helpful-rating').css('display', 'block');
		});
	});

  $('.unhelpful').click(function() {
		$.ajax({
		  type: "POST",
		  url: $(this).attr('action'),
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(function(json) {
			$('.helpful-rating').css('display', 'none');
			$('.post-helpful-rating').css('display', 'block');
		});
	});
}

$(document).ready(contentJS);
$(document).on('page:load', reviewJS);