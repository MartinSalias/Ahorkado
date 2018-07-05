Feature:  Mostrar pagina con nombre del juego

Scenario:  Ingreso al juego 
Given Pagina principal
Then Muestra el nombre del juego "Ahorkado"


Scenario: Mostrar leyenda si no acerto
Given Pagina principal
When Letra "Z"
Then Muestra Leyenda "Fail"


Scenario: Mostrar leyenda si acerto
Given Pagina principal
When Letra "A"
Then Muestra Leyenda "OK"
