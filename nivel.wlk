import wollok.game.*
import isaac.*
import visuales.*



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
       // game.boardGround("fondo.png") //Aca hay que arreglar el fondo o poner uno nuevo (Esta feo)

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
        game.addVisual(isaac) 
        game.addVisual(puerta)
        game.addVisual(pincho1)
        game.addVisual(pincho2)
        game.addVisual(pincho3)
        game.addVisual(pincho4)
        
        //Movimiento de Isaac
        keyboard.up().onPressDo{isaac.moverse(isaac.position().up(1))}
        keyboard.down().onPressDo{isaac.moverse(isaac.position().down(1))}
        keyboard.left().onPressDo{isaac.moverse(isaac.position().left(1))}
        keyboard.right().onPressDo{ isaac.moverse(isaac.position().right(1))}

        //pasar por la puerta
        game.whenCollideDo(puerta, {nivel => nivel.nivel2()})

        
        game.whenCollideDo(isaac , {obstaculo => obstaculo.lastimar()})

        //vida Isaac

        if(isaac.vida == 100) {game.addVisual(vidaLlena)}
        if(isaac.vida == 75) {game.addVisual(vidaCasillena)}
        if(isaac.vida == 50) {game.addVisual(vidaMedia)}
        if(isaac.vida == 25) {game.addVisual(vidaPoca)}
        if(isaac.vida == 0) {game.addVisual(vidaVacia)}
    }
}