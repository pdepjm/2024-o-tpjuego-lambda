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

const vidaLlena = new Visual(
    image= "vidaLlena.png",
    position = game.at(15,20)
)

const vidaCasillena = new Visual(
    image= "vidaCasiLlena.png",
    position = game.at(15,20)
)

const vidaMedia = new Visual(
    image= "vidaMedia.png",
    position = game.at(15,20)
)

const vidaPoca = new Visual(
    image= "vidaPoca.png",
    position = game.at(15,20)
)

const vidaVacia = new Visual(
    image= "vidaVacia.png",
    position = game.at(15,20)
)

