import wollok.game.*
import isaac.*
import visuales.*
import bicho.*

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

}

const puerta1 = new Puerta()
const puerta2 = new Puerta(position = game.at(15,1))