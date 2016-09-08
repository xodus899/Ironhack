"use strict"

var read = require("read");

var questionStrings = [
"Do you find it difficult to introduce yourself?",
"Do you initiate conversations with other people often?",
"Do you feel superior to others?",
"Do you keep your work-space tidy?",
"Did you lie in this questionairre?"
]

function theCallbackFunction (theError,theAnswer){
	console.log("");
	console.log(`Answer #${i + 1} Recorded`);
	console.log(`Answer: ${theAnswer}`);




i += 1;

if(i < questionStrings.length){

var options = {prompt: `Question #${i + 1}: ${questionStrings[i]}` };

read(options, theCallbackFunction);
	}
}

var i = 0

var options = {prompt: `Question #${i + 1}: ${questionStrings[i]}` };

read(options, theCallbackFunction);
