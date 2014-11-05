var ratingCleanup = function(id) {
	$('.helpful-rating.' + id).css('display', 'none');
	$('.post-helpful-rating.' + id).css('display', 'inline-block');
}

var flagCleanup = function(id) {
	$('.icon-flag.' + id).css('display', 'none');
	$('.post-flag.' + id).css('display', 'inline-block');
}

var reviewJS = function() {
  $('.flag').on("click",function() {
  	var valuesToSubmit = $(this)
		$.ajax({
		  type: "POST",
		  url: $(this).context.href,
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(function(json) {
			flagCleanup(json.res);
		});
	});

  $('.helpful').click(function() {
  	var valuesToSubmit = $(this);
		$.ajax({
		  type: "POST",
		  url: $(this).context.href,
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(function(json) {
			ratingCleanup(json.res);
		});
	});

  $('.unhelpful').click(function() {
  	var valuesToSubmit = $(this);
		$.ajax({
		  type: "POST",
		  url: $(this).context.href,
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(function(json) {
			ratingCleanup(json.res);
		});
	});
}

$(document).ready(reviewJS);
$(document).on('page:load', reviewJS);