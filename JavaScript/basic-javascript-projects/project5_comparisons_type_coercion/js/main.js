//legendary voltanis item specs
function demo() {
    var bossDrop = {
        name: "Voltanis",
        rarity: "Legendary",
        type: "godsword",
        powerRating: 210,
    }
    document.write("Congratulations, you slayed the beast! You acquired a " + bossDrop.rarity + " " + bossDrop.name);
    document.write("<br>" + "The type of the name attribute is a " + typeof bossDrop.name);
}

//example to display NaN
function demo2() {
    var x = 0/0
    document.write(x);
}

//single use examples
document.write(2E310); //displays infinity

document.write("<br>" + -2E310); //displays not infinity

document.write("<br>" + (10 > 2)); //boolean = true

document.write("<br>" + (15 <= 7)); //boolean = false

console.log(2 + 2); //displays answer to (2 + 2) in the browser console

document.write("<br>" + "10" + 5); //displays the string "10" + the number 5.

console.log(5 < 2); //displays false in the console log.

console.log(5 == 5); //displays true in the console log, since 5 = 5

//drawing a comparison in the console
x = 15;
y = 15;
console.log(x === y);

document.write("<br>" + (20 > 3 && 15 > 2)); //displays true using && operators

document.write("<br>" + (20 > 13 && 15 < 3)); //displays false using && operators

document.write("<br>" + (5 > 5 || 1 < 2)); //displays true using || operators

document.write("<br>" + (x = !0)); //displays true using !not operator