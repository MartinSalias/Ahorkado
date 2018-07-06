require 'sinatra'
require './lib/ahorkado.rb'

get '/' do
	@@l=Ahorkado.new "prueba"
	@palabra_oculta=@@l.dibujar_espacios
	@@vidas = @@l.obtener_vidas
	 erb :mainpage
end

post '/ingresarLetra' do
  @@letra=params[:proxima_letra]
	@resultado =@@l.verificar_letra_palabra @@letra
	@palabra_oculta=@@l.dibujar_espacios									
	@@vidas = @@l.obtener_vidas
	@mensaje = @@l.resultado
	erb :mainpage
end





