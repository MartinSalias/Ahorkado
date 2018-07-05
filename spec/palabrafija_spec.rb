require "./lib/ahorkado.rb"

describe "Juego de Ahorkado" do

it "palabrafija" do
	ahorkado = Ahorkado.new
	ahorkado.obtener_palabra.should == "Prueba"
end
it "letrafija" do
	ahorkado = Ahorkado.new
	ahorkado.obtener_letra.should == "P"
end

it "letraEnPalabra" do

	ahorkado = Ahorkado.new
	ahorkado.verificar_letra_palabra("P").should == "OK"
end

it "letraEnPalabra" do

	ahorkado = Ahorkado.new
	letra = "E"
	ahorkado.verificar_letra_palabra(letra).should == "ERROR"
end
end

