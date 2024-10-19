import wollok.game.*
import nivel.*

object isaac{

  method image() = "peque.png"

  var property position = game.center()

  method moverse(nuevaPosicion){
     position = nuevaPosicion
  }

    method nivel2(){
        game.say(puerta, puerta.comoesta())
    }
}

object lagrima{

  method image() = "peque.png"
  
  var property position = isaac.position()

  method moverse(nuevaPosicion){
     position = nuevaPosicion
  }

  method disparoDerecha(){
    self.moverse(self.position().right(1))
  }

  
    method nivel2(){
        game.say(puerta, puerta.comoesta())
    }

}

object puerta{

  method image() = "puerta.png"

  var property position = game.at(8,7)

  method comoesta() = "como estas"
}