function dropDictionary() {
    var bossDrop = {
        name: "EXCALIBUR",
        rarity: "legendary",
        type: "shortsword",
        powerRating: 82,
    }
    delete bossDrop.powerRating; //this will stop the power rating from showing in drop log
    bossDrop = document.getElementById("dropDictionary").innerHTML = bossDrop.name + " " + bossDrop.rarity + " " + bossDrop.type; //bossDrop.powerRating
}