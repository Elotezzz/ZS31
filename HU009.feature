Feature: Cambiar estado del reporte

    Scenario Outline: Cambiar a “En proceso”
        Given un reporte se encuentra <pendiente>
        When el administrador presiona el botón <Cambiar estado>
        And cambia su estado a <En proceso>
        Then el sistema actualizará a <En proceso>
        Input
        Boton: <Cambiar estado>
        Estado reporte: <Pendiente>
        Cambiar estado reporte: <En proceso>
        Output
        Reporte actualizado: <En proceso>
        Examples:
            | Estado reporte | Boton          | Reporte actualizado |
            | Pendiente      | Cambiar estado | En proceso          |

    Scenario Outline: Cambiar a “Resuelto”
        Given un reporte se encuentra en <proceso>
        When el administrador presiona el botón <Cambiar estado>
        And cambia su estado a <Resuelto>
        Then el sistema actualizará a <Resuelto>
        Input
        Boton: <Cambiar estado>
        Estado reporte: <Resuelto>
        Cambiar estado reporte: <Resuelto>
        Output
        Reporte actualizado: <Resuelto>
        Examples:
            | Estado reporte | Boton          | Reporte actualizado |
            | En proceso     | Cambiar estado | Resuelto            |

    Scenario Outline: Notificar al residente
        Given el <estado de un reporte ha sido modificado>
        When el administrador <guarda los cambios> de estado del reporte
        Then el residente recibirá <notificacion> del nuevo estado del reporte.
        Input
        Cambiar estado: <estado reporte modificado>
        Boton: <Guardar cambios>
        Output
        Enviar: <Notificaciones>
        Examples:
            | Cambiar estado          | Boton           | Enviar      |
            | Pendiente -> En proceso | Guardar Cambios | Noiticacion |
            | En proceso -> Hecho     | Guardar Cambios | Noiticacion |




