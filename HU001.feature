Feature: Cargar el sistema de manera rápida.

    Scenario Outline: Carga exitosa
        Given el residente/administrador inicia la aplicación móvil o la página web
        When presiona/entra a la <plataforma>
        And presiona el botón de <iniciar sesion> o <registrarse>.
        Then la aplicación o web debe de cargar la <pantalla correspondiente> de manera exitosa.
        Input
        Plataforma: <aplicacion movil>/<aplicacion web>
        Boton: <iniciar sesion> y <registrarse>
        Output
        Pantalla de <inicio de session>
        Pantalla de <registro de session>
        Examples:
            | Plataforma       | Boton           | Pantalla           |
            | aplicacion movil | iniciar sesion  | inicio de sesion   |
            | aplicacion movil | registro sesion | registro de sesion |
            | aplicacion web   | iniciar sesion  | inicio de sesion   |
            | aplicacion web   | registro sesion | registro de sesion |

    Scenario Outline: Falta de conexión
        Given el residente o administrador inicia la aplicación móvil o la página web
        And no cuenta con <conexion a Internet>
        When intenta acceder a la <plataforma>
        Then la página web muestra el <minijuego del dinosaurio>
        Input
        Conexion: <conexion a Internet>
        Accesi a: <plataforma>
        Output
        Falta de conexion: <minijuego del dinosaurio>
        Examples:
            | Conexion    | Plataforma               |
            | Activada    | aplicacion               |
            | Desactivada | minijuego del dinosaurio |