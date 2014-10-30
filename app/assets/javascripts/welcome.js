$(function() {
	$('#search_term').focus();
});

var company_list;
$( document ).ready(function() {
  $.ajax({
	  type: "GET",
	  url: "http://localhost:3000/companies/get_all",
	}).done(function(json) {
		company_list = json;
	});
});

$(function() {
	$('#search_term').keyup(function() {
		console.log($(this).value)
	});
});