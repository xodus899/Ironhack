console.log(" Wheres the gingerBread Man?!? ")

$(document).ready(function () {

	$(".js-search-submit").on("click", submitSearch);

	function submitSearch(theSearch){
		// makes it so the page doesnt refresh
		theSearch.preventDefault();
		// this console.log checks for wiring when you press submit.
		console.log("He has vanished")

		var submittedSearch =  $(".js-artist-search").val()
		$(".js-artist-list").empty();
		

		$.ajax ({
			type:"get",
			url: "https://api.spotify.com/v1/search?query=artist:" + submittedSearch + "&type=artist",
			success: function(response){
				console.log("Success!");
				console.log(response);

				artistArray = response.artists.items;
				var addArtist = "";
				console.log(artistArray);

				artistArray.forEach(function (theArtist){
					if (theArtist.images[0]){

					
					addArtist = `
						<li>
							 <a href= <h5> ${theArtist.name}</a> <img src = "${theArtist.images[0].url}" width = 200px> </h5> 
							
						</li>
					`;
					console.log(addArtist)
					$(".js-artist-list").append(addArtist)
					}

				})
			}
		})

	}

});

	function updateList (response) {
			console.log("Success!");
			console.log(response);

		}
	

		function handleError (error) {
			console.log("ERROR!");
			console.log(error.responeText);
		}


	