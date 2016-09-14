console.log(" Time to Move! ");


$(document).ready(function (){

	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-post").on("click",addJunkRat);
	$(".js-add").on("click", addNewCharacter);

	function addNewCharacter (theEvent) {
		theEvent.preventDefault();

		console.log("add on click")	

		var addCharacter = {
			 name: $(".js-name").val(),  
			 occupation: $(".js-occupation").val(),
			 characterweapon: $(".js-weapon").val()
		}

		$.ajax ({
			type: "post",
			url: "https://ironhack-characters.herokuapp.com/characters",
			data: addCharacter,
			success: updateList,
			error: handleError


		});

		function updateList (response) {
			console.log("Success!");
			console.log(response);

		}
	

		function handleError (error) {
			console.log("ERROR!");
			console.log(error.responeText);
		}

	};

	function fetchCharacters () {
		console.log("Fetch Characters Click");

		// ajax code goes here to retrieve information
		$.ajax ({
			type: "get",
			url: "https://ironhack-characters.herokuapp.com/characters",
			success: function (response) {
				console.log("Success!");
				console.log(response);
				var charactersArray = response

				charactersArray.forEach(function (theCharacter) {
					var html = ` 
						<li> 
							<h2> ${theCharacter.name} </h2>
						</li>
					`;
					$('.js-characters-list').append(html);

				})
			},

			error: function(error) {
				console.log("ERROR!");
				console.log(error.responeText);

			}
		});
	};

	function addJunkRat () {
		console.log("JunkRat");

		var newCharacter = {
			name: "JunkRat",
			occupation: "Total Mayhem",
			weapon: "Frag Launcher"
		}

		$.ajax ({
			type: "post",
			url: "https://ironhack-characters.herokuapp.com/characters",
			data: newCharacter,
			success: updateList,
			error: handleError


		});

		function updateList (response) {
			console.log("Success!");
			console.log(response);

		}
	}

		function handleError (error) {
			console.log("ERROR!");
			console.log(error.responeText);
		}


	

});