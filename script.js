
alert("You shall not pass!");
function revealimage(){

    document.getElementById("hiddenimage").style.display = "none";

}

function changetext(){
    
    var button = document.getElementById('Teemo');

    if (button.innerHTML == "Hut two three four!") {
        button.innerHTML = "Captain Teemo on duty!";
    }
    else {
        button.innerHTML = "Hut two three four!";
    }
}
function hideimage(){
    
    document.getElementById("hiddenimage").style.display = "block";

}