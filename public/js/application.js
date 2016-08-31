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

	$('#new-salamander-container').on("submit", "#new-salamander-form",function(event){
		event.preventDefault();
		console.log("You clicked me!");
		console.log(this);
		console.log(event.target);
	})

// This is an example where this and event.target are different
	$('li').on("click",function(event){
		event.preventDefault();
		console.log(this);
		console.log(event.target);
	})

});
