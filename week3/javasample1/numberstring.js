function stringOfNumbers(string){
	var sum = 0


	var arrayOfStrings = string.split(":");

	arrayOfStrings.forEach(function(string){
		sum = sum + parseInt(string)

	});
   return sum/arrayOfStrings.length
}

console.log(stringOfNumbers("80:70:100:90"));