// / monitors code with strict rules
"use strict" 

// reads user input from the terminal.
var read = require("read"); 

var options = {
	prompt: "Do you find it difficult to introduce yourself to other people?"
};


function theCallbackFunction (theError, theAnswer){
	console.log("")
	console.log("Answer Recorded");
	console.log(`Answer: ${theAnswer}`);

var options2 ={ 
	prompt: "Do you initiate conversations with other people often?"
};

function callbackNumberTwo (theSecondError, theAnswerTwo){
	console.log("");
	console.log("Answer #2 Recorded");
	console.log(`Answer: ${theAnswerTwo}`);
}
	console.log("")
	read(options,callbackNumberTwo)
}

read(options,theCallbackFunction);
console.log("");
console.log("");
console.log("This is the last line of the program.");


