import universidad.*
import profesionales.*

class Empresa {
    const profesionales = #{}
    var property honorarioReferencia

    method cuantosEstudiaronEnUniX(uniX){
        return profesionales.count({p => p.Universidad() == uniX})
    }

    method profesionalesCaros() {
      return profesionales.filter({p => p.honorarios() > honorarioReferencia})
    }

    method universidadesFormadoras() {
      return profesionales.map({p => p.universidad()}).asSet()
    }

    method profesionalMasBarato() {
      return profesionales.min({p => p.honorarios()})
    }

    method esDeGenteAcotada() {
      return profesionales.all({p => p.provinciasDondePuedeTrabajar()}.size() >= 3)
    }

    method puedeSatisfacerSolicitante(soliX) {
      return profesionales.any({p => soliX.puedeSerAtendido(p)})
    }
}