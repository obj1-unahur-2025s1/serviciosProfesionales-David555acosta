class Universidad {
    var totalRecaudado = 0
    var property provincia
    var property honorarios

    method recibirDonacion(cantidad) {
      totalRecaudado += cantidad
    }
}

object asociacionLitoral {
    var totalRecaudado = 0

    method recibirDonacion(cantidad) {
        totalRecaudado += cantidad
    }  
}