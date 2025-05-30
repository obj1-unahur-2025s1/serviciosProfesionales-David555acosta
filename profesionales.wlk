import universidad.*

class Vinculados {
    var universidad
    method universidad(uniX) {universidad = uniX} 
    method universidad() = universidad 

    method honorarios() = universidad.honorarios()

    method provinciasDondePuedeTrabajar() = #{universidad.provinciasDondePuedeTrabajar()}

    method cobrar(cantidad) {
      universidad.recibirDonacion(cantidad / 2)
    }  
}


class AsociadosDelLitoral {
    var universidad
    method universidad(uniX) {universidad = uniX} 
    method universidad() = universidad

    method provinciasDondePuedeTrabajar() = #{"Entre rios", "Santa fe" , "Corrientes"}

    method honorarios() {return 3500}

    method cobrar(cantidad) {
        asociacionLitoral.recibirDonacion(cantidad)
    }
}



class Libres {
    var universidad
    var honorarios
    var totalRecaudado = 0
    const provincias = #{}
    method agregarProvincia(provX) {
        provincias.add(provX)
    }

    method quitarProvincia(provX) {
      provincias.remove(provX)
    }

    
    method universidad(uniX) {universidad = uniX} 
    method universidad() = universidad

    method honorarios(cantidad) {honorarios = cantidad}
    method honorarios() = honorarios

    method provinciasDondePuedeTrabajar() = provincias

    method cobrar(cantidad) {
      totalRecaudado += cantidad
    }

    method pasarDinero(monto , profesional) {
      totalRecaudado -= monto.min(totalRecaudado)
      profesional.cobrar((monto).min(totalRecaudado))
    }
}
