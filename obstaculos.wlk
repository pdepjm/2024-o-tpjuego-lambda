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

class Puerta{

  method image() = "puerta1.png"

  method interactuar() {}

  var property position = game.at(15,18)
}

class Reja{
  var property position = game.at(6,12)

  const imagen = "reja2.png"

  method image() = imagen

  method interactuar() {
    isaac.moverse(game.at(isaac.position().x()  , isaac.position().y() - 1))
  }
}

object llave {
  var property position = game.at(21,10)
  
  method image() = "llavePuerta.png"

  method interactuar() {
    isaac.tieneLlave(true)
    game.removeVisual(self)
  }
  method cambiarPosicion(nuevaPosicion){
    self.position(nuevaPosicion)
  }
}

object cura{
  var property position = game.at(29,14) 

  method image() = "cura.png"

  method interactuar(){
    isaac.vida(isaac.vida() + 40)
    game.say(isaac, "Ahora tengo " + isaac.vida() + " de vida")
    game.removeVisual(self)
  }
}

object cofre{
  var property position = game.at(3,16)
  var property abierto = false
  var property image = "cofre.png"

  method interactuar(){
    self.image("cofreAbierto.png")
    if(!abierto){
      isaac.vida(isaac.vida() + 20)
      game.say(isaac, "Ahora tengo " + isaac.vida() + " de vida")
      isaac.image("isaacConArmadura.png")
      abierto = true
    }
  }
}

class Hitbox{
    var property position = game.at(7,12)
   method interactuar() {
    isaac.moverse(game.at(isaac.position().x()  , isaac.position().y() - 1))
    }
}

const reja1 = new Reja(imagen = "reja1.png")
const hitbox1 = new Hitbox()
const reja2 = new Reja(position = game.at(8,12))
const hitbox2 = new Hitbox(position = game.at(9,12))
const reja3 = new Reja(position = game.at(10,12))
const hitbox3 = new Hitbox(position = game.at(11,12))
const reja4 = new Reja(position = game.at(12,12))
const hitbox4 = new Hitbox(position = game.at(13,12))
const reja5 = new Reja(position = game.at(14,12))
const hitbox5 = new Hitbox(position = game.at(15,12))
const reja6 = new Reja(position = game.at(16,12))
const hitbox6 = new Hitbox(position = game.at(17,12))
const reja7 = new Reja(imagen = "reja3.png",position = game.at(18,12))
const reja8 = new Reja(imagen = "reja1.png",position = game.at(22,12))
const hitbox7 = new Hitbox(position = game.at(23,12))
const reja9 = new Reja(position = game.at(24,12))
const hitbox8 = new Hitbox(position = game.at(25,12))
const reja10 = new Reja(position = game.at(26,12))
const hitbox9 = new Hitbox(position = game.at(27,12))
const reja11 = new Reja(position = game.at(28,12))
const hitbox10 = new Hitbox(position = game.at(29,12))
const reja12 = new Reja(imagen = "reja3.png", position = game.at(30,12))

const reja13 = new Reja(imagen = "reja1.png",position = game.at(2,4))
const hitbox11 = new Hitbox(position = game.at(3,4))
const reja14 = new Reja(position = game.at(4,4))
const hitbox12 = new Hitbox(position = game.at(5,4))
const reja15 = new Reja(position = game.at(6,4))
const hitbox13 = new Hitbox(position = game.at(7,4))
const reja16 = new Reja(position = game.at(8,4))
const hitbox14 = new Hitbox(position = game.at(9,4))
const reja17 = new Reja(position = game.at(10,4))
const hitbox15 = new Hitbox(position = game.at(11,4))
const reja18 = new Reja(position = game.at(12,4))
const hitbox16 = new Hitbox(position = game.at(13,4))
const reja19 = new Reja(imagen = "reja3.png",position = game.at(14,4))

const pincho1 = new Pinchos()
const pincho2 = new Pinchos(position= game.at(6,3))
const pincho3 = new Pinchos(position= game.at(6,8))
const pincho4 = new Pinchos(position= game.at(6,10))
const pincho5 = new Pinchos(position = game.at(6,14))
const pincho6 = new Pinchos(position = game.at(6,16))
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
const pincho21 = new Pinchos(position = game.at(2,10))
const pincho22 = new Pinchos(position = game.at(4,10))
const pincho23 = new Pinchos(position = game.at(6,10))
const pincho24 = new Pinchos(position = game.at(8,10))
const pincho25 = new Pinchos(position = game.at(10,10))
const pincho26 = new Pinchos(position = game.at(12,10))

const puerta1 = new Puerta()
const puerta2 = new Puerta(position = game.at(6,18))
const puerta3 = new Puerta(position = game.at(20,18))