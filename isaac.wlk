import wollok.game.*
import nivel.*

object isaac{

  method image() = "isaac.png"

  var property position = game.center()

  method moverse(nuevaPosicion){
     position = nuevaPosicion
  }

  method disparar() {

  }
}

object lagrima{

  method image() = "isaac.png"
  
  var property position = isaac.position()

  method moverse(nuevaPosicion){
     position = nuevaPosicion
  }

  method disparar(){
    keyboard.d().onPressDo{game.onTick(500,"disparo",self.disparoDerecha())}
  }

  method disparoDerecha(){
    self.moverse(self.position().right(1))
  }

}