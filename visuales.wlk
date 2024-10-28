import isaac.*
import nivel.*
import wollok.game.*

class Visual{
    var property image 
    var property position = game.origin()  
}

const inicioDelJuego = new Visual(
    image = "pantallaDeCarga.png",
    position = game.at(0,0)
)

const fondoDelJuego = new Visual(
    image = "nivel.png",
    position = game.at(0,0)
)

const muerte = new Visual(
    image = "muerte.png",
    position = game.center()
)

