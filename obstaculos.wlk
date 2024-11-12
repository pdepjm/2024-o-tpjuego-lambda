import wollok.game.*
import isaac.*
import visuales.*
import bicho.*
import nivel.*

class Pinchos{

  method image() = "pinchosDefinitivo.png"

  var property position = game.at(6,1)
  
  method interactuar(){
      isaac.danio(5)
  }
}

const pincho1 = new Pinchos()
const pincho2 = new Pinchos(position= game.at(6,3))
const pincho3 = new Pinchos(position= game.at(6,8))
const pincho4 = new Pinchos(position= game.at(6,10))
const pincho5 = new Pinchos(position = game.at(6,14))
const pincho6 = new Pinchos(position = game.at(6,16))


class Puerta{

  method image() = "puerta1.png"

  method interactuar() {}

  var property position = game.at(15,18)
}

class Reja1{
  var property position = game.at(6,12)

  const imagen = "reja2.png"

  method image() = imagen

  method interactuar() {
    isaac.moverse(game.at(isaac.position().x()  , isaac.position().y() - 1))
  }
}

object llave {
  var position = game.at(21,10)
  
  method image() = "llavePuerta.png"

  method interactuar() {
    isaac.tieneLlave(true)
    nivel.quitarLlave()
  }
  method cambiarPosicion(nuevaPosicion){
    position = nuevaPosicion
  }
}

const reja1 = new Reja1(imagen = "reja1.png")
const reja2 = new Reja1(position = game.at(8,12))
const reja3 = new Reja1(position = game.at(10,12))
const reja4 = new Reja1(position = game.at(12,12))
const reja5 = new Reja1(position = game.at(14,12))
const reja6 = new Reja1(position = game.at(16,12))
const reja7 = new Reja1(imagen = "reja3.png",position = game.at(18,12))
const reja8 = new Reja1(imagen = "reja1.png",position = game.at(22,12))
const reja9 = new Reja1(position = game.at(24,12))
const reja10 = new Reja1(position = game.at(26,12))
const reja11 = new Reja1(position = game.at(28,12))
const reja12 = new Reja1(imagen = "reja3.png", position = game.at(30,12))

const reja13 = new Reja1(imagen = "reja1.png",position = game.at(2,4))
const reja14 = new Reja1(position = game.at(4,4))
const reja15 = new Reja1(position = game.at(6,4))
const reja16 = new Reja1(position = game.at(8,4))
const reja17 = new Reja1(position = game.at(10,4))
const reja18 = new Reja1(position = game.at(12,4))
const reja19 = new Reja1(imagen = "reja3.png",position = game.at(14,4))

const pincho7 = new Pinchos(position = game.at(10,6))
const pincho8 = new Pinchos(position = game.at(10,8))
const pincho9 = new Pinchos(position = game.at(10,10))
const pincho10 = new Pinchos(position = game.at(10,12))
const pincho11 = new Pinchos(position = game.at(10,14))
const pincho12 = new Pinchos(position = game.at(18,4))
const pincho13 = new Pinchos(position = game.at(20,4))
const pincho14 = new Pinchos(position = game.at(22,4))
const pincho15 = new Pinchos(position = game.at(24,4))
const pincho16 = new Pinchos(position = game.at(24,6))
const pincho17 = new Pinchos(position = game.at(24,8))
const pincho18 = new Pinchos(position = game.at(24,10))
const pincho19 = new Pinchos(position = game.at(24,12))
const pincho20 = new Pinchos(position = game.at(24,14))

const puerta1 = new Puerta()
const puerta2 = new Puerta(position = game.at(6,18))