import Materias.*
import Carreras.*

class Estudiante {

	var property carreras = []
	var property aprobadas = []

	method agregarCarrera(unaCarrera) {
		carreras.add(unaCarrera)
	}

	method agregarMateriaAprobada(unaMateria, unaNota) {
		aprobadas.add(unaMateria)
	}

	method aprobarMateria(unaMateria, unaNota) {
		if (!self.tieneAprobada(unaMateria)) {
			self.agregarMateriaAprobada(unaMateria, unaNota)
		}
	}

	method tieneAprobada(materia) {
		return aprobadas.any{ unaAprobada => unaAprobada == materia }
	}

	method creditosObtenidos() {
		return aprobadas.sum{ aprobada => aprobada.credito() }
	}

	method puedeCursar(unaMateria) {
		return not self.tieneAprobada(unaMateria) 
		and carreras.laMateriaEstaEnLacarrera(unaMateria)
		and unaMateria.puedeCursar()
	}

}

