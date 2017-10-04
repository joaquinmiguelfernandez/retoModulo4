//: Reto Semana 4

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        //TODO: Check if necessary to consider Optionals due that can pass other values
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init () {
        velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        
        var texto : String
        let velocidadActual = velocidad.rawValue

        switch velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
            texto = "VelocidadBaja"
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            texto = "VelocidadMedia"
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            texto = "VelocidadAlta"
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            texto = "VelocidadMedia"
        }

        let returnAutoValues =  (velocidadActual, texto)
        return returnAutoValues
        
    }
}

var auto = Auto()

for iterator in 0...19 {
    var result = auto.cambioDeVelocidad()
    print("\(result.actual), \(result.velocidadEnCadena)")
}



