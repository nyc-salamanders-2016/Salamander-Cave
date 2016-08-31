$(document).ready(function() {

	$('#new-salamander-link').click(function(event){
		event.preventDefault();
		var $link = $(event.target);
		$.ajax({
			url: $link.attr("href"),
			type: 'get'
		}).done(function(response){
			$link.after(response);
			$link.hide();
		})
	});
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
