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

var feedbackAJAX = function(elem, cb) {
  $.ajax({
    type: "POST",
    url: elem.href
  }).done(cb);
};

// var cbFactory = function(cb) {}

var reviewJS = function() {
  // $('.flag').on('click', cbFactory(flagCleanup));
  // $('.helpful, .unhelpful').on('click', cbFactory(ratingCleanup))

  $('.flag').on("click",function() {
    feedbackAJAX(this, flagCleanup);
    return false;
  });

  $('.helpful, .unhelpful').click(function() {
    feedbackAJAX(this, ratingCleanup);
    return false;
  });
}

$(reviewJS);
