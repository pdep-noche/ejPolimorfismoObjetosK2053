object ask {
    const pokemones = []

    method esGroso() = pokemones.all({pokemon => pokemon.nivel() > 100})
    method pokemonPreferido() = pokemones.max({pokemon => pokemon.potenciaAtaqueMasPotente()})

    method pokemonesPulenta() = pokemones.filter({pokemon => pokemon.esPulenta()})
}

object charizard {
    var ataque = lanzallamas
 
    method nivel() = ataque.potencia()
    method aprenderAtaque(unAtaque) {
        ataque = unAtaque
    }
    method potenciaAtaqueMasPotente() = ataque.potencia()

    method esPulenta() = false

 }

object pikachu {
    const ataques = []

    method nivel() = ataques.sum({ataque => ataque.potencia()})
    method esPulenta() = ataques.size() > 2

    method aprenderAtaque(unAtaque) {
        ataques.add(unAtaque)
    }

    method potenciaAtaqueMasPotente() = ataques.max({ataque => ataque.potencia()}).potencia()

}

object psyduck {
    method nivel() = 0

    method potenciaAtaqueMasPotente() = 0
    method esPulenta() = false
}

object blastoise {
    var ataquePrincipal = hidrobomba
    var ataqueDeReserva = rayoDeHielo

    method nivel() = ataquePrincipal.potencia() + ataqueDeReserva.potencia()

    method potenciaAtaqueMasPotente() = ataquePrincipal.potencia().max(ataqueDeReserva.potencia())

    method aprenderAtaque(unAtaque) {
        ataqueDeReserva = ataquePrincipal
        ataquePrincipal = unAtaque
    }
    method esPulenta() = false
}

object lanzallamas {
    method potencia() = 5
}

object hidrobomba {
    var property potencia = 7
}

object rayoDeHielo {
    method potencia() = 1
}