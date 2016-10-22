// printing the string to check wiring from .html file
console.log("Lets order pizza.")

$(document).ready(function () {
	$(".js-search-button").on("click",findTrack);
	$(".btn-play").on("click",playTrack);
	
	

});

	function findTrack(theTrack){

		// take the parameter name/this causes the page to not refresh.
		theTrack.preventDefault();
		// console.log to make sure your getting results.
		console.log("Do you like PIZZA??");

		// to my understanding use the class created for input field and .val to grab the information inputted.
		var foundTrack = $(".js-search-field").val();
		console.log(foundTrack);
		$.ajax ({ 
			type:"get",
			url: `https://api.spotify.com/v1/search?type=track&q=${foundTrack}` ,
			// success is what you name the next function/action.
			success: loadTrack,
			// error, name of error function when something doesnt work.
			error:dreadedError
		});
		// 
		console.log("I love pizza!");
	}

	function loadTrack(loadedTrack) {
		// consolelog to make sure the search button is retrieving data.
		console.log(loadedTrack);
		// use a variable to save the parameter passed of all tracks, then display in a loop.
		var trackArray = loadedTrack.tracks.items;

		var songTitle = trackArray[0].name;
		var artistName = trackArray[0].artists[0].name;
		var albumImage = trackArray[0].album.images[0].url;
		var albumTrackPlay = trackArray[0].preview_url;
			
		$(".js-author").html(artistName);
		$(".js-title").html(songTitle);
		$(".js-album-image").attr("src",albumImage);
		$(".js-audio-play").attr("src",albumTrackPlay);


	};

	function playTrack(triggerPlay){
			console.log("playTrack");

		$(".btn-play").removeClass("disabled");
		$(".btn-play").toggleClass("playing");

		if ($(".btn-play").hasClass("playing")){
			$(".js-audio-play").trigger("play");
			console.log("if we get pizza");

		} else {
			console.log("else we fill our belly")
			$(".js-audio-play").trigger("pause");
		
		}

	

		
	};

	function dreadedError(theError){
		console.log("ERROR!!!");
		console.log(theError.responseText);
	}
