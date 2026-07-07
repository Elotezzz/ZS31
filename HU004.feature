Feature: Garantizar una interfaz intuitiva

    Scenario Outline: Reporte rápido de incidencia
        Given el residente se encuentra en la pantalla inicial de VecindApp
        When presiona el botón de <Reportar Incidencia>
        Then el sistema debe permitirle completar y enviar el reporte en un máximo de <5 interacciones>
        Input
        Boton: <Reportar Incidencia>
        Output
        Enviar reporte: <Reporte>
        Interaccion: <Menos de 5 interacciones>
        Examples:
            | Boton               | Interaccion | Reporte    |
            | Reportar incidencia | 1           | No enviado |
            | Reportar incidencia | 2           | No enviado |
            | Reportar incidencia | 3           | Enviado    |
            | Reportar incidencia | 4           | NULLPTR    |

    Scenario Outline: Claridad visual de la interfaz
        Given el residente se encuentra en el apartado de “Reportar Incidencia”
        When ingresa los <textos> y presiona cualquier <boton>
        Then el sistema debe mostrar la caja de texto con el <texto ingresado> en un tamaño de 14px y resaltar el <boton presionado> para evitar errores
        Input
        Texto: <textos>
        Boton: <Adjuntar foto>, <Enviar reporte>, <Categoria> y <etc>
        Output
        Resaltar: <boton>
        Examples:
            | Texto                         | Boton              | Tamaño texto | Resaltar boton |
            | "Rotura de la silla ..."      | Enviar reporte     | 14px         | true           |
            | "Pared dañada despues de ..." | Adjuntar foto      | 14px         | true           |
            | "Las luces parapadean y ..."  | Categoria          | 20px         | true           |
            | "Limpiar la plaza"            | Fecha seleccionada | 20px         | true           |