var ratingCleanup = function(json) {
  var id = json.res;
  $('.helpful-rating.' + id).css('display', 'none');
  $('.post-helpful-rating.' + id).css('display', 'inline-block');
};

var flagCleanup = function(json) {
  var id = json.res;
  $('.icon-flag.' + id).css('display', 'none');
  $('.post-flag.' + id).css('display', 'inline-block');
};

var feedbackAJAX = function(elem) {
  return $.ajax({
    type: "POST",
    url: elem.href
  });
};

var reviewJS = function() {
  $('.flag').on("click",function() {
    feedbackAJAX(this).done(flagCleanup);
    return false;
  });

  $('.helpful').click(function() {
    feedbackAJAX(this).done(ratingCleanup);
    return false;
  });

  $('.unhelpful').click(function() {
    feedbackAJAX(this).done(ratingCleanup);
    return false;
  });
}

$(reviewJS);
