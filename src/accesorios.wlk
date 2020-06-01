object farolito {
	
	method peso(){ return 0.5 }
	method carga(){ return 0 }
	method tieneLuz(){ return true }
}

class Canasto {
	var property volumen
	
	method peso(){ return volumen / 10 }
	method carga(){ return volumen * 2 }
	method tieneLuz(){ return false }
}

class MorralDeBici {
	var property largo
	var tieneLuz = true
	
	method tieneOjoDeGato(){ tieneLuz = true }
	
	method noTieneOjoDeGato(){ tieneLuz = false }
	
	method peso(){ return 1.2 }
	method carga(){ return largo / 3 }
	method tieneLuz(){ return tieneLuz }
}

/*
 	Ya que los valores de los accesorios se suelen calcular de diferentes maneras,
	habria que agregar una clase para cada accesorio para que entiendan los mismos
	mensajes independientemente de la cantidad que se creen.
 */