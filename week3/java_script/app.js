var countColors = require("./lib/count-colors.js");


var colorArray = ["lilac","teal","green","blue","red","purple","teal"];

console.log(colorArray);



console.log( countColors("indigo", colorArray) === 0);
console.log( countColors("teal", colorArray) === 2);
console.log( countColors("green", colorArray)=== 1);


var capsColors = colorArray.map(function(theColor){
	return theColor.toUpperCase();
	})
console.log(capsColors)
