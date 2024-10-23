import wollok.game.*
import isaac.*
import nivel.*


class Enemigo{

    var subiendo = true
    var property position = game.at(20,3)

    method image() = "enemigo.png"

    method subir() {
        if(position.y() < 15 ){
            position = position.up(1)
        }
    }

    method bajar(){
        if(position.y() > 3){
            position = position.down(1)
        }
    }

    method moverse() {
        if(subiendo){
            game.onTick(30, "subir", {self.subir()} )
            if(position.y() == 10){
                subiendo = false
            }
        }
        if (subiendo == false){
            game.onTick(30, "bajar", {self.bajar()} )
        }
    }
    
    method lastimar(){
        isaac.danio(10)
    }
    
}

const bicho = new Enemigo( position = game.at(20,3))
