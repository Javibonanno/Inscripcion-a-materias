class Carrera {

	var materias = []
	
	method agregarMateria(unaMateria){
		materias.add(unaMateria)
	}
	method laMateriaEstaEnLacarrera(unaMateria) {
		return materias.contains(unaMateria)
	}
	
}

