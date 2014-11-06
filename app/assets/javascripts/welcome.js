// http://stackoverflow.com/questions/17500704/javascript-set-focus-to-html-form-element
// http://stackoverflow.com/questions/17810746/use-up-and-down-arrows-for-autocomplete-search

var pageJS = function() {
	$('#search_term').focus();

	var company_list;

	$.ajax({
	  type: "GET",
	  url: "/get_all",
	}).done(function(json) {
		company_list = json;
	});

	$('#search_term').keyup(function(evt) {
		$('#search_auto').empty();
		current_search = $(this).val().toLowerCase();
		var filtered = company_list.filter(function(company) {
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
}

$(document).ready(pageJS);
$(document).on('page:load', pageJS);
