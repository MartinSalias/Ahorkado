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
end

