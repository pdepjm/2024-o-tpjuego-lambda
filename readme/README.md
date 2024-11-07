#  EL REINO DE LAS ARENAS

UTN - Facultad Regional Buenos Aires - Materia Paradigmas de Programación

## Equipo de desarrollo: 

- Juan Jose Nogueira
- Fabricio Lopez Garro
  
## Capturas 

![Pantalla de carga](assets/pantallaDeCarga.png)
![PersonajePrincipal] (assets/peque.png)
![Puerta] (assets/puerta1.png)
![Pinchos] (assets/pinchosDefinitivo.png)
![FondoDelJuego] (assets/nive.l.png)
![Bicho] (assets/enemigo.png)
![Reja] (asssets/reja2.png)

## Reglas de Juego / Instrucciones

Llegar hasta la proxima puerta para pasar de nivel 
Una vez que supere todas las habitaciones gana el juego
Cada enemigo y obstáculo resta vida
Si el nivel de vida llega a 0, se termina el juego

- Para que el juego funcione existe un objeto nivel que contiene todos los atributos importantes. Aquí se encuentran las constantes de los límites y la variable escenarioActual, que indica cual es el nivel en el que estamos. El method inicio() es el que muestra la pantalla inicial y el título del juego. Cuando se apreta la tecla S se inicia el juego. Este cambio se realiza porque al apretar S se envia el mensaje cambiarEscenario(nivel1), que fija el escenario en el nivel 1 y agrega las visuales. Cada vez que se cambie el escenario se cambian las visuales según el nivel que le mandamos por parámetro. Cada nivel es una clase Escenario que agrega las visuales del personaje y de los otros elementos. Por el momento existen solo dos niveles, estos heredan el método para agregar a Isaac y redefinen el método visuales() para agregar los obstaculos correspondientes. Por último se encuentra el metodo configuración donde se encuentran los controles del juego y las colisiones. 
- Isaac es el personaje principal de este juego, está especificado como un OBJETO, ya que no va a existir otro como el. Isaac tiene dos variables, una de vida y una de posición, se van a ir modificando con el tiempo. Isaac  es capaz de entender el mensaje moverse(nuevaPosicion), donde dada una posición se mueve alrededor de los limites establecidos en el escenario. Otro de sus métodos es el de la vida(n), esta le resta vida a Isaac y si llega a un valor 0 el juego termina. Por último tambien entiende el mensaje avanzarNivel(), que al activarse hace que isaac pase de nivel.
- Isaac no está solo, lo acompañan varias CLASES, que obstaculizaran el entorno de nuestro personaje. Dentro de "obstaculos.wlk" se encuentran los obstaculos fijos, que no tienen movimiento alguno. Primero tenemos los pinchos, estructuras con superficies dañinas, ya que cuando el personaje colisiona con esta su vida disminuye 5 puntos.
Otra estructura son las rejas, estas no son dañinas para el jugador pero no puede pasar sobre ellas. Hay tres tipos de rejas, todas hacen lo mismo pero cada una tiene un metodo imagen() diferente. Para no copiar y pegar el metodo que interactua con el jugador tres veces. Reja1 es la superclase de las rejas, que tiene el método lastimar(), las otras rejas heredan ese comportamiento pero con imagen() redefinido para cada uno. 
Luego se encuentran las puertas, son necesarias para pasar de nivel, no emiten ningún daño y se encuentran en los los limites superiores del juego. Dentro de nivel.configuracion() se encuentra la acción que debe hacer el programa cuando isaac colisiona con la puerta. 
- Dentro de "bicho.wlk" se encuentra la clase Enemigo, obstaculo que se mueve alrededor del escenario. Este puede moverse de manera vertical o de manera horizontal. Los bichos, como los pinchos, son capaces de dañar a Isaac, por lo tanto entienden el mismo mensaje. Cuando el personaje choca con un enemigo a su nivel de vida se le restan 10 puntos.   
## Controles:

- `Up` `Down` `Left` `Right` para moverse en el juego
- `S` para iniciar

