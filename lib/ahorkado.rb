require "./lib/lista_palabras.rb"

class Ahorkado

	def initialize palabra=""
		
		if palabra.empty?
			generador = Lista_palabras.new
			@palabra = generador.devolver_palabra
		else
			@palabra = palabra.upcase
		end
		@mascara = "_" * @palabra.length
		@@vidas = 6
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
			@@vidas -=1
			return "ERROR"
		end
	end
	
   def dibujar_espacios
		return @mascara.split("").join " "
   end

	def obtener_vidas
		return @@vidas
	end

	def resultado
		if @@vidas==0
			return "PERDIO"
		elsif @mascara == @palabra
   	  return "GANO" 
    else
			return "CONTINUAR" 
  end
	end


   
end
