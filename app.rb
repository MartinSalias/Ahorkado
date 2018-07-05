require 'sinatra'
require './lib/ahorkado.rb'

get '/' do
	l=Ahorkado.new
	@@palabra_oculta=l.dibujar_espacios									
	
	 erb :mainpage
end

post '/ingresarLetra' do
  letra=params[:proxima_letra]

	l=Ahorkado.new
	@@palabra_oculta=l.dibujar_espacios									
	@resultado =l.verificar_letra_palabra letra 
	erb :mainpage
end





