Feature:  Mostrar pagina con nombre del juego

Scenario:  Ingreso al juego 
Given Pagina principal
Then Muestra el nombre del juego "Ahorkado"
And muestra guiones de la palabra "_"


Scenario: Mostrar leyenda si no acerto
Given Pagina principal
When Letra "Z"
Then Muestra Leyenda "ERROR"


Scenario: Mostrar leyenda si acerto
Given Pagina principal
When Letra "A"
Then Muestra Leyenda "OK"

Scenario: Mostrar contador de vidas
Given Pagina principal
Then Muestra contador de vidas "vidas:"


