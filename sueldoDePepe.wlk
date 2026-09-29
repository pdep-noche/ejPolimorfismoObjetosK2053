object pepe {
    var cantFaltas = 3
    var bonoPresentismo = bonoDependeDeFaltas
    var bonoResultado = bonoFijo
    var categoria = cadete

    method sueldo() {
        return categoria.neto() + bonoPresentismo.monto(cantFaltas) + bonoResultado.monto(categoria.neto())
    } 
    method categoria(unaCategoria) {
        categoria = unaCategoria
    }
     
    method bonoResultado(unBono) {
        bonoResultado = unBono
    }
        
    method bonoPresentismo(unBono) {
        bonoPresentismo = unBono
    }

    method cantFaltas(cant) {
        cantFaltas = cant
    }
}

object bonoDependeDeFaltas {
    method monto(cantFaltas){
        if (cantFaltas == 1) {
            return 500
        }
        if (cantFaltas == 0){
            return 1000
        }
        return 0
    }
}

object bonoFijo {
    method monto(_)  = 800
}

object bonoPorcentaje {
    method monto(neto) = neto * 0.1
}

object bonoNulo {
    method monto(_) = 0
}

object cadete {
    method neto() = 15000
}

object gerente {
    method neto() = 10000
}