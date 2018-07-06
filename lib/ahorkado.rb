class Ahorkado

	def initialize palabra
		@palabra = palabra.upcase
		@mascara = "_" * @palabra.length
	end

	def obtener_palabra
		return @palabra
	end

	def verificar_letra_palabra letra
		if @palabra.upcase.include? (letra.upcase)
			
			pos = 0
			@palabra.upcase.each_char do |char|
				if char == letra.upcase
					@mascara[pos] = letra.upcase
				end
				pos += 1
			end

			return "OK"
		else
			return "ERROR"
		end
	
	end

   def dibujar_espacios
		return @mascara.split("").join " "
   end
   
end
