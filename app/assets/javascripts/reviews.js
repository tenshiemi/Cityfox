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
    $.ajax({
      type: "POST",
      url: $(this).context.href
    }).done(flagCleanup);
    return false;
  });

  $('.helpful').click(function() {
    $.ajax({
      type: "POST",
      url: $(this).context.href
    }).done(ratingCleanup);
    return false;
  });

  $('.unhelpful').click(function() {
    $.ajax({
      type: "POST",
      url: $(this).context.href
    }).done(ratingCleanup);
    return false;
  });
}

$(reviewJS);