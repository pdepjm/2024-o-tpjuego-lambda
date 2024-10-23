import wollok.game.*
import nivel.*

object isaac{

  var property vida = 100

  method image() = "peque.png"

  var property position = game.at(2,2)

  method moverse(nuevaPosicion){
     position = nuevaPosicion
  }

  method nivel2(){
        game.say(puerta, puerta.comoesta())     
    }
  
  method danio(n) {
    vida = vida -n

      if(self.vida() == 0){
          game.say(self, "me mori xp")
          game.stop()
      }
      else{
        game.say(self, "me queda "+ self.vida() + " de vida")
      }
    }
}

class Pinchos{

  method image() = "pinchosDefinitivo.png"

  var property position = game.at(15,1)
  
  method lastimar(){
      isaac.danio(5)
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