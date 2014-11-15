var ratingCleanup = function(json) {
	var id = json.res;
	$('.helpful-rating.' + id).css('display', 'none');
	$('.post-helpful-rating.' + id).css('display', 'inline-block');
}

var flagCleanup = function(json) {
	var id = json.res;
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
		}).done(flagCleanup);
	});

  $('.helpful').click(function() {
  	var valuesToSubmit = $(this);
		$.ajax({
		  type: "POST",
		  url: $(this).context.href,
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(ratingCleanup);
	});

  $('.unhelpful').click(function() {
  	var valuesToSubmit = $(this);
		$.ajax({
		  type: "POST",
		  url: $(this).context.href,
		  data: valuesToSubmit,
		  dataType: 'JSON'
		}).done(ratingCleanup);
	});
}

$(reviewJS);