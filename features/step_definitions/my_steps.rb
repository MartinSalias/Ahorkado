Given(/^Pagina principal$/) do
  visit '/'
end

When(/^cuando ingreso$/) do
   visit '/'
end

Then(/^Muestra el nombre del juego "(.*?)"$/) do |nombre|
 last_response.body.should =~ /#{nombre}/m
end

