import Carrera.*
import Materia.*

class Estudiante {

	var carrera = []
	var materiasAprobadas = []

	method agregarCarrera(unaCarrera) {
		carrera.add(unaCarrera)
	}

	method agregarMateriaAprobada(unaAprobada, unaNota) {
		materiasAprobadas.add(unaAprobada)
	}

	method aprobarMateria(unaAprobada, unaNota) {
		if (unaNota >= 7) {
			self.agregarMateriaAprobada(unaAprobada, unaNota)
		}
	}

	method tieneAprobada(materia) {
		return materiasAprobadas.any{ unaAprobada => unaAprobada == materia }
	}

	method puedeCursar(unaMateria) {
		return not self.tieneAprobada(unaMateria) and carrera.laMateriaEstaEnLacarrera(unaMateria)
	}

}

