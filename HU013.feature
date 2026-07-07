Feature: Mantener alta accesibilidad para dispositivos antiguos

    Scenario Outline: Acceso desde dispositivos compatibles
        Given el administrador utiliza un dispositivo móvil con <Android 8 0> / <IOS 11 o superior>
        When accede a la aplicación e <inicia sesion>
        Then el sistema permitirá el acceso a todas las <funcionalidades principales>
        And no presentará errores de compatibilidad durante su uso.
        Input
        Sistema operativo: <Android 8 0> / <IOS 11 o superior>
        Boton: <inicia sesion>
        Output
        Funcionalidades: <funcionalidades principales>
        Examples:
            | Sistema operativo | Boton         | Funcionalidades             |
            | Android 8.0       | inicia sesion | funcionalidades principales |
            | IOS 11            | inicia sesion | funcionalidades principales |

    Scenario Outline: Visualización de la interfaz
        Given el administrador utiliza un dispositivo móvil con <Android 8 0 > / <IOS 11 o superior>
        When navega por las diferentes <secciones> del sistema
        Then la interfaz se adaptará correctamente al dispositivo, cambiando el tamaño de los objetos en pantalla como <cajas>,
        <textos>, <barras de busqueda>, <entre otros>
        Input
        Sistema operativo: <Android 8 0 > / <IOS 11 o superior>
        Sección: <secciones>
        Output
        Tamaño de objetos en pantalla: <cajas> <textos> <barras de búsqueda>
        Examples:
            | Sistema operativo | Sección   | Tamaño de objetos en pantalla |
            | Android 8.0       | secciones | cajas                         |
            | Android 8.0       | secciones | textos                        |
            | Android 8.0       | secciones | barras de búsqueda            |
            | IOS 11            | secciones | cajas                         |
            | IOS 11            | secciones | textos                        |
            | IOS 11            | secciones | barras de búsqueda            |