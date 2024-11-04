import wollok.game.*
import nivel.*

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
          //nivel.muerte()
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


class Puerta{

  method image() = "puerta1.png"

  var property position = game.at(15,18)

  method lastimar() = "como estas"
}

const puerta1 = new Puerta()
const puerta2 = new Puerta(position = game.at(15,1))