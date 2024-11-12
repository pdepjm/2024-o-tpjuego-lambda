import wollok.game.*
import nivel.*
import obstaculos.*

object isaac{

  var property vida = 100

  method image() = "peque.png"

  var property position = game.at(2,2)

  var property tieneLlave = false

  method moverse(nuevaPosicion) {
    // Define los límites del área de juego
    const limiteX = 30
    const limiteY = 18
    const minimoX = 1
    const minimoY = 1

    console.println(position.x())
    console.println(position.y())
    console.println(nuevaPosicion)

    // Solo actualiza la posición si está dentro de los límites
    if (nuevaPosicion.x() >= minimoX && nuevaPosicion.x() <= limiteX &&
        nuevaPosicion.y() >= minimoY && nuevaPosicion.y() <= limiteY) {
      position = nuevaPosicion
    }
  }

  method avanzarNivel(){
      if (tieneLlave)
        nivel.cambiarEscenario(nivel2)
      else game.say(self, "me falta la llave")
    }
  
  method danio(n) { 
      vida = vida -n

      if(self.vida() == 0){
          game.say(self, "me mori xp")
          nivel.muerte()
      }
      else{
        game.say(self, "me queda "+ self.vida() + " de vida")
      }
    }

    method terminarJuego(){
      nivel.finalizar()
    }
}