class Materia {

	var property tipoDeInscripcionSegun = null
	var property anio = 0
	var property cupo = 0
	var property alumnosInscriptos = []
	var property alumnosEnEspera = []

	method puedeCursar() {
		return tipoDeInscripcionSegun.cumpleCondicion()
	}

	method puedeInscribirse(unEstudiante)

	method darDeBaja(unEstudiante) {
		alumnosInscriptos.remove(unEstudiante)
		if (!alumnosEnEspera.isEmpty()) {
			alumnosInscriptos.add(alumnosEnEspera.first())
			alumnosEnEspera.remove(alumnosEnEspera.first())
		}
	}

}

class Aprobada {

	var property materia = null
	var property nota = null

}

class OrdenDeLlegada inherits Materia {

	override method puedeInscribirse(unEstudiante) {
		if (unEstudiante.puedeCursar(self)) {
			if (alumnosInscriptos.size() < cupo) {
				alumnosInscriptos.add(unEstudiante)
			} else {
				alumnosEnEspera.add(unEstudiante)
			}
		}
	}

}

class Elitista inherits Materia {

	override method puedeInscribirse(unEstudiante) {
		return self.promedio(unEstudiante).max()
	}

	method promedio(unEstudiante) {
		return unEstudiante.aprobadas().nota().sum{ estu => estu.nota() / unEstudiante.aprobadas().size() }
	}

}

class GradoDeAvance inherits Materia {

	override method puedeInscribirse(unEstudiante) {
		return self.materiasAprobadas(unEstudiante).max()
	}

	method materiasAprobadas(unEstudiante) {
		return unEstudiante.aprobadas().size()
	}

}

