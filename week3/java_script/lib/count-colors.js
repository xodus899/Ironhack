// (lib/count-colors.js)


function countColors(color,colorArray) {
	var count = 0;

	colorArray.forEach(function(tempcolor) {
		if (tempcolor == color ){
			count +=1;
		};


	});




 return count;
}

module.exports = countColors;