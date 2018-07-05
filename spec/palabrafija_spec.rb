require "./lib/ahorkado.rb"

describe "Juego de Ahorkado" do

it "palabrafija" do
	ahorkado = Ahorkado.new
	ahorkado.obtener_palabra.should == "Prueba"
end
end

