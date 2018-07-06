require "./lib/lista_palabras.rb"

describe "Lista de palabras" do

	it "devolver_palabra_not_nil" do
			lista= Lista_palabras.new
			lista.devolver_palabra.should_not ==nil
	end

	it "devolver palabra de primera  posicion" do
			lista= Lista_palabras.new
			lista.devolver_palabra_posicion(0).should =="CASA" 
			
	end


end


