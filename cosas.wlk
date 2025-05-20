object knightRider {
    var property peso = 500
    var property peligrosidad = 10
}

object bumblebee {
    var property peso = 800
    var property peligrosidad = auto.peligrosidad()
    var property estado = auto
    method cambiarEstado() {
        estado = estado.cambiarEstado()
    }
    
}

object auto {
    method peligrosidad() = 15
    method cambiarEstado() = robot
}

object robot {
    method peligrosidad() = 30
    method cambiarEstado() = auto
}

object paqueteLadrillos {
    
}

object arenaAGranel {
    
}

object bateriaAntiarea {

}

object contenedorPortuario {
    
}

object residuosRadioactivos {
    
}

object embalajeDeSeguridad {
    
}