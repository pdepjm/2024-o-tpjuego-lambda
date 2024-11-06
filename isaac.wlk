import wollok.game.*
import nivel.*
import obstaculos.*

object isaac{

  var property vida = 100

  method image() = "peque.png"

  var property position = game.at(2,2)

  method moverse(nuevaPosicion) {
    // Define los límites del área de juego
    const limiteX = 30
    const limiteY = 18
    const minimoX = 1
    const minimoY = 1

    // Solo actualiza la posición si está dentro de los límites
    if (nuevaPosicion.x() >= minimoX && nuevaPosicion.x() <= limiteX &&
        nuevaPosicion.y() >= minimoY && nuevaPosicion.y() <= limiteY) {
      position = nuevaPosicion
    }
  }

  method avanzarNivel(){
      nivel.cambiarEscenario(nivel2)
    }
  
  method danio(n) {
      vida = vida -n

      if(self.vida() == 0){
          game.say(self, "me mori xp")
         // nivel.muerte()
      }
      else{
        game.say(self, "me queda "+ self.vida() + " de vida")
      }
    }
}

