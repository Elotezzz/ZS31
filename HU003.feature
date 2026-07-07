Feature: Enviar reporte desde dispositivo móvil

    Scenario Outline: Envío exitoso del reporte
        Given el residente ha completado todos los <campos obligatorios> del <reporte>
        When presiona el botón <enviar>
        Then el <reporte> se registrará correctamente en el sistema
        Input
        Campos obligatorios: <categoria>, <Descripcion>, <Fecha del incidente>
        Boton: <enviar>
        Output
        Estado Reporte: <reporte>
        Examples:
            | Categoria  | Descripcion | Fecha del incidente | Boton  | Estado reporte |
            | Completado | Completado  | Completado          | Enviar | Enviado        |

    Scenario Outline: Campos obligatorios incompletos
        Given el residente intenta enviar un <reporte>
        When existen <campos obligatorios> sin completar
        Then el sistema mostrará un mensaje de <Falta informacion>
        Input
        Campos obligatorios: <categoria>, <Descripcion>, <Fecha del incidente>
        Boton: <enviar>
        Output
        Estado Reporte: <Falta informcacion>
        Examples:
            | Categoria  | Descripcion   | Fecha del incidente | Boton  | Estado reporte    |
            | Completado | No Completado | No Completado       | Enviar | Falta informacion |