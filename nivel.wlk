import wollok.game.*
import isaac.*
import visuales.*
import bicho.*
import obstaculos.*

object pantallaCarga{
    const anchoTotal = 33
    const altoTotal = 23
    const celdaSize = 27
        
    method inicio(){
        game.title("El reino de las arenas")
        game.height(altoTotal)
	    game.width(anchoTotal)
	    game.cellSize(celdaSize)
        game.addVisual(inicioDelJuego)

        keyboard.s().onPressDo({nivel.configuracion()})
    }
}

object nivel{
    var escenarioActual = nivel1

    method clearGame(){
        game.allVisuals().forEach({visual => game.removeVisual(visual)})
    }

    method cambiarEscenario(nivel){
        escenarioActual = nivel

        self.clearGame()
        game.addVisual(fondoDelJuego)
        escenarioActual.aniadirIsaac()
        escenarioActual.visuales()
    }

    method configuracion(){ //Configuracion del juego
        self.clearGame()
        game.addVisual(fondoDelJuego)

        //Visuales
        escenarioActual.aniadirIsaac()
        escenarioActual.visuales()

        //Movimiento de Isaac
        keyboard.up().onPressDo{isaac.moverse(isaac.position().up(1))}
        keyboard.down().onPressDo{isaac.moverse(isaac.position().down(1))}
        keyboard.left().onPressDo{isaac.moverse(isaac.position().left(1))}
        keyboard.right().onPressDo{ isaac.moverse(isaac.position().right(1))}

        //pasar por la puerta
        game.whenCollideDo(puerta1, {nivel => nivel.avanzarNivel()})
        game.whenCollideDo(isaac, {obstaculo => obstaculo.lastimar()})
    }


    method muerte(){
        self.clearGame()
        pantallaCarga.inicio()
    }


    method reinicio(){
        keyboard.r().onPressDo{self.clearGame()}
        pantallaCarga.inicio()
    }
}

class Escenario{
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
        game.addVisual(bicho1)
        
        bicho1.moverse()
    }
}

class Escenario2 inherits Escenario{
    override method visuales(){ 
        game.addVisual(puerta2)
        game.addVisual(bicho2)
        game.addVisual(bicho3)
        
        bicho2.moverse()
    }
}

const nivel1 = new Escenario1()
const nivel2 = new Escenario2()