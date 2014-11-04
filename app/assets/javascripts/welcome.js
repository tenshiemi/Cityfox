function handleArrows(e) {
	switch (e.keyCode) {
		case 38:
			break;
		case 40:
			break;
		default:
			return false;
	}
	e.returnValue = false;
	e.cancelBubble = true;
	return true;
}

var pageJS = function() {
	$(function() {
		$('#search_term').focus();
	});

	$(function() {
		var company_list, names;
		$.ajax({
		  type: "GET",
		  url: "/get_all",
		}).done(function(json) {
			company_list = json;
		});
		$('#search_term').keyup(function(evt) {
			$('#search_auto').empty();
			current_search = $(this).val().toLowerCase();
			var filtered = _.filter(company_list, function(company) {
				return company.name.toLowerCase().search(current_search) != -1;
			});
			var maxResults = filtered.length > 5 ? 5 : filtered.length;
			for (var i = 0; i < maxResults; i++) {
				$('#search_auto').append("<li style=\"height: 1.4em; padding: .2em 0 .2em 0; margin-bottom: .4em;\"><a href=\"/companies/"+ filtered[i].id + "\">" + filtered[i].name + "</a></li>");
			}
		});
		$('body').click(function() {
			$('#search_auto').empty();
		});
	});
}

$(document).ready(pageJS);
$(document).on('page:load', pageJS);
