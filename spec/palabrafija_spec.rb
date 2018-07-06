require "./lib/ahorkado.rb"

describe "Juego de Ahorkado" do

	it "palabrafija" do
		ahorkado = Ahorkado.new "prueba"
		ahorkado.obtener_palabra.should == "PRUEBA"
	end


	it "letraEnPalabraError" do
		ahorkado = Ahorkado.new "prueba"
		letra = "h"
		ahorkado.verificar_letra_palabra(letra).should == "ERROR"
	end


	it "letraEnPalabraOk" do
		ahorkado = Ahorkado.new "prueba"
		ahorkado.verificar_letra_palabra("e").should == "OK"
	end

	it "dibujarespacios" do
		ahorkado = Ahorkado.new "marcadores"
		ahorkado.dibujar_espacios.should == "_ _ _ _ _ _ _ _ _ _"
	end

	it "dibuja la U" do
		ahorkado = Ahorkado.new "prueba"
		ahorkado.verificar_letra_palabra("u")
		ahorkado.dibujar_espacios.should == "_ _ U _ _ _"
	end

	it "dibujarespacios" do
		ahorkado = Ahorkado.new "marcadores"
		ahorkado.verificar_letra_palabra("a")
		ahorkado.dibujar_espacios.should == "_ A _ _ A _ _ _ _ _"
	end

	it "vidas" do
		ahorkado = Ahorkado.new "marcadores"
		ahorkado.verificar_letra_palabra("a")
		ahorkado.obtener_vidas == 6
	end

	it "quitarvidas" do
		ahorkado = Ahorkado.new "prueba"
		letra = "h"
		ahorkado.verificar_letra_palabra(letra).should == "ERROR"
		ahorkado.obtener_vidas == 5
	end

	it "obtenervidas" do
		ahorkado = Ahorkado.new "prueba"
		ahorkado.obtener_vidas == 6
	end

	it "finalizo perdiendo" do
		ahorkado = Ahorkado.new "prueba"
		ahorkado.verificar_letra_palabra("z")
		ahorkado.verificar_letra_palabra("z")
		ahorkado.verificar_letra_palabra("z")
		ahorkado.verificar_letra_palabra("z")
		ahorkado.verificar_letra_palabra("z")
		ahorkado.verificar_letra_palabra("z")
		ahorkado.resultado.should=="PERDIO"	
	end


end

