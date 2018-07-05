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

it "letraEnPalabraError" do
	ahorkado = Ahorkado.new
	letra = "h"
	ahorkado.verificar_letra_palabra(letra).should == "ERROR"
end


it "letraEnPalabraOk" do
	ahorkado = Ahorkado.new
	ahorkado.verificar_letra_palabra("e").should == "OK"
end



end

