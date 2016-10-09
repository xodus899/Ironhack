// $(document).ready(function () {
// 	$('.ing-btn').on('click', addIngredient);
// });
$(document).on("turbolinks:load", function (){
	$('.ing-btn').on('click', addIngredient);
})

function addIngredient (theIngredient) {

	theIngredient.preventDefault();
	$('.js-ingredients').empty();
	//console.log(theIngredient)
	
	var newIngredient = $(theIngredient.currentTarget).data("id");
	console.log(theIngredient.currentTarget)

	var currentSandwich = $(".js-sandwich-details").data("sand-id");

	$.ajax({
		type: "POST",
		url: `/api/sandwiches/${currentSandwich}/ingredients/add`,
		data: {ingredient_id: newIngredient},
		success: updateIngredient,
		error: handleError

	})
}

function updateIngredient (theUpdate) {
	console.log(theUpdate);
	
	var ingredientsArray = theUpdate.ingredients;


	$('.calories').html(theUpdate.total_calories)

	ingredientsArray.forEach(function (theIngredient){
		var html = `
			${theIngredient.name}
			${theIngredient.calories} <br>
		`;	
	$('.js-ingredients').append(html)
	})

	
}

function handleError (theError) {
	console.log("error.")
}