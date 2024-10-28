import wollok.game.*
import isaac.*
import visuales.*
import bicho.*


object nivel{
    const anchoTotal = 33
    const altoTotal = 23
    const celdaSize = 27

    method clearGame(){
        game.allVisuals().forEach({visual => game.removeVisual(visual)})
    }
        
    method inicio(){
        game.title("The binding of isaac argento")
        game.height(altoTotal)
	    game.width(anchoTotal)
	    game.cellSize(celdaSize)
        game.addVisual(inicioDelJuego)

        keyboard.s().onPressDo({self.configuracion()})
    }

    method nivel2(){
        game.say(puerta, puerta.comoesta())
    }

    method configuracion(){ //Configuracion del juego
        self.clearGame()
        game.addVisual(fondoDelJuego)
        game.height(altoTotal)
	    game.width(anchoTotal)
	    game.cellSize(celdaSize)

        //Visuales
        game.addVisual(puerta)
        game.addVisual(pincho1)
        game.addVisual(pincho2)
        game.addVisual(pincho3)
        game.addVisual(pincho4)
        game.addVisual(isaac)
        game.addVisual(bicho)
        
        //Movimiento de Isaac
        keyboard.up().onPressDo{isaac.moverse(isaac.position().up(1))}
        keyboard.down().onPressDo{isaac.moverse(isaac.position().down(1))}
        keyboard.left().onPressDo{isaac.moverse(isaac.position().left(1))}
        keyboard.right().onPressDo{ isaac.moverse(isaac.position().right(1))}
        
        //MovimientoEnemigos
        bicho.moverse()

        //pasar por la puerta
        game.whenCollideDo(puerta, {nivel => nivel.nivel2()})
        game.whenCollideDo(isaac , {obstaculo => obstaculo.lastimar()})
    }

    method muerte(){
        
        game.stop()
        keyboard.s().onPressDo({self.configuracion()})

    }
}