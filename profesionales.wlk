import universidad.*

class Vinculados {
    var universidad
    method universidad(uniX) {universidad = uniX} 
    method universidad() = universidad 

    method honorarios() = universidad.honorarios()

    method provinciasDondePuedeTrabajar() = #{universidad.provinciasDondePuedeTrabajar()}  
}


class AsociadosDelLitoral {
    var universidad
    method universidad(uniX) {universidad = uniX} 
    method universidad() = universidad

    method provinciasDondePuedeTrabajar() = #{"Entre rios", "Santa fe" , "Corrientes"}

    method honorarios() {return 3500}
}


class Libres {
    var universidad
    var honorarios
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
}
