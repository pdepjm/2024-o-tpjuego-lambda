import wollok.game.*
import isaac.*
import visuales.*



object nivel{
    const anchoTotal = 28
    const altoTotal = 12
    const celdaSize = 50

    method clearGame(){
        game.allVisuals().forEach({visual => game.removeVisual(visual)})
    }

    method inicio(){
        game.title("The binding of isaac argento")
        game.height(altoTotal)
	    game.width(anchoTotal)
	    game.cellSize(celdaSize)
        game.addVisual(inicioDelJuego)
       // game.boardGround("fondo.png") //Aca hay que arreglar el fondo o poner uno nuevo (Esta feo)

        keyboard.s().onPressDo({self.configuracion()})

    }

    method configuracion(){ //Configuracion del juego
        self.clearGame()
        game.addVisual(fondoDelJuego)
        game.height(altoTotal)
	    game.width(anchoTotal)
	    game.cellSize(celdaSize)

        //Visuales
        game.addVisual(isaac) 
        
        //Movimiento de Isaac
        keyboard.up().onPressDo{isaac.moverse(isaac.position().up(1))}
        keyboard.down().onPressDo{isaac.moverse(isaac.position().down(1))}
        keyboard.left().onPressDo{isaac.moverse(isaac.position().left(1))}
        keyboard.right().onPressDo{ isaac.moverse(isaac.position().right(1))}


    }
}