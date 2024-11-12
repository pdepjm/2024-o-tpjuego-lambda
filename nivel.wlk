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

        //pasar por la puerta
        game.whenCollideDo(puerta1, {nivel => nivel.avanzarNivel()})
        game.whenCollideDo(puerta2, {nivel => nivel.terminarJuego()})
        game.whenCollideDo(isaac, {obstaculo => obstaculo.interactuar()})
    }

    method quitarLlave(){
        game.removeVisual(llave)
    }

    method muerte(){
        self.clearGame()
        game.addVisual(gameOver)
    }

    method finalizar(){
        self.clearGame()	
        game.addVisual(finDelJuego)
    }
}

class Escenario{
    const property posicionLlave = game.at(30,5)
    method aniadirIsaac(){
        game.addVisual(isaac)
    }
    method visuales()
}

class Escenario1 inherits Escenario{
    override method visuales(){ 

        game.addVisual(puerta1)
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

        game.addVisual(llave)
        game.addVisual(bicho1)
        game.addVisual(bicho2)
        game.addVisual(mago1)
        
        mago1.moverse()
        bicho1.moverse()
        bicho2.moverse()
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
        

        game.addVisual(bicho3)
        game.addVisual(bicho4)
        
        bicho3.moverse()
        bicho4.moverse()
    }
}

const nivel1 = new Escenario1()
const nivel2 = new Escenario2()