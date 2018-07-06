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

Scenario: Mostrar cabeza
Given Pagina principal
When  Letra "q"
Then muestra imagen "5.png"

Scenario: Mostrar tronco
Given Pagina principal
When  Letra "q"
When  Letra "q"
Then muestra imagen "4.png"

Scenario: Mostrar un brazo
Given Pagina principal
When  Letra "q"
When  Letra "q"
When  Letra "q"
Then muestra imagen "3.png"

Scenario: Mostrar otro brazo
Given Pagina principal
When  Letra "q"
When  Letra "q"
When  Letra "q"
When  Letra "q"
Then muestra imagen "2.png"

Scenario: Mostrar una pierna
Given Pagina principal
When  Letra "q"
When  Letra "q"
When  Letra "q"
When  Letra "q"
When  Letra "q"
Then muestra imagen "1.png"

Scenario: Mostrar otra pierna
Given Pagina principal
When  Letra "q"
When  Letra "q"
When  Letra "q"
When  Letra "q"
When  Letra "q"
When  Letra "q"
Then muestra imagen "0.png"



