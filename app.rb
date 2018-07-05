require 'sinatra'

get '/' do
	 erb :mainpage
end

post '/ingresarLetra' do
  letra=params[:proxima_letra]

		if letra == "Z"
			@resultado = "Fail"
		elsif letra=="A"
		  @resultado="OK"
	  end									
	erb :mainpage
end





