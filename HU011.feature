Feature: Consultar avance del reporte

    Scenario Outline: Ver estado actual del reporte
        Given existe un <reporte registrado>
        And el residente quiere ver su estado del reporte
        When selecciona el botón <estado del reporte> dentro de la aplicación
        Then el sistema mostrará el estado actual de la incidencia <Pendiente> <En Proceso> <Resuelto>
        Input
        Reporte: <reporte registrado>
        Boton: <estado del reporte>
        Output
        Estado del reporte: <Pendiente> <En Proceso> <Resuelto>
        Examples:
            | Reporte            | Boton              | Estado del reporte |
            | reporte registrado | estado del reporte | Pendiente          |
            | reporte registrado | estado del reporte | En Proceso         |
            | reporte registrado | estado del reporte | Resuelto           |

    Scenario Outline: Consulta del avance
        Given el <reporte permanece activo> dentro del sistema
        And el residente quiere consultar su avance
        When presiona el botón de <seguimiento de reportes>
        And observe el estado del reporte
        Then podrá consultar el avance de su incidencia en cualquier momento
        And los <datos> más reciente relacionada con su atención
        Input
        Reporte: <reporte activo>
        Boton: <seguimiento de reportes>
        Output
        Datos: <administrador encargado> <fecha> <estado del reporte> <descripcion>
        Examples:
            | Reporte        | Boton                   | Datos                   |
            | reporte activo | seguimiento de reportes | administrador encargado |
            | reporte activo | seguimiento de reportes | fecha                   |
            | reporte activo | seguimiento de reportes | estado del reporte      |
            | reporte activo | seguimiento de reportes | descripción             |