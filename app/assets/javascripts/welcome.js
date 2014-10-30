$(function() {
	$('#search_term').focus();
});

$(function() {
	var company_list, names;
	$.ajax({
	  type: "GET",
	  url: "http://localhost:3000/companies/get_all",
	}).done(function(json) {
		company_list = json;
		names = _.pluck(company_list, 'name');
	});
	$('#search_term').keyup(function() {
		current_search = $(this).val().toLowerCase();
		var filtered = _.filter(names, function(name) {
			return name.toLowerCase().search(current_search) != -1;
		});
	});
});