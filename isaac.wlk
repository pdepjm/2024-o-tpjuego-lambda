import wollok.game.*
import nivel.*



object isaac{

  var vida = 100

  method image() = "peque.png"

  var property position = game.at(2 , 2)

  method moverse(nuevaPosicion){
     position = nuevaPosicion
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