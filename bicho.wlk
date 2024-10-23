import wollok.game.*
import isaac.*
import nivel.*


class Enemigo{
    var property position = game.at(20,3)

    method image() = "enemy.png"

    method moverse() {
    position.up(1)
    }
    method lastimar(){
        isaac.danio(10)
    }
}

const bicho = new Enemigo( position = game.at(20,3))
