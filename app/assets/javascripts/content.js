$(function() {
  $('.trigger--form').click(function() {
		$('.form--response').css('display', 'block');
	});
	$('#edit_review_1').on('submit', function(evt){
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
});