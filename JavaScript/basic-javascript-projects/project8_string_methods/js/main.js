//concatination
function demo() {
    var name1 = "Hello, ";
    var name2 = "my name is ";
    var name3 = "Josh";
    var fullName = name1.concat(name2, name3);
    document.getElementById("demo").innerHTML = (fullName);
}

// slice method
function sliceMethod() {
    var sentence = "Hello, my name is Josh and i'm going to delete most of this entire sentence using the slice method.";
    var sentence = sentence.slice(18, 22);
    document.getElementById("slice").innerHTML = (sentence);
}

//uppercase method
function uppercase() {
    var sentence = "Click the button below to change this sentence to all caps!";
    var newSentence = sentence.toUpperCase();
    document.getElementById("uppercase-switch").innerHTML = (newSentence);
}

//number to string method
function numberToString() {
    var x = 190;
    var x = x.toString();
    document.getElementById("actual-number").innerHTML = (x) + " <== this is a string";
}

//precision method
function toPrecisionMethod() {
    var x = 192.193947014942089;
    document.getElementById("huge-number").innerHTML = x.toPrecision(6);
}