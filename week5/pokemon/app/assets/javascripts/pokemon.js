// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


PokemonApp.PokemonComponent = class {
	constructor (pokemonUri){
		// @id = PokemonApp.idFromUrl (pokemonUri) same is below.

		this.id = PokemonApp.idFromUri (pokemonUri);
	}

	render () {
		console.log(`PokemonComponent rendering pokemon #${this.id}`);

		$.ajax({
			type: "get",
			url: `/api/v1/pokemon/${this.id}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		})

	}
};

PokemonApp.showPokemonModal = function (result) {
	console.log("Pokemon Info:");
	console.log(result);

	$(".js-poke-name").html(result.name);
	$(".js-poke-weight").html(result.weight);
	$(".js-poke-hp").html(result.hp);
	$(".js-poke-number").html(result.pkdx_id);
	$(".js-poke-height").html(result.height);
	$(".js-poke-speed").html(result.speed);

	
	
	// $(".js-attack-attack").html(result.attack);
	// $(".js-attack-defense").html(result.defense);
	// $(".js-special-attack").html(result.sp_atk);
	// $(".js-special-defense").html(result.sp_def);

	$(".js-pokemon-modal").modal("show");

	// console.log(`Name:   ${result.name}`);
	// console.log(`Number: ${result.pkdx_id}`);
	// console.log(`Weight: ${result.weight}`);
	// console.log(`Height: ${result.height}`);

};

PokemonApp.handleError = function (theError) {
	console.log ("Pokemon Component ERROR");
	console.log(theError.responseText);
};

 // Input: "v1/pokemon/57"
 // Output: 57
PokemonApp.idFromUri = function (pokemonUri) {

	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};


$(document).ready(function () {

	$(".js-show-pokemon").on("click", function (theClick) {
		
		console.log("CLICK");
	
		var theUri = $(theClick.currentTarget).data("pokemon-uri");

		var pokeComponent = new PokemonApp.PokemonComponent( theUri );
		pokeComponent.render();
	});

});

