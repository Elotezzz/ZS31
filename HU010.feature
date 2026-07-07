Feature: Agrupar reportes duplicados automáticamente.

    Scenario Outline: Detectar reporte duplicado
        Given existen <reportes agrupados>
        And el administrador desee verlos
        When se presione el botón de <Visualizar agrupacion de reportes>
        Then podrá visualizar todos los <reportes> asociados
        Input
        Reportes agrupados: <reportes agrupados>
        Boton: <Agrupar reportes>
        Output
        Ver <Reportes> asociados
        Examples:
            | Reportes agrupados  | Boton            | Reporte       |
            | Reporte #1, #4 y #5 | Agrupar reportes | Fugas de agua |

    Scenario Outline: Visualizar agrupación
        Given existen <reportes agrupados>
        And el administrador desee verlos
        When se presione el botón de <Visualizar agrupacion de reportes>
        Then podrá visualizar todos los <reportes> asociados
        Input
        Reportes agrupados: <reportes agrupados>
        Boton: <Visualizar agrupacion de reportes>
        Output
        Ver todos los <Reportes asociados>
        Examples:
            | Boton                             | Reportes agrupados  |
            | Visualizar agrupacion de reportes | Reporte #1, #4 y #5 |