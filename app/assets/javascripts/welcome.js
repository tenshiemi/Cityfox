$(function() {
	$('#search_term').focus();
});

$(function() {
	var company_list
	$.ajax({
	  type: "GET",
	  url: "http://localhost:3000/companies/get_all",
	}).done(function(json) {
		company_list = json;
	});
	$('#search_term').keyup(function() {
		
	});
});