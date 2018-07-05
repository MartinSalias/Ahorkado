Given(/^Pagina principal$/) do
  visit '/'
l=Ahorkado.new
	@@palabra_oculta=l.dibujar_espacios	
end



Then(/^Muestra el nombre del juego "(.*?)"$/) do |nombre|
 last_response.body.should =~ /#{nombre}/m
end

Then(/^muestra guiones de la palabra "(.*?)"$/) do |guion|
l=Ahorkado.new
	@@palabra_oculta=l.dibujar_espacios	
  	
last_response.body.should =~ /#{guion}/m
end



When(/^Letra "(.*?)"$/) do |letra|
	  fill_in("proxima_letra", :with => letra)
	 click_button("Ingresar")
end


Then(/^Muestra Leyenda "(.*?)"$/) do |leyenda|
 last_response.body.should =~ /#{leyenda}/m
end

