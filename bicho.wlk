import wollok.game.*
import isaac.*
import nivel.*


class Enemigo{

    var subiendo = true
    var property position = game.at(20,3)

    method image() = "enemigo.png"

    method moverse() {game.onTick(200, "movimiento", {self.movimiento()})}

    method movimiento(){
        if(position.y()<15 and subiendo){
            position = position.up(1)
        }else{
            position = position.down(1)
        if(position.y()>3){
            subiendo=false
            }
        if(position.y() == 3){
                subiendo = true
            }
        }
    }
    
    method lastimar(){
        isaac.danio(10)
    }  
}

const bicho = new Enemigo( position = game.at(20,3))
