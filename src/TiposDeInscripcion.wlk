class Correlativa {

	const property correlativas = []

	method cumple(unEstudiante) {
		return correlativas.all{ unaMateria => unEstudiante.tieneAprobada(unaMateria) }
	}

}

class Credito {

	var property credito = null

	method cumpleCondicion(unEstudiante, materia) {
		return unEstudiante.creditosObtenidos() > credito
	}

}

class Anio {

	method anioAnterior(materia) {
		return materia.carrera().materias().filter{ mat => mat.anio() == (materia.anio() - 1) }
	}

	method cumpleCondicion(unEstudiante, materia) {
		self.anioAnterior(materia).all{ mat => unEstudiante.tieneAprobado(mat)}
	}

}

object sinRequerimiento {

	method cumpleCondicion(unEstudiante, materia) = true

}

