Given(/^Pagina principal$/) do
  visit '/'
end

Then(/^Muestra el nombre del juego "(.*?)"$/) do |nombre|
 last_response.body.should =~ /#{nombre}/m
end

Then(/^muestra guiones de la palabra "(.*?)"$/) do |guion|
	last_response.body.should =~ /#{guion}/m
end

When(/^Letra "(.*?)"$/) do |letra|
	 fill_in("proxima_letra", :with => letra)
	 click_button("Ingresar")
end

Then(/^Muestra Leyenda "(.*?)"$/) do |leyenda|
 last_response.body.should =~ /#{leyenda}/m
end

Then(/^Muestra contador de vidas "(.*?)"$/) do |vidas|
 last_response.body.should =~ /#{vidas}/m
end

Then(/^Muestra "(.*?)"$/) do |resultado|
  last_response.body.should =~ /#{resultado}/m
end

Given(/^palabra secreta es "(.*?)"$/) do |palabra|
	@@l=Ahorkado.new palabra
end

Given(/^avance es "(.*?)"$/) do |letras|
	letras.each_char {|letra| @@l.verificar_letra_palabra letra }
end

Then(/^muestra boton "(.*?)"$/) do |nombre|
  last_response.body.should =~ /#{nombre}/m
end

Then(/^muestra imagen "(.*?)"$/) do |imagen|
  last_response.body.should =~ /#{imagen}/m
end
