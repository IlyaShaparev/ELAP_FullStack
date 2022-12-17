var x = document.getElementById("contain");

x.addEventListener("click", myFunction);

function myFunction() {
  var element = document.getElementById("menu");
  element.classList.toggle("open");
  
  x.classList.toggle("change");
}


var btn_1 = document.getElementById("btn1");
var btn_2 = document.getElementById("btn2");

btn_1.onclick = my_Function_2_1;
btn_2.onclick = my_Function_2_2;

var elem = document.getElementsByClassName("table__container");
var elem2 = document.getElementsByClassName("table__container__2");


function my_Function_2_2() {
  elem[0].classList.remove("__active")
  
  elem2[0].classList.add("__active")
}

function my_Function_2_1() {
  elem[0].classList.add("__active");

  elem2[0].classList.remove("__active");
}
