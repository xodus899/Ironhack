"use strict"

var fs = require('fs');

fs.readFile("lib/parse.Json", 'utf8', function (theError,contentsOfFile){
    
    if (theError === null) {
        
        var episodes = JSON.parse(contentsOfFile);

        var filteredEpisodes = episodes.filter(function(episode){
            return episode.rating >= 8.5
        })

        var episodeOrder = filteredEpisodes.sort(function(a,b) {
              return a.episode_number - b.episode_number

        })
        
        episodeOrder.forEach(function(episode){
            var starRating = Math.round(episode.rating);
            var the_star = "";
            while (the_star.length < starRating){ 
                the_star = the_star + "*";

            }

            console.log(`Title: ${episode.title} ${episode.episode_number}`);
            console.log(`Description: ${episode.description}`);
            console.log(`Rating: ${episode.rating} ${the_star}`);

        });

    }
     else { 
        console.log("ERRRRRORRR!!!!");
        console.log("");
        console.log(theError);
    };





});








// var numbers  = [3, 100, 1, 5, 25, 10];
// var newNumbers = numbers.sort(function(a, b){
//   return a-b
// });