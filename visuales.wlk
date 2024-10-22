import isaac.*
import nivel.*
import wollok.game.*

class Visual{
    var property image 
    var property position = game.origin()  
}

const inicioDelJuego = new Visual(
    image = "fondo.png",
    position = game.at(0,0)
)

const fondoDelJuego = new Visual(
    image = "nivel1.png",
    position = game.at(0,0)
)

