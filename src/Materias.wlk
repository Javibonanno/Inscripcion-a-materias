class Materia {

	var property tipoDeInscripcionSegun = null
	var property carrera = null
	var property anio = null
	var property alumnosInscriptos = []
	var property alumnosEnEspera = []

	method puedeCursar() {
		return tipoDeInscripcionSegun.cumpleCondicion()
	}

}

class Aprobada {

	var property materia = null
	var property nota = null

}

class AlumnosEnEspera{
	
}