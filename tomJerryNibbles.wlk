object tom {
    var energia = 50

    method comer(unRaton){
        energia = 1000.min(energia + 12 + unRaton.peso())
        unRaton.serComido()
    }
    method correr(distancia){
        energia = 0.max(energia - distancia/2)
    }
    method velocidadMaxima(){
        return 5 + energia/10
    }
    method energia(){
        return energia
    }
    method puedeCazar(unaDistancia){
        return energia >= unaDistancia / 2
    }
    method cazar(unRaton, unaDistancia){
        if (self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
    
}

object jerry {
  var edad = 2
  method peso(){
    return edad *20
  }
  method cumplirAños(){
    edad = edad + 1
  }
  method serComido(){
  }
}

object nibbles {
  method peso(){
    return 35
  }
  method serComido(){
  }
}

// Inventar otro ratón

object perez {
  var estaSeco = true
  method peso(){
    if (estaSeco){
        return 20
    }else{
        return 30
    }
  }
  method serComido(){
    estaSeco = false
  }
}