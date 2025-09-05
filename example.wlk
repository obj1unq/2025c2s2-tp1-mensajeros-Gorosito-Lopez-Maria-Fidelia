/** First Wollok example */

/*
retornar si el paquete puede ser entregado por alguno de sus empleados 

Necesito poder mandarle un mensaje a la empresa para saber si puede enviar ese paquete
	para entregar el paquete tiene que 
	-Pagado puede variar
	-Destino (Polimorfico)
	-Armar las personas como objs

--Peso del vehiculo y la persona sin el paquete

--El paquete puede o no estar pago

empresa (polimorfico empleado)

*/

object puenteDeBrookyn {
  method dejaPasar(mensajero){
    mensajero.pesoTotal() < 1000
  }
}

object laMatrix{
  method dejaPasar(mensajero){
    mensajero.puedeLlamar()
  }
}

object jeanGray {
  method peso(){
    return 65
  }
  method pesototal(){
    return self.peso() 
  }
  method puedeComunicarse(){
    return true
  }
}

object neo {
  var credito = true
  method peso(){
    return 0
  }
  method pesoTotal(){
    return self.peso()
  }
  method puedeComunicar(){
    return self.tieneCredito()
  }
  method estadoDeCredito(_credito){
    credito = _credito
  }
  method tieneCredito(){
    return credito
  }
}

object saraConnor {
  var vehiculo = moto
  var peso = 0
  method actualizarPeso(_peso){
    peso = _peso
  }
  method peso(){
    return peso
  }
  method pesoTotal(){
    return self.peso() + vehiculo.peso()
  }
  method cambiarVehiculo(_vehiculo){
    vehiculo = _vehiculo
  }
}

object moto {
  method peso(){
    return 100
  }
}

object camion {
  var cantidadDeAcoplado = 0
  method peso(){
    return 500 + self.pesoDeAcoplado()
  }
  method cantidadDeAcoplado(_cantidad){
    cantidadDeAcoplado = _cantidad
  }
  method pesoDeAcoplado(){
    return cantidadDeAcoplado * 500
  }
}