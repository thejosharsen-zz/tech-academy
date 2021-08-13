// ================================================
//              CHANGE THE HTML BACKGROUND
// ================================================
function myFunction() {
    var bgColor = document.getElementById("user-background").value;

    switch(bgColor) {
    case "Blue":
        document.body.style.backgroundColor = "blue";
        break;
    case "White":
        document.body.style.backgroundColor = "white";
        break;
    case "Green":
        document.body.style.backgroundColor = "green";
        break;
    case "Black":
        document.body.style.backgroundColor = "black";
        break;
    default:
        text = "#e8eaed";
    }
}

// ================================================
//    CHANGE FOOTER BACKGROUND & AUTHOR NAME
// ================================================
function changeFooterBackground() {
    var elements = document.getElementsByClassName("container-2"); // get all elements
	for(var i = 0; i < elements.length; i++){
		elements[i].style.backgroundColor = "white";
        elements[i].style.color = "black";
	}
}