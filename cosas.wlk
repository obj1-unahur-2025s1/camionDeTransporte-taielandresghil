object knightRider {
    method peso() = 500
    method peligrosidad() = 10
}

object bumblebee {
    method peso() = 800
    method peligrosidad() = estado.peligrosidad()
    var property estado = auto
    method cambiarEstado() {
        estado = estado.cambiarEstado()
    }
    
}

object auto {
    method peligrosidad() = 15
    method cambiarEstado() {return robot}
}

object robot {
    method peligrosidad() = 30
    method cambiarEstado() {return auto}
}

object paqueteLadrillos {
    var property cantidad = 0
    method peso() = cantidad * 2
    method peligrosidad() = 2
}

object arenaAGranel {
    var property peso = 0
    method peligrosidad() = 1
}

object bateriaAntiarea {
    var property misiles = true
    method peso() = if (bateriaAntiarea.misiles) 300 else 200
    method peligrosidad() = if (bateriaAntiarea.misiles) 100 else 0
    method cargarMisiles() {misiles = true}
    method descargarMisiles() {misiles = false}
}

object contenedorPortuario {
    const contenedor = [] 
    method peso() = 100 + self.pesoDeContenedor()
    method pesoDeContenedor() = contenedor.sum({unaCosa => unaCosa.peso()})
    method peligrosidad() = if (contenedor.isEmpty()) 0 else contenedor.max({unaCosa => unaCosa.peligrosidad()}).peligrosidad()
    method agregarUnaCosa(unaCosa) {
        contenedor.add(unaCosa)
    } 
    method sacarUnaCosa(unaCosa) {
        if (contenedor.contains(unaCosa)) {
            contenedor.remove(unaCosa)
        } 
    }
}

object residuosRadioactivos {
    var property peso = 0
    method peligrosidad() = 200
}

object embalajeDeSeguridad {
    var cosaEnvuelta = knightRider
    method envolver(unaCosa){
        cosaEnvuelta = unaCosa
    }
    method peso(){
        return cosaEnvuelta.peso()
    }
    method peligrosidad(){
        return cosaEnvuelta.peligrosidad() * 0.5
    }
}