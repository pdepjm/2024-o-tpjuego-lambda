import isaac.*
import nivel.*
import wollok.game.*

class Visual{
    var property image 
    var property position = game.origin()  
}

const inicioDelJuego = new Visual(
    image = "fondo.png",
    position = game.at(1,1)
)

const fondoDelJuego = new Visual(
    image = "liso.png", //solo para probar
    position = game.at(1,1)
)