import wollok.game.*
import isaac.*
import nivel.*
import obstaculos.*

class Enemigo{

    var subiendo = true
    var horizontal = true
    var property moverse = true
    var property position = game.at(20,3)

    const limiteSuperior = 15
    const limiteInferior = 3
    const limiteDerecho = 15
    const limiteIzquierdo = 3

    method image() = "enemigo.png"

    method moverse() =
        if(moverse && subiendo){
            game.onTick(400, "movimiento", {self.movimientoVertical()})
            moverse = false
            }
        else if (moverse && horizontal){
            game.onTick(400, "movimiento", {self.movimientoHorizontal()})
            moverse = false
        }

    method movimientoVertical(){
        if(position.y()<limiteSuperior and subiendo){
            position = position.up(1)
        }else{
            position = position.down(1)
            if(position.y() > limiteInferior){
                subiendo=false
                }
            if(position.y() == limiteInferior){
                subiendo = true
                }
        }
    }

    method movimientoHorizontal(){
        if(position.x()< limiteDerecho and horizontal){
            position = position.right(1)
        }else{
            position = position.left(1)
            if(position.x()> limiteIzquierdo){
                horizontal = false
                }
            if(position.x() == limiteIzquierdo){
                horizontal = true
                }
        }
    }
    method interactuar(){
        isaac.danio(10)
    }  
}

class Mago inherits Enemigo{

    override method image() = "mago.png"

    override method interactuar(){
        game.onTick(300 ,"danio", {isaac.danio(5)})
        
        if(isaac.vida() < 50){
            game.removeTickEvent("danio")
        }
    }
}

const bicho1 = new Enemigo(subiendo = false, limiteDerecho = 28 , limiteIzquierdo = 1, position = game.at(15,6))
const bicho2 = new Enemigo(horizontal = false, limiteSuperior = 18, limiteInferior = 1, position = game.at(20,1))
const bicho3 = new Enemigo(horizontal = false, limiteSuperior= 18, limiteInferior = 1,position = game.at(16,17))
const bicho4 = new Enemigo(subiendo = false, limiteDerecho = 28, limiteIzquierdo = 1, position = game.at(15,16))
const mago1 = new Mago(subiendo = false, limiteDerecho = 28 , limiteIzquierdo = 1, position = game.at(10,10))