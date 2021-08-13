// ===============================================================================================
//                              WHILE LOOPS , GET_STRING_LENGTH
// ===============================================================================================
function whileLoop() { //counts to 10
    var digit = "";
    var x = 1;
    while (x < 11) {
        digit += "<br>" + x;
        x++;
    }
    document.getElementById("while-loop").innerHTML = digit;
}

function get_string_length() { //gets string length from html document
    var x = document.getElementById("string-content").innerHTML; //assigns x to <p> content
    var i = x.length; //assigns "i" to <p> content char length
    document.getElementById("string_length").innerHTML = i; //writes "i" to <p id="string_length">
}

// =========================================================================================
//                              FOR LOOPS - MUSICAL INSTRUMENTS
// =========================================================================================
var instruments = ["Guitar", "Drums", "Piano", "Bass", "Violin", "Trumpet", "Flute"];
var content = "";
var y;
function forLoop() {
    for (y = 0; y < instruments.length; y++) {
        content += instruments[y] + "<br>";
    }
    document.getElementById("list_of_instruments").innerHTML = content;
}

// =========================================================================================
//                              USING ARRAYS TO CREATE DEVICE MODELS
// =========================================================================================

function deviceManufacturers() { //creates an array of device manufacturers
    var deviceManufacturer = [];
    deviceManufacturer[0] = "Apple";
    deviceManufacturer[1] = "Samsung";
    deviceManufacturer[2] = "LG";
    deviceManufacturer[3] = "Sony";
    deviceManufacturer[4] = "HTC";
    deviceManufacturer[5] = "OnePlus";
    document.getElementById("current-vendors").innerHTML = 
    deviceManufacturer[0] + "<br>" + deviceManufacturer[1] + "<br>" + 
    deviceManufacturer[2] + "<br>" + deviceManufacturer[3] + "<br>" + 
    deviceManufacturer[4] + "<br>" + deviceManufacturer[5];
}

function iPhone5SE() { //iPhone 5SE unique model
    const iPhone5SE = {type:"mobile phone", brand:"Apple iPhone", operatingSystem:"iOS", model:"5SE"};
    iPhone5SE.color = "Space Gray";
    iPhone5SE.price = 700;
    document.getElementById("constant").innerHTML = "The cost of the " + iPhone5SE.brand + " " + iPhone5SE.model + " will come to $" + iPhone5SE.price + " before taxes.";
}

function iPhone7() { //iPhone 7 unique model
    const iPhone7 = {type:"mobile phone", brand:"Apple iPhone", operatingSystem:"iOS", model:"7"};
    iPhone7.color = "Rose Gold";
    iPhone7.price = 490;
    document.getElementById("constant").innerHTML = "The cost of the " + iPhone7.brand + " " + iPhone7.model + " will come to $" + iPhone7.price + " before taxes.";
}

// =========================================================================================
//                              SPECIAL IPHONE MODEL
// =========================================================================================

function iPhoneProductBrown() { //iPhone Special Editions unique model
    var iPhoneProductBrown = {type:"mobile phone", brand:"Apple iPhone", operatingSystem:"iOS", model:"product brown"};
    iPhoneProductBrown.color = "Brown";
    iPhoneProductBrown.price = 1999.99;
    function discount() {
            let x = iPhoneProductBrown.price;
            x = (x - 1000.00);
            iPhoneProductBrown.price = x;
    }
    discount(); // calling the function to apply the discount
    document.getElementById("constant").innerHTML = "The " + iPhoneProductBrown.brand + 
    " Product Brown will cost $" + iPhoneProductBrown.price + " before taxes.";
}

// =========================================================================================
//                              USING "LET" TO CREATE OBJECTS
// =========================================================================================

function returnFunction() {
    let computer = { //defining a unique computer
        brand: "Apple ",
        operatingSystem: "Mac OS",
        model: "MacBook Pro",
        price: 2000,
        description : function() { //this will define the return output
            return "This computer is an " + computer.brand + " " + computer.model + 
            " running " + computer.operatingSystem + " and the total price before tax comes to $" + 
            computer.price;
            }
    };
    document.getElementById("return").innerHTML = computer.description();
}

// =========================================================================================
//                              USING BREAK STATEMENTS TO EXIT A LOOP
// =========================================================================================

function breakFunction() {
    var x = 0;
    var content = "The number is 10";
    while (x < 15) { //even tho this is 15, break will exit the loop at 10
        if (x === 10) { break; }
            document.getElementById("break").innerHTML = content;
            x++;
        }
}