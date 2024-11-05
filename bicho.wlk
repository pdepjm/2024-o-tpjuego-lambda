import wollok.game.*
import isaac.*
import nivel.*
import obstaculos.*


class Enemigo{

    var subiendo = true
    var property position = game.at(20,3)

    method image() = "enemigo.png"

    method moverse() {game.onTick(400, "movimiento", {self.movimientoVertical()})}

    method movimientoVertical(){
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

const bicho1 = new Enemigo( position = game.at(20,3))
const bicho2 = new Enemigo( position = game.at(10,3))
const bicho3 = new Enemigo( position = game.at(20,3))
