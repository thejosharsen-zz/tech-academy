//grabs weekday in text format, then decides dungeon
function decideDungeon() {
    var d = new Date(); //gets full date
    var weekday = new Array(7); //assigns "weekday" a string
    weekday[0] = "Sunday";
    weekday[1] = "Monday";
    weekday[2] = "Tuesday";
    weekday[3] = "Wednesday";
    weekday[4] = "Thursday";
    weekday[5] = "Friday";
    weekday[6] = "Saturday";
    var n = weekday[d.getDay()]; //assigns "n" as a text-based weekday
    if (n == "Sunday" || n === "Saturday") { //all open
        document.getElementById("demo").innerHTML = "It's the weekend, all dungeons are open!";
      } else if (n === "Monday") { //monday = light
        document.getElementById("demo").innerHTML = "The light dungeon is open!";
      } else if (n === "Tuesday") { //tuesday = dark
          document.getElementById("demo").innerHTML = "The dark dungeon is open!";
      } else if (n === "Wednesday") { //wednesday = wind
          document.getElementById("demo").innerHTML = "The wind dungeon is open!";
      } else if (n === "Thursday") { //thursday = wind
          document.getElementById("demo").innerHTML = "The water dungeon is open!";
      } else if (n === "Friday") { //friday = fire
          document.getElementById("demo").innerHTML = "The fire dungeon is open!";
      }
}
//end of dungeon decider