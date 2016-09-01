"use strict"

var fs = require("fs");

fs.readFile("movies.txt","utf8", function(theError,movieFileContents){
	if (theError === null) {

	var moviesArray = movieFileContents.split("\n");
	
	console.log(moviesArray);
	console.log("")
	}

	else {
		console.log("Oh no! Error.")
		console.log("")
		console.log(theError)
	}


});
// =======================================================


var read = require("read");


var theOptions = {prompt: "What is your name?"};


function greetUser(theError, givenName) {
	console.log(`Hello, ${givenName}.`);

var option2 = {prompt: "What is your birthday?"}

function displayBirthDay(theError,birthDate){
	console.log(`Your birthday is ${birthDate}`);
};

read(option2,displayBirthDay)

console.log("")

console.log("")

};

read(theOptions,greetUser);

console.log("")








// 

// ============================================================
function groot (){
	console.log("Groot: I AM GROOT!");
	console.log("");
}

setTimeout(groot,5000);

function rocketRacoon (){
	console.log("")
	console.log("RocketRacoon: Well now I'm standing. Happy? We're all standing now. Bunch of jackasses, standing in a circle.")
	console.log("")
};


setTimeout(rocketRacoon,1000);


console.log("");
console.log("END OF PROGRAM");
console.log("");

