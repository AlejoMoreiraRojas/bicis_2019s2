import accesorios.*

class Bici {
	var property nombre
	var property rodado
	var property largo
	var property marca
	const property accesorios = []
	
	method agregarAccesorio(accesorio){
		accesorios.add(accesorio)
	}
	
	method altura(){
		return rodado * 2.5 + 15
	}
	
	method velocidadCrucero(){
		return if(largo > 120){rodado + 6} else{rodado + 2 }
	}
	
	method carga(){
		const cargaTotal = {accesorio => accesorio.carga()}
		return accesorios.sum(cargaTotal)
	}
	
	method peso(){
		const pesos = {accesorio => accesorio.peso()}
		return rodado / 2 + accesorios.sum(pesos)
	}
	
	method tieneLuz(){
		const tieneLuz = {accesorio => accesorio.tieneLuz()}
		return accesorios.any(tieneLuz)
	}
	
	method accesoriosLivianos(){
		const losLivianos = {accesorio => accesorio.peso()< 1}
		return accesorios.count(losLivianos)
	}
}