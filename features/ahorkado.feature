Feature:  Mostrar pagina con nombre del juego

Scenario:  Ingreso al juego 
Given Pagina principal
Then Muestra el nombre del juego "Ahorkado"
And muestra guiones de la palabra "_"
And muestra boton "Nuevo Juego"
And muestra imagen "6.png"

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

Scenario: Mostrar resultado ganador
Given Pagina principal
And palabra secreta es "telefono"
And avance es "elefono"
When Letra "t"
Then Muestra "GANO"

Scenario: Mostrar resultado perdedor
Given Pagina principal
When Letra "q"
When Letra "q"
When Letra "q"
When Letra "q"
When Letra "q"
When Letra "q"
Then Muestra "PERDIO"

Scenario: Mostrar resultado continuar
Given Pagina principal
When Letra "p"
When Letra "r"
When Letra "u"
When Letra "e"
When Letra "b"
Then Muestra "CONTINUAR"



