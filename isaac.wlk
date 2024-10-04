import wollok.game.*

object isaac{

  method image() = "isaac.png"

  var property position = game.center()

  method moverse(nuevaPosicion){
     position = nuevaPosicion
  }
}