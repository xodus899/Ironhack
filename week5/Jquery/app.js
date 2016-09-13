   // can use $ sign or jQuery for the same output.


   $(document).ready(function () {
    
      $('.hello-button').on('click', function () {
        alert('hello world');
      });

  

   

      $('.js-hungry').on('click', function () {
        alert("Where can we get some food?!?!?");
          // // body is the tag selected,append adds what you input, 
          //     |                        |      |                  |
          //     |       ----------------    -----------------------   
          //     |      |                    |   
           $('body').append("<h1> Amazing Food we need! </h1>");
      });

 

 
      $('.js-tacos').on('click', function () {
        alert("These 12 tacos are amazing!");

          $('body').prepend("<h1> ICECREAM! </h1>");
          $('body').before('<h2> Hello </h2>');
          $('body').after(' <h3> Tacos </h3>');
      });
    

    

      $('#ice-cream').on('click', function () { 
        alert("Kitchen sink of Ice-cream YUMMMM!");

        
      });

      $('.pizza').on('click', function () {

       
        $('html').fadeOut();
        $('.pizza').fadeIn(1000);
        



      });

      
   });

 