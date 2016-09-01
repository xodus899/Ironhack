"use strict";

class Car {
	constructor(model,noise){
		this.model = model;
		this.noise = noise;
		this.wheels = 4
	};
	carModel(){
		console.log(this.model + " Makes the sound " + this.noise + " and has " + this.wheels + " Wheels ");
	};	

}


module.exports = Car;