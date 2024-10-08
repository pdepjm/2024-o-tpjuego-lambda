import wollok.game.*
import nivel.*

object isaac{

  method image() = "isaac.png"

  var property position = game.center()

  method moverse(nuevaPosicion){
     position = nuevaPosicion
  }
}


object lagrima{
  method position() = isaac.position()

}