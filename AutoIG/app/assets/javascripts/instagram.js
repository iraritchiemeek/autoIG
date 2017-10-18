$(document).ready(function () {

	$('.instagram-likes').click(function () {
		$.ajax({
		  type: "GET",
		  url: '/likes'
		})
	})
})