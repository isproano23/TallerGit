recuperarTexto = function (idComponente) {
  let componenete;
  let valorIngresado;
  componenete = document.getElementById(idComponente);
  valorIngresado = componenete.value;
  return valorIngresado;
};

recuperarFloat = function (idComponenete) {
  let valorCaja;
  let ValorDecimal;
  valorCaja = recuperarTexto(idComponenete);
  ValorDecimal = parseFloat(valorCaja);
  return ValorDecimal;
};

recuperarInt= function (idComponenete) {
  let valorCaja;
  let ValorEntero;
valorCaja = recuperarTexto(idComponenete);
 ValorEntero= parseInt(valorCaja);
  return ValorEntero;
};

mostrarTexto=function(idComponente,mensaje){
    let componente
    componente=document.getElementById(idComponente)
    componente.innerText=mensaje;
}

mostrarImagen=function(idComponente,rutaImagen){
    let componente
    componente=document.getElementById(idComponente)
    componente.src=rutaImagen

}