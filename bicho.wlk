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
    var contador = 0

    override method image() = "mago.png"

    override method interactuar(){
        game.onTick(650 ,"danio", {self.ataque()})
    }

    method ataque(){
        isaac.danio(1)
        contador = contador + 1

        if(contador == 10){
            game.removeTickEvent("danio")
            contador = 0
        }
    }
}


class Fantasma inherits Enemigo{
    override method image() = "fantasma.png"

    override method interactuar(){
        isaac.danio(15)
        isaac.image("sinArmadura.png")
    }
}


const bicho1 = new Enemigo(subiendo = false, limiteDerecho = 28 , limiteIzquierdo = 1, position = game.at(15,6))
const bicho2 = new Enemigo(horizontal = false, limiteSuperior = 18, limiteInferior = 1, position = game.at(20,1))
const bicho3 = new Enemigo(horizontal = false, limiteSuperior= 18, limiteInferior = 1,position = game.at(16,17))
const bicho4 = new Enemigo(subiendo = false, limiteDerecho = 28, limiteIzquierdo = 1, position = game.at(15,16))
const bicho5 = new Enemigo(horizontal = false, limiteSuperior = 18, limiteInferior = 12, position = game.at(12,16))
const mago1 = new Mago(subiendo = false, limiteDerecho = 24 , limiteIzquierdo = 10, position = game.at(10,10))
const mago2 = new Mago(subiendo = false, limiteDerecho = 22 , limiteIzquierdo = 12, position = game.at(12,6))
const mago3 = new Mago(subiendo = false, limiteDerecho = 22, limiteIzquierdo = 14, position = game.at(10,10))
const fantasma1 = new Fantasma(horizontal = false, limiteSuperior = 15 , limiteInferior = 1, position = game.at(24,3))
const fantasma2 = new Fantasma(horizontal = false, limiteSuperior = 9 , limiteInferior = 1, position = game.at(12,3))
