calcularPrecioFinal = function () {
  let precio;
  let cantidad;
  let precioFinal;

  let existeError = false;



  precio = recuperarFloat("txtprecio");
  if (isNaN(precio)) {
    mostrarTexto("lblError3", "DEBE INGRESAR UN NUMERO CORRECTO");
    existeError = true;
  } else {
    mostrarTexto("lblError3", "");
  }
  cantidad = recuperarInt("txtcantidad");
  if (isNaN(cantidad) && cantidad < 0) {
    mostrarTexto("lblError4", "DEBE INGRESAR UN NUMERO CORRECTO");
    existeError = true;
  } else {
    mostrarTexto("lblError4", "");
  }
  if (existeError == false) {
    precioFinal = calcularTotal(precio, cantidad);
    mostrarTexto("lblResultado", precioFinal);
  }else{
    mostrarTexto("lblResultado2", "NO SE PUDO CALCULAR EL TOTAL");
  } 
};

