// Decides whether the person can ride the boo shoot
function rideFunction() {
    var height, canRide;
    height = document.getElementById("height").value;
    canRide = (height < 52) ? "You are too short":"You are tall enough";
    document.getElementById("ride").innerHTML = canRide + " to ride.";
}

// Decides whether the person can vote or not
function voteFunction() {
    var age, canVote;
    age = document.getElementById("age").value;
    canVote = (age >= 18) ? "You can vote":"You can not vote until you are age 21.";
    document.getElementById("vote").innerHTML = canVote;
}

//Creates vehicle class and adds new ones
function vehicle(make, model, year, color) {
    this.vehicleMake = "Honda";
    this.vehicleModel = "Civic";
    this.vehicleYear = 2008;
    this.vehicleColor = "black";
}
var jack = new vehicle("Dodge", "Viper", 2020, "Red");
var emily = new vehicle("Jeep", "Trail Hawk", 2019, "White and Black");
var erik = new vehicle("Ford", "Pinto", 1971, "Mustard");
function myFunction() {
    document.getElementById("keywords-and-constructors").innerHTML = "Erik drives a " +
    erik.vehicleColor + "-colored " + erik.vehicleModel + " manufactured in " + erik.vehicleYear + "."; 
}
//end of vehicle constructor

// my own object constructor
function cellPhone(brand, operatingSystem, screenSize, color) {
    this.cellPhoneBrand = "Apple";
    this.cellPhoneOperatingSystem = "iOS 14";
    this.cellPhoneScreenSize = 4;
    this.cellPhoneColor = "space-grey";
}
var billyBob = new cellPhone("Samsung", "touchWiz", 6.2, "Marble white");
var peterTheBear = new cellPhone("BlackBerry", "Blackberry 10", 2.1, "Black");
var limpEyeJack = new cellPhone("Nexus 5", "Android KitKat", 5.2, "Matte black");
function demo() {
    document.getElementById("new-and-this").innerHTML = "Peter the Bear has an " + 
    peterTheBear.cellPhoneBrand + " device, running " + peterTheBear.cellPhoneOperatingSystem + ".";
}
//end of my object constructor


//basic counting function
function countingFunction() {
    document.getElementById("nested-function").innerHTML = add();
    function add() {
        var startingPoint = 5;
        function addOne() { startingPoint += 1;}
        addOne();
        return startingPoint;
    }
}
//end of basic counting function