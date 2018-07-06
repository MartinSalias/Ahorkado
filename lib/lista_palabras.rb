class Lista_palabras 


	def initialize

			@lista_palabras = %w{ CASA PERRO PRUEBA GATO PEYORATIVO Misantropia  hipofisis hipotalamo Ventriculo esclerosis necrosis isquemia filantropia Epilepsia}
	end

	def devolver_palabra
		return devolver_palabra_posicion rand(@lista_palabras.length)

	end

	def devolver_palabra_posicion(indice)
		 return @lista_palabras[indice].upcase
	end

	
end
