Feature: Crear reporte de incidencia

    Scenario Outline: Seleccionar modo anónimo
        Given el residente realiza un <reporte>
        And no quiere mostrar su info
        When deja vacío el campo donde se ingresa su <nombre> en el reporte
        And lo manda rellenando los <campos obligatorios>
        Then el sistema verificará que el <reporte> ha sido rellenado con los campos de <categoria>,<Descripcion>,<Fecha del incidente>,
        pero no se incluyó el <nombre> se enviará bajo un nombre <Anonimo>
        Input
        Nombre: <nombre>
        Campos obligatorios: <categoria>, <Descripcion>, <Fecha del incidente>
        Output
        Datos reporte: <Anonimo>, <nombre>, <categoria>, <Descripcion>, <Fecha del incidente>
        Examples:
            | Nombre       | Categoria       | Descripcion                           | Fecha del incidente |
            | Piero Burgos | Fuga de agua    | La tuberia de mi casa esta rota       | 30/06/2026          |
            | Lizandro D.  | Rajadura: piso  | Me cai de mi cama y se rompio el piso | 01/07/2026          |
            | ANONIMO      | Estado Elevador | El elevador tiene vomito              | 03/07/2026          |

    Scenario Outline: Seleccionar fecha
        Given ocurre un incidente
        And el residente realiza un reporte
        When presiona el botón <fecha> y selecciona una fecha del <calendario>
        Then el sistema muestra la <fecha seleccionada> en el formulario
        Input
        Fecha: <fecha>
        Calendario: <calendario>
        Output
        Fecha seleccionada: <fecha seleccionada>
        Examples:
            | Calendario         | Fecha seleccionada |
            | 28 29 30 1 2 3  4  | 30/06/2026         |
            | 5  6  7  8 9 10 11 | 06/07/2026         |

    Scenario Outline: Rellenar descripción
        Given ocurre un incidente
        And el residente realiza un reporte
        When escribe una <descripcion> en el campo correspondiente
        Then el sistema permite enviar el <reporte>.
        And si no coloca una <descripcion>, el reporte no se puede guardar.
        Input
        Descripcion: <descripcion>
        Output
        Reporte: <reporte>
        Examples:
            | Descripcion                     | Reporte     |
            | [Texto vacio]                   | No guardado |
            | La tuberia de mi casa esta rota | Guardado    |

    Scenario Outline: Adjuntar fotos
        Given el residente registra un incidente,
        And desea incluir una <foto>
        When presionar el botón de <adjuntar foto>
        And se sube el archivo en formato <JPG>, <JPEG> o <PNG>
        And presiona el boton <enviar foto>
        Then la <foto> se adjuntará con el reporte realizado por el residente.
        Input
        Adjuntar foto: <JPG>, <JPEG> o <PNG>
        Output
        Enviar foto: <foto>
        Examples:
            | Adjuntar foto | Enviar foto |
            | Foto JPG      | Enviado     |
            | Foto JPEG     | Enviado     |
            | Foto PNG      | Enviado     |