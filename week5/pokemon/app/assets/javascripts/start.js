if (window.PokemonApp === undefined){

	window.PokemonApp = {};
}

PokemonApp.start = function () {
		// 3rd party code here
	console.log("Pokemon App ONLINE!");

};

$(document).on("ready", function () {

	PokemonApp.start();
});