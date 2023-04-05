class Prenda {
	
	const property valor;
	const tipo;
	
	method precio() = valor * tipo.precioPorTipo(self);
	
}

class Nuevo {
	
	method precioPorTipo(prenda) = 1 ;
	
}

class Liquidacion {
	
	method precioPorTipo(prenda) =  0.5 ;
	
}

class Promocion {
	
	var valorPromocional;
	
	method precioPorTipo(prenda) =    100 - (valorPromocional / prenda.valor())
	
}

class Macowins {
	
	const ventas = [];
	
	method vender(venta) = ventas.add(venta)
	method calcularGanancias(fecha) = ventas.filter{v => v.fecha() == fecha}.sum{v => v.precio()}
	
}

class Venta {
	
	const property fecha;
	const prendas = [];
	
	method cantPrendas() = prendas.length()
	method precio() =  prendas.sum{p => p.precio()} 
	
}

 class VentaConTarjeta inherits Venta {
 	
 	const coef;
 	const cuotas
 	override method precio()= super() + self.recargo(prendas)
  	method recargo(prendas) = cuotas * coef +  prendas.sum{p=>p.precio()*0.1}
 	
 }
 
 
 
 
 
 
 
 
 
 
 
 