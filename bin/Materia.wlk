class Materia {

	var property TipoDeInscripcionSegun = null

}

class Aprobada {

	var property materia = null
	var property nota = null
	var property credito = null

}

class TipoDeInscripcionSegunCorrelativas {

	const property correlativas = []

	method cumple(unEstudiante,) {
		return correlativas.all{ unaMateria => unEstudiante.tieneAprobada(unaMateria) }
	}

}

class TipoDeInscripcionSegunCreditos {

}

class TipoDeInscripcionSegunAnio {

}

class TipoDeInscripcionSegunNada {

}

