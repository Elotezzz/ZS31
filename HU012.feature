Feature: Ver historial de reportes

    Scenario Outline: Consultar reportes antiguos
        Given el administrador quiere consultar reportes antiguos
        And revisar cómo los resolvieron
        When el presione el botón de <historial de reportes>
        And seleccione el <reporte> querido.
        Then podrá visualizar los <datos> anteriores registrados en el reporte.
        Input
        Boton: <historial de reportes>
        Reporte: <reporte>
        Output
        Fecha resolución: <fecha>
        Administrador encargado: <administrador>
        Examples:
            | Boton                 | Reporte              | Datos                   | Fecha resolución | Administrador  encargado |
            | historial de reportes | reporte seleccionado | fecha resolución        | fecha            | administrador            |
            | historial de reportes | reporte seleccionado | administrador encargado | fecha            | administrador            |