// ------------create a function that takes two numbers and totals it.-------------------------------------


function simpleAdd(a,b) {
	return a + b
}
simpleAdd(3,4)



// --------------------------infinite numbers to add------------------------------------------------------

function add() {
var x= 0 
for(var i= 0;i < arguments.length; i++){
	x += arguments[i];
  }
	return x;
 }
 
 add(3,4)
 
 
 
 //counter === 0
 //arguments acts as an empty array...
 //loop over the length of the array
 //add to the "array" each time
 //then take x and add to the arguments passed
 //..
 //return x outside of the loop.
 //then outside of the function call the function with parameters.

// --------------------------     ------------------------------------------------------


