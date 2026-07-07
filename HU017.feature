Scenario Outline: Aceptar términos y condiciones
Given el residente/administrador descarga la app/web 
And la usa por primera vez.
When se <registra sesion>, debe aceptar los <terminos> y <condiciones> del uso de la app/web.
Then la <informacion ingresada> estará protegida legalmente en la base de datos del sistema
Input
Botón: <registra sesion>
Boton: <terminos> y <condiciones>
Output
Guarda: <informacion ingresada> en la base de datos del sistema
Examples:
|          registra sesion         |       terminos      |       condiciones      |       informacion ingresada      |
| usuario: Juan contraseña: 1234   | Acepto los términos | Acepto las condiciones | Nombre: Juan, Contraseña: 1234   |
| usuario: Khaled contraseña: 5412 | Acepto los términos | Acepto las condiciones | Nombre: Khaled, Contraseña: 5412 |
| usuario: Maria contraseña: 5678  | Acepto los términos | Acepto las condiciones | Nombre: Maria, Contraseña: 5678  |


Scenario Outline: Contraseña segura
Given que el residente/administrador descarga la app/web 
And la usa por primera vez. 
When registra sesión, crea su <usuario> y <contrasena>; 
And es segura (<8 caracteres minimos>, <1 simbolo>, <1 mayuscula>, <letras> y <numeros>).
Then se guardará la <contrasena ingresada> con su usuario.
Input
Ingresa: <usuario> y <contrasena>
Valida contraseña: <8 caracteres minimos>, <1 simbolo>, <1 mayuscula>, <letras> y <numeros>
Output
Guarda: <contrasena ingresada> con su usuario
Examples:
|     Usuario    |    Contraseña          |     8 caracteres mínimos   |  1 simbolo  | 1 mayuscula   |   1 letra  |  1 numero  | contrasena ingresada |
| usuario: Juan  | contraseña: Nazca26@   | Nazca26@ >= 8 caracteres   | @ = simbolo | N = mayuscula |  a = letra | 2 = numero |      Nazca26@        |
| usuario: Khaled| contraseña: F1Char25-/ | F1Char25-/ >= 8 caracteres | - = simbolo | F = mayuscula |  h = letra | 5 = numero |      F1Char25-/      |
| usuario: Maucho| contraseña: F2Jock27/  | F2Jock27/ >= 8 caracteres  | / = simbolo | F = mayuscula |  o = letra | 7 = numero |      F2Jock27/       |

Scenario Outline: Transmisión segura de datos
Given que el residente/administrador usa la app o la web con sus <datos>.
When realiza el <registro de sesion> o el <inicio de sesion>
Then se usa el protocolo HTTPS en la <transmision de los datos> 
And <proteccion> de cualquier intento de conexión con protocolos diferentes.
Input
Ingresa: <datos>
Botón: <registro de sesion> o <inicio de sesion>
Output
Informacion: <transmision de los datos> con protocolo HTTPS
Proteccion: <proteccion> de cualquier intento de conexión con protocolos diferentes
Examples:
|          datos                    | registro de sesion |  inicio de sesion |          transmision de los datos         |                proteccion                               |
| usuario: Jorge contraseña: 1234   |        X           |                   |  Transmisión de datos con protocolo HTTPS | Protección ante conexión de protocolos o no autorizados |
| usuario: Khaled contraseña: 5864  |                    |        X          |  Transmisión de datos con protocolo HTTPS |         Protección ante accesos no autorizados          | 
| usuario: Maucho contraseña: 9865  |        X           |                   |  Transmisión de datos con protocolo HTTPS | Protección ante conexión de protocolos o no autorizados |
