Feature: Filtrar reportes sin solución.

    Scenario Outline: Mostrar reportes pendientes
        Given existen <reportes registrados>
        When el administrador selecciona el filtro <Pendientes>
        Then visualizará únicamente los <reportes pendientes>
        Input
        Reporte registrado: <reportes registrados>
        Filtro reportes: <Pendientes>
        Output
        Estado Reporte: <reportes pendientes>
        Examples:
            | Reportes registrados | Filtro Reporte |
            | Reporte #01          | Pendiente      |
            | Reporte #12          | Pendiente      |
            | Reporte #17          | Pendiente      |
            | Reporte #45          | Pendiente      |

    Scenario Outline: Mostrar reportes en proceso
        Given existen <reportes registrados>
        When el administrador selecciona el filtro <En proceso>
        Then el sistema mostrará dichos reportes
        Input
        Reporte registrado: <reportes registrados>
        Filtro reportes: <En proceso>
        Output
        Estado Reporte: <reportes en proceso>
        Examples:
            | Reportes registrados | Filtro Reporte |
            | Reporte #02          | En proceso     |
            | Reporte #05          | En proceso     |
            | Reporte #08          | En proceso     |
            | Reporte #15          | En proceso     |

    Scenario Outline: Sin resultados
        Given todos los reportes han sido resueltos o no hay <reportes>
        When el administrador presione el botón para filtrar <Pendientes>
        Then el sistema indicará que <no existen reportes pendientes>
        Input
        Reporte: <reportes>
        Boton: <Pendientes>
        Output
        Reportes pendientes: <no existen reportes pendientes>
        Examples:
            | Boton     | Reportes pendientes            |
            | Pendiente | No existen reportes pendientes |
            | Pendiente | Existe 4 reportes pendientes   |
