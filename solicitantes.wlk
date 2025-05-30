import universidad.*
import empresa.*
import profesionales.*

class Persona {
    var property provincia

    method puedeSerAtendido(profX) {
      return profX.provinciasDondePuedeTrabajar().contains(provincia)
    } 
}


class Institucion {
    const universidadesReconocidas = #{}

    method agregarUniversidad(uniX) {
      universidadesReconocidas.add(uniX)
    }

    method eliminarUniversidad(uniX) {
      universidadesReconocidas.remove(uniX)
    }

    method puedeSerAtendido(profX) {
      return universidadesReconocidas.contains(profX.universidad())
    }
}


class Club {
    var property provincias = #{}

    method puedeSerAtendido(profX) {
      return !provincias.intersection(profX.provinciasDondePuedeTrabajar()).isEmpty()
    }
}


