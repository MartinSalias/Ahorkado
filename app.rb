require 'sinatra'
require './lib/ahorkado.rb'

get '/' do
	@@l=Ahorkado.new
	@palabra_oculta=@@l.dibujar_espacios
	@@vidas =6									
	 erb :mainpage
end

post '/ingresarLetra' do
  letra=params[:proxima_letra]
	@@vidas-=1
	@palabra_oculta=@@l.dibujar_espacios									
	@resultado =@@l.verificar_letra_palabra letra 
	erb :mainpage
end





