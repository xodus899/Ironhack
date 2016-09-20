console.log(" Wheres the gingerBread Man?!? ");

$(document).ready(function () {

	$(".js-search-submit").on("click", submitSearch);

});

	function submitSearch(theSearch){
		// makes it so the page doesnt refresh
		theSearch.preventDefault();
		// this console.log checks for wiring when you press submit.
		console.log("He has vanished");

		var submittedSearch =  $(".js-artist-search").val()

		$(".js-artist-list").empty();

		$.ajax ({
			type:"get",
			url: "https://api.spotify.com/v1/search?type=artist&query=" + submittedSearch,
			success: showArtists,
			error: handleError,
			
		});
		console.log("The Cookie Monster took a bite!")

	}
			function showArtists(response){
				

				var  artistArray = response.artists.items;
				
				artistArray.forEach(function (theArtist){
					if (theArtist.images[0]){

					var addArtist = `
						<li>
							<h5> ${theArtist.name} 
							<img class="js-album-link" data-id="${theArtist.id}" src="${theArtist.images[0].url}" 
							</h5> 
						</li>
					`;

					$(".js-artist-list").append(addArtist);

					}

				});

				$(".js-album-link").on("click",albumSearch)

				function albumSearch (albums) {

					var resultId = $(albums.currentTarget).data("id");
					console.log("Run run as fast as you can? ")
					console.log(resultId);
					$(".js-albums").empty();				

						$.ajax ({
						type:"get",
						url: `https://api.spotify.com/v1/artists/${resultId}/albums`,
						success: showAlbums,
						error: handleError,
		});
	}


				function showAlbums(response){
					console.log(response)
					var albumArray = response.items;


					albumArray.forEach(function (theAlbums) {
						if (theAlbums.images[0])

						var addAlbum = `
						<li>
							<h5> ${theAlbums.name} 
								<img src= "${theAlbums.images[0].url}"
							 </h5>
				
							</h5> 
						</li>

					`;
				
						$(".js-albums").append(addAlbum)
					
				});
			
			}

		};
			

		function handleError (error) {
			console.log("ERROR!");
			console.log(error.responeText);
		}

		


	