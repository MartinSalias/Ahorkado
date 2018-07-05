require 'sinatra'
require './lib/ahorkado.rb'

get '/' do
	 erb :mainpage
end

post '/ingresarLetra' do
  letra=params[:proxima_letra]

	l=Ahorkado.new
	@resultado =l.verificar_letra_palabra letra 
								
	erb :mainpage
end





