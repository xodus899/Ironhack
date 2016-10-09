console.log("Do you want pizza?")

$(document).ready(function () {

$(".button").on("click",function() {
	location.reload(true)

	});

});

var phrases = [
'I like cookies',
'I want pizza',
'I want water'
];

console.log(phrases)

 x = Math.floor(Math.random() * 2 + 0 )


wordPhrase = phrases[x]


var input = $('.comment').val()
phrases.push(input)

console.log(phrases)


