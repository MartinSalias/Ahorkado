class Ahorkado
	def initialize
	@palabra = "PRUEBA"
	@letra = "P"
    
	end

	def obtener_palabra
	return @palabra
	end

	def obtener_letra
	return @letra
	end

	def verificar_letra_palabra letra
		if @palabra.upcase.include? (letra.upcase)
			return "OK"
		else
			return "ERROR"
		end
	
	end

end
