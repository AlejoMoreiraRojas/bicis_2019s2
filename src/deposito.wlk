import bicis.*
import accesorios.*

class Deposito {
	const property bicisGuardadas = []
	
	method agregarBici(unaBici){
		bicisGuardadas.add(unaBici)
	}
	
	method bicisMasRapidas(){
		const lasRapidas = {unaBici => unaBici.velocidadCrucero() > 25}
		return bicisGuardadas.filter(lasRapidas)
	}
	
	method todasLasMarcas(){
		const marcas = {unaBici => unaBici.marca()}
		return bicisGuardadas.map(marcas).asSet()
	}
	
	method esNocturno(){
		const tienenLuz = {unaBici => unaBici.tieneLuz()}
		return bicisGuardadas.all(tienenLuz)
	}
	
	method puedeLlevarCarga(kilogramos){
		const puedeLlevar = {unaBici => unaBici.carga() > kilogramos}
		return bicisGuardadas.any(puedeLlevar)
	}
	
	method marcaDeLaMasRapida(){
		const velocidad = {unaBici => unaBici.velocidadCrucero()}
		return self.bicisMasRapidas().max(velocidad).marca()
	}
	
	method bicisMasLargasQue(unLargo){
		const lasMasLargas = {unaBici => unaBici.largo() > unLargo}
		return bicisGuardadas.filter(lasMasLargas)
	}
	
	method cargaDeLasMasLargas(){
		const cargas = {unaBici => unaBici.carga()}
		return self.bicisMasLargasQue(170).sum(cargas)
	}
	
	method bicisSinAccesorios(){
		const sinAccesorios = {unaBici => unaBici.accesorios().size() == 0}
		return bicisGuardadas.count(sinAccesorios)
	}
	
	method esCompaniera(bici){
		const esCompa = { unaBici => bici.sonCompanieras(unaBici)}
		return bicisGuardadas.filter(esCompa)
	}
}