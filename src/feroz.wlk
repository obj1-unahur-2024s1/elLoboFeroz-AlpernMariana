/*Representar la siguiente versión de la historia del lobo Feroz:
El lobo va corriendo hasta el bosque. Allí se encuentra con Caperucita, 
* conversan, pero no pasa nada más. Luego, el lobo corre a la casa de la abuelita y 
* luego de comersela, se disfraza de ella.  Mientras tanto, Caperucita cruza el bosque y 
* se le cae una manzana de su canasta. 
* Cuando feroz ve llega a Caperucita a la casa, molesto
*  por las preguntas incisivas sobre su aspecto físico, abre grande su boca y se come a 
* Caperucita con canasta llena y todo. Finalmente, llega el cazador…
*  ¿El lobo también se lo come de un bocado? ¿El cazador provoca una crisis en el lobo? 
* ¿Qué otra cosa puede suceder? (Modelar al cazador de manera creativa, no trivial, y 
* consistente con lo realizado anteriormente)
* Cuando llega el cazador, tantea la situación para saber si el lobo se comió realmente
* a caperucita y su abuelita (si el lobo pesa 15 kilos o más responderá que sí). El cazador
* se enoja con el lobo, lo asusta diciendole que si sigue así lo va a llevar a la reserva natural
* del pueblo y el lobo sufre una crisis. Al volver a su peso original y sentirse con hambre y
* deprimido, no le queda otra opción que escuchar al cazador que le dice que se vuelva vegetariano 
* y le cocina una tarta de zapallitos. El lobo la come. Al no estar acostumbrado a comer vegetales,
* se siente pesado y el cazador le sugiere que vaya corriendo a la farmacia y se pese.
* Este corre hacia la farmacia a pesarse, le ofrecen pasarle suero y acepta. Consulta si está saludable para saber cómo va a 
* seguir con su alimentación.Se despide del cazador y promete que no va a comerse más a 
* ningún ser vivo. De repente, a lo lejos ve unos cerditos mochileros...
* 
* SEGUNDA PARTE:
* ## Los chanchitos:

1. Cuando el lobo sople una casa, pierde tanto peso como la resistencia de la casa 
* más el peso de los ocupantes. La casa de paja no resiste nada, la de madera tiene
* } resistencia 5 y la de ladrillos resiste 2 por cada ladrillo.

2. Representar la historia (incompleta) de los chanchitos: 
El lobo sopla primero la casa de paja, donde hay un chanchito, la hace caer y
*  el chanchito huye a la casa de madera donde estaba el otro chanchito. 
* El lobo corre hasta la casa de madera, la sopla y también la tumba, 
* por lo que ambos chanchitos huyen.
*  ¿Cómo termina la historia? ¿Se come a alguno de los chanchitos?
3. Averiguar cómo queda de saludable feroz en los diferentes finales posibles. 
* Los chanchitos se refugian en la casa de ladrillos con el tercer hermano.
* El lobo, al sentirse altamente debilitado por toda la energía que gastó, 
* se da cuenta que no va a poder con la casa que sigue. Saca de su bolso una tarta de 
* zapallitos extra que le habia cocinado el cazador y se la come. Al recuperar un poco de energía
* comienza a pensar cómo hacer. Sabe que si tumba la casa, se muere. Casualmente ve
* que el cazador anda rondando, sabe que si lo encuentra en esa situación se lo lleva
* a la reserva a comer tarta de zapallitos hasta el fin de sus días. Decide comerse
* al cazador. Lo ataca desprevenido y se lo come. Se esconde para vigilar la casa de los 
* chanchos.
* Mientras tanto, a los chanchitos se les termina la leña y la comida, uno tiene que
* sacrificarse y salir a buscar. Sale uno de ellos, el lobo lo intercepta y se lo come.
* Lloran los chanchitos y sale el segundo. Pasa lo mismo. El tercero sabe su destino si
* sale, así que se atrinchera y se pone a rezar. 
* El lobo comienza a estudiar la casa de ladrillos minuciosamente, cuenta cuántos 
* ladrillos tiene, analiza posibilidades, si no se encuentra saludable, no va a sacrificarse
* por un capricho. Se come una tarta más y se va.
* */


object caperucita{
	method peso(){return 60}
}
object abuelita{
	method peso(){return 50}
}
object cazador{
	method peso(){return 70}
	
	method loboTeLasComiste(){
		return feroz.peso()>= 15
	}
}
object canastaManzanas{
	var pesoCanasta = 1.2
	var cantidadManzanas = 6
  
  method sacarManzana(cantidadAsacar){
  	cantidadManzanas = cantidadManzanas - cantidadAsacar
  	pesoCanasta = cantidadManzanas * 0.2
  }
  
  method peso(){
  	return pesoCanasta
  }
}

object tartaZapallito{
	method peso(){return 30}	
}

object casaPaja{
	method resistencia(){return 0}
}
object casaMadera{
	method resistencia(){return 5}
}
object casaLadrillos{
	method resistencia(cantidadLadrillos){return 2*cantidadLadrillos}
}
object chanchito{
	method peso(){return 5}
}

object feroz{
    var peso = 10
    
  method estaSaludable(){
  	return peso.between(20,150)
  }
  method peso(){
  	return peso
  }
  method comer(comida){
  peso = peso + comida.peso()*0.1
  }
  method correrHaciaLugar(){
  	peso = peso - 1
  }
  method aumentarPeso(unidadAumento){
  	peso = peso + unidadAumento
  }
  method disminuirPeso(unidadPerdida){
 	peso = peso - unidadPerdida
 }
  method sufrirCrisis(){
  	peso = 10
  }
  method darSuero(){
  	peso = peso + 10
  }
  method soplarCasa(casaMaterial,cantidadOcupantes){
  	peso = peso - (casaMaterial.resistencia()+ chanchito.peso()*cantidadOcupantes)
  }
  method soplarCasaLadrillos(cantidadLadrillos, cantidadOcupantes){
  	peso = peso - (casaLadrillos.resistencia(cantidadLadrillos) + 
  	chanchito.peso()*cantidadOcupantes)
  }
}



