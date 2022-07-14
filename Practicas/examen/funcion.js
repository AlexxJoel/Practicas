console.log("Conecto");

var encabezado = document.getElementsByTagName("h3");
console.log(encabezado);

encabezado[0].addEventListener("mouseover", () => {
  encabezado[0].style.color = "red";
});
encabezado[1].addEventListener("mouseover", () => {
  encabezado[1].style.color = "red";
});
encabezado[2].addEventListener("mouseover", () => {
  encabezado[2].style.color = "red";
});
encabezado[3].addEventListener("mouseover", () => {
  encabezado[3].style.color = "red";
});
encabezado[4].addEventListener("mouseover", () => {
  encabezado[4].style.color = "red";
});

var coment = document.getElementById("naaaa");
var inclusivo = document.getElementById("inclusivo");

coment.addEventListener("click", darle);
inclusivo.addEventListener("click", ()=> { alert('love is love'); 

setTimeout( ()=>{
window.location.href='https://notiunion.com/wp-content/uploads/2020/06/BANDERA-GAY.jpg' }
,2000)



});


function darle() {
  var orale = prompt("Que quieres omentar 1/si , 2/no");
  if (orale == 1) {
    alert("Vas a comentar positivo porfas ");

    var nombre = prompt("Ingresa tu nombre");
    var hola = prompt("Ingresa tu comentario");
    var template = `<h3 id="na" >Comentario de ${nombre}</h3> <p>${hola}<p/><br> <span>-----------------------------------------</span>`;
  } else {
    alert("Ta buenooooo ");
  }
  document.getElementById("comet").innerHTML = template;
}
