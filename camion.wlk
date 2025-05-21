object camion {
    const cargaDelCamion = []
    method cargar(unaCosa) = cargaDelCamion.add(unaCosa)

    method descargar(unaCosa) {
        if (cargaDelCamion.contains(unaCosa)) {
            cargaDelCamion.remove(unaCosa)
        }
    }

    method pesoDelCamion() = 1000 + self.cargaDeCosas()

    method cargaDeCosas() = cargaDelCamion.sum({unaCosa => unaCosa.peso()})

    method cargaPar() = cargaDelCamion.all({unaCosa => unaCosa.peso().even()})

    method hayDePeso(unPeso) = cargaDelCamion.any({unaCosa => unaCosa.peso() == unPeso})

    method primeraConPeligrosidad(unNivel) = 
        cargaDelCamion.find({unaCosa => unaCosa.peligrosidad() == unNivel})

    method todosLosQueSuperan(unNivel) =
        cargaDelCamion.all({unaCosa => unaCosa.peligrosidad() > unNivel})

    method listaDeLosQueSuperan(unNivel) =
        cargaDelCamion.filter(self.todosLosQueSuperan(unNivel.peligrosidad()))
    
    method camionExcedido() = self.pesoDelCamion() > 2500

    method puedeCircular(unNivel) = not self.camionExcedido() and 
                                    self.todosLosQueSuperan(unNivel).isEmpty()

    method pesaEntre(min, max) = cargaDelCamion.any({e => e.peso().between(min, max)})

    method cosaMasPesa() = cargaDelCamion.max({e => e.peso()})
}