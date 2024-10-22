import wollok.game.*
import nivel.*

const LIMITE_IZQUIERDO = 1
const LIMITE_DERECHO = 30 // Ajusta estos valores según el tamaño del mapa
const LIMITE_SUPERIOR = 18
const LIMITE_INFERIOR = 1


object isaac{

  var vida = 100

  method image() = "peque.png"

  var property position = game.at(2 , 2)

  method moverse(nuevaPosicion){
     var nuevaColumna = nuevaPosicion.column()
     var nuevaFila = nuevaPosicion.row()

     if (nuevaColumna >= LIMITE_IZQUIERDO && nuevaColumna <= LIMITE_DERECHO && nuevaFila >= LIMITE_SUPERIOR && nuevaFila <= LIMITE_INFERIOR) 
    {
      position = nuevaPosicion
    }
  }

  method nivel2(){
        game.say(puerta, puerta.comoesta())
        
    }
  
  method danio() {vida = vida - 25}
  


}

class Pinchos{

  method image() = "pinchosDefinitivo.png"

  var property position = game.at(15,1)
  
  method lastimar(){
      isaac.danio()
  }
}

const pincho1 = new Pinchos()
const pincho2 = new Pinchos(position= game.at(15,3))
const pincho3 = new Pinchos(position= game.at(15,5))
const pincho4 = new Pinchos(position= game.at(15,7))


object puerta{

  method image() = "puerta1.png"

  var property position = game.at(15,19)

  method comoesta() = "como estas"
}