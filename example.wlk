
object paquete {
  var estaPago = true
  //getter 
  method estaPago(){
    return estaPago
  }
  //setter 
  method estadoDePaquete(_estaPago){
    estaPago = _estaPago
  }
}

object puenteDeBrookyn {
  method dejaPasar(mensajero){
    return mensajero.pesoTotal() < 1000 && paquete.estaPago()
  }
}

object laMatrix{
  method dejaPasar(mensajero){
    return mensajero.puedeComunicarse() && paquete.estaPago()
  }
}

object jeanGray {
  //getter peso
  method peso(){
    return 65
  }
  method pesoTotal(){
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
  method puedeComunicarse(){
    return self.tieneCredito()
  }
  //seter del credito
  method estadoDeCredito(_credito){
    credito = _credito
  }
  //getter del credito
  method tieneCredito(){
    return credito
  }
}

object saraConnor {
  var vehiculo = moto
  var peso = 0
  //setter del peso
  method actualizarPeso(_peso){
    peso = _peso
  }
  //getter del peso
  method peso(){
    return peso
  }
  method pesoTotal(){
    return self.peso() + vehiculo.peso()
  }
  //setter del vehiculo
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