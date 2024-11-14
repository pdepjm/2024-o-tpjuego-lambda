import wollok.game.*
import isaac.*
import visuales.*
import bicho.*
import obstaculos.*

object nivel{

    const anchoTotal = 33
    const altoTotal = 23
    const celdaSize = 27

    var escenarioActual = nivel1

    method escenarioActual() = escenarioActual

    method inicio(){

        self.configuracion()

        game.title("El reino de las arenas")
        game.height(altoTotal)
	    game.width(anchoTotal)
	    game.cellSize(celdaSize)
        game.addVisual(inicioDelJuego)

        keyboard.s().onPressDo({self.cambiarEscenario(nivel1)})
    }

    method clearGame(){
        isaac.tieneLlave(false)
        game.allVisuals().forEach({visual => game.removeVisual(visual)})
    }

    method cambiarEscenario(nivel){
        escenarioActual = nivel
        self.clearGame()
        game.addVisual(fondoDelJuego)
        isaac.moverse(game.at(2,2))
        llave.cambiarPosicion(nivel.posicionLlave())
        escenarioActual.aniadirIsaac()
        escenarioActual.visuales()
    }

    method configuracion(){ //Configuracion del juego
    
        //Movimiento de Isaac
        keyboard.up().onPressDo{isaac.moverse(isaac.position().up(1))}
        keyboard.down().onPressDo{isaac.moverse(isaac.position().down(1))}
        keyboard.left().onPressDo{isaac.moverse(isaac.position().left(1))}
        keyboard.right().onPressDo{ isaac.moverse(isaac.position().right(1))}

        //interactuar
        game.whenCollideDo(isaac, {obstaculo => obstaculo.interactuar()})
    }

    method muerte(){
        self.clearGame()
        game.addVisual(gameOver)
        isaac.vida(100)
        isaac.image("peque.png")
    }

    method finalizar(){
        self.clearGame()	
        game.addVisual(finDelJuego)
        isaac.vida(100)
        isaac.image("peque.png")
        cofre.abierto(false)
    }
}

class Escenario{
    const property posicionLlave   
    method aniadirIsaac(){
        game.addVisual(isaac)
    }
    method visuales()
}

class Escenario1 inherits Escenario{
    override method visuales(){ 

        game.addVisual(puerta1)
        game.addVisual(cofre)
        game.addVisual(pincho1)
        game.addVisual(pincho2)
        game.addVisual(pincho3)
        game.addVisual(pincho4)
        game.addVisual(pincho5)
        game.addVisual(pincho6)
        game.addVisual(reja1)
        game.addVisual(reja2)
        game.addVisual(reja3)
        game.addVisual(reja4)
        game.addVisual(reja5)
        game.addVisual(reja6)
        game.addVisual(reja7)
        game.addVisual(reja8)
        game.addVisual(reja9)
        game.addVisual(reja10)
        game.addVisual(reja11)
        game.addVisual(reja12)
        game.addVisual(hitbox1)
        game.addVisual(hitbox2)
        game.addVisual(hitbox3)
        game.addVisual(hitbox4)
        game.addVisual(hitbox5)
        game.addVisual(hitbox6)
        game.addVisual(hitbox7)
        game.addVisual(hitbox8)
        game.addVisual(hitbox9)
        game.addVisual(hitbox10)
       

        game.addVisual(cura)
        game.addVisual(llave)
        game.addVisual(bicho1)
        game.addVisual(bicho2)
        game.addVisual(mago1)
        
        mago1.moverse()
        bicho1.moverse()
        bicho2.moverse()

        game.whenCollideDo(puerta1, {nivel => nivel.avanzarNivel(nivel2)})
    }
}

class Escenario2 inherits Escenario{
    override method visuales(){ 
        game.addVisual(puerta2)

        game.addVisual(reja13)
        game.addVisual(reja14)
        game.addVisual(reja15)
        game.addVisual(reja16)
        game.addVisual(reja17)
        game.addVisual(reja18)
        game.addVisual(reja19)
        game.addVisual(hitbox11)
        game.addVisual(hitbox12)
        game.addVisual(hitbox13)
        game.addVisual(hitbox14)
        game.addVisual(hitbox15)
        game.addVisual(hitbox16)

        game.addVisual(cura)
        game.addVisual(llave)
        game.addVisual(pincho7)
        game.addVisual(pincho8)
        game.addVisual(pincho9)
        game.addVisual(pincho10)
        game.addVisual(pincho11)
        game.addVisual(pincho12)
        game.addVisual(pincho13)
        game.addVisual(pincho14)
        game.addVisual(pincho15)
        game.addVisual(pincho16)
        game.addVisual(pincho17)
        game.addVisual(pincho18)
        game.addVisual(pincho19)
        game.addVisual(pincho20)
        
        game.addVisual(mago2)
        game.addVisual(bicho3)
        game.addVisual(bicho4)
        
        mago2.moverse()
        bicho3.moverse()
        bicho4.moverse()

        game.whenCollideDo(puerta2, {nivel => nivel.avanzarNivel(nivel3)})
    }
}

class Escenario3 inherits Escenario{
    override method visuales(){ 
        game.addVisual(puerta3)

        game.addVisual(cura)
        game.addVisual(llave)
        
        game.addVisual(pincho21)
        game.addVisual(pincho22)
        game.addVisual(pincho23)
        game.addVisual(pincho24)
        game.addVisual(pincho25)
        game.addVisual(pincho26)
        
        game.addVisual(mago3)
        game.addVisual(fantasma1)
        game.addVisual(fantasma2)
        game.addVisual(bicho5)
        
        fantasma1.moverse()
        fantasma2.moverse()
        mago3.moverse()
        bicho5.moverse()

        game.whenCollideDo(puerta3, {nivel => nivel.terminarJuego()})
    }
}

const nivel1 = new Escenario1(posicionLlave= game.at(30,3))
const nivel2 = new Escenario2(posicionLlave= game.at(4,10))
const nivel3 = new Escenario3(posicionLlave= game.at(3,17))