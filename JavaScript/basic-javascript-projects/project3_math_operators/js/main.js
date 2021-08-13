function addition() {
    x = (5, 5);
    x = document.getElementById("addition").innerHTML = (5 + 5);
}

function subtraction() {
    x = (5, 5);
    x = document.getElementById("subtraction").innerHTML = (5 - 5);
}

function multiplication() {
    x = (5, 5);
    x = document.getElementById("multiplication").innerHTML = (5 * 5);
}

function division() {
    x = (5, 5);
    x = document.getElementById("division").innerHTML = (5 / 5);
}

function remainder() {
    x = (12, 5);
    x = document.getElementById("remainder").innerHTML = (12 % 5);
}

function increment() {
    var x = 5;
    x++;
    document.getElementById("increment").innerHTML = (x);
}

function decrement() {
    var x = 5;
    x--;
    document.getElementById("decrement").innerHTML = (x);
}

function randomNumberGenerator() {
    var x = (Math.random() * 100);
    document.getElementById("randomNumber").innerHTML = (x);
}