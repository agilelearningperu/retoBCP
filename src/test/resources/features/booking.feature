#language: es

Característica: Funcionalidad de busqueda de tickets

  @Escenario1 @all
  Esquema del escenario: Busqueda de tickets del tren BELMOND ANDEAN EXPLORER
    Dado que la web perurail este disponible
    Cuando eliges un tipo de viaje "<tipo_viaje>"
    Y selecciona el destino "<destino>"
    Y selecciona la ruta "<ruta>"
    Y selecciona el tipo de tren "<tipo_tren>"
    Y se ingresa la fecha de salida "<fecha_salida>"
    Y buscar la disponibilidad del ticket
    Y validar el mensaje "<mensaje>" de disponibilidad de cabinas

    Ejemplos:
      | tipo_viaje | destino | ruta         | fecha_salida | tipo_tren                        | mensaje                                   |
      | One Way    | Cusco   | Puno > Cusco | 24-11-2021   | Andean Explorer, A Belmond Train | No cabins available for the selected date |

  @Escenario2 @all
  Esquema del escenario: Busqueda de tickets del tren Arequipa > Puno > Cusco
    Dado que la web perurail este disponible
    Cuando eliges un tipo de viaje "<tipo_viaje>"
    Y selecciona el destino "<destino>"
    Y selecciona la ruta "<ruta>"
    Y se ingresa la fecha de salida "<fecha_salida>"
    Y buscar la disponibilidad del ticket
    Y seleccionar el número de cabinas "<nro_cabina>" del tipo de cabina "<tipo_cabina>"
    Y seleccionar la cantidad "<cantidad_adultos>" de pasajeros adultos
    Y seleccionar la cantidad "<cantidad_niños>" de pasajeros niños
    Y validar que el monto a pagar sea el mismo del resumen de compra
    Y continuar con la compra
    E ingresar los datos de los pasajeros
      | nombre    | apellido | fecha_nacimiento | nacionalidad | tipo_documento      | nro_documento | genero | telefono     | email                | promociones |
      | alexander | avila    | 5-4-1990         | Peru         | Identification Card | 46252354      | Male   | +51951209370 | aavilav5+1@gmail.com | si          |
      | Carlos    | avila    | 5-4-1990         | Peru         | Identification Card | 46252355      | Male   | +51951209370 | aavilav5+2@gmail.com | si          |
    Y continuar con el pago de los tickets
    Y elegir el medio de pago "<medio_pago>"
    Y aceptar los terminos y condiciones
    Y dar click a la opción de ingresar número de tarjeta

    Ejemplos:
      | tipo_viaje | destino | ruta                    | fecha_salida | nro_cabina | tipo_cabina     | cantidad_adultos | cantidad_niños | medio_pago |
      | One Way    | Cusco   | Arequipa > Puno > Cusco | 28-05-2022   | 1          | TWIN BED CABINS | 2                | 0              | visa       |
      | One Way    | Cusco   | Arequipa > Puno > Cusco | 28-05-2022   | 1          | SUITE CABINS    | 2                | 0              | visa       |
      | One Way    | Cusco   | Arequipa > Puno > Cusco | 28-05-2022   | 1          | BUNK BED CABINS | 2                | 0              | visa       |

  @Escenario2 @all
  Esquema del escenario: Busqueda de tickets del tren Arequipa > Puno > Cusco
    Dado que la web perurail este disponible
    Cuando eliges un tipo de viaje "<tipo_viaje>"
    Y selecciona el destino "<destino>"
    Y selecciona la ruta "<ruta>"
    Y se ingresa la fecha de salida "<fecha_salida>"
    Y buscar la disponibilidad del ticket
    Y seleccionar el número de cabinas "<nro_cabina>" del tipo de cabina "<tipo_cabina>"
    Y seleccionar la cantidad "<cantidad_adultos>" de pasajeros adultos
    Y seleccionar la cantidad "<cantidad_niños>" de pasajeros niños
    Y validar que el monto a pagar sea el mismo del resumen de compra
    Y continuar con la compra
    E ingresar los datos de los pasajeros
      | nombre    | apellido | fecha_nacimiento | nacionalidad | tipo_documento      | nro_documento | genero | telefono     | email                | promociones |
      | alexander | avila    | 5-4-1990         | Peru         | Identification Card | 46252354      | Male   | +51951209370 | aavilav5+1@gmail.com | si          |
      | Carlos    | avila    | 5-4-2012         | Peru         | Identification Card | 46252355      | Male   | +51951209370 | aavilav5+2@gmail.com | si          |
    Y continuar con el pago de los tickets
    Y elegir el medio de pago "<medio_pago>"
    Y aceptar los terminos y condiciones
    Y dar click a la opción de ingresar número de tarjeta

    Ejemplos:
      | tipo_viaje | destino | ruta                    | fecha_salida | nro_cabina | tipo_cabina     | cantidad_adultos | cantidad_niños | medio_pago |
      | One Way    | Cusco   | Arequipa > Puno > Cusco | 28-05-2022   | 1          | TWIN BED CABINS | 1                | 1              | visa       |
      | One Way    | Cusco   | Arequipa > Puno > Cusco | 28-05-2022   | 1          | SUITE CABINS    | 1                | 1              | visa       |
      | One Way    | Cusco   | Arequipa > Puno > Cusco | 28-05-2022   | 1          | BUNK BED CABINS | 1                | 1              | visa       |

  @Escenario3 @all
  Esquema del escenario: Busqueda de tickets del tren EXPEDITION
    Dado que la web perurail este disponible
    Cuando eliges un tipo de viaje "<tipo_viaje>"
    Y selecciona el destino "<destino>"
    Y selecciona la ruta "<ruta>"
    Y se ingresa la fecha de salida "<fecha_salida>"
    Y se ingresa la fecha de regreso "<fecha_regreso>"
    Y se ingresa a la opción de pasajeros
    Y se ingresa la cantidad "<cantidad_adultos>" de adultos
    Y se ingresa la cantidad "<cantidad_niños>"de niños
    Y buscar la disponibilidad del ticket
    Y seleccionar tickets de viaje de ida "<ticket_ida>" - regreso "<ticket_regreso>"
    Y continuar con el proceso
    Y registrar datos de pasajeros
      | nombre    | apellido | fecha_nacimiento | nacionalidad | tipo_documento      | nro_documento | genero | telefono     | email                | promociones |
      | alexander | avila    | 5-4-1990         | Peru         | Identification Card | 46252354      | Male   | +51951209370 | aavilav5+1@gmail.com | si          |
      | Carlos    | avila    | 5-4-1990         | Peru         | Identification Card | 46252355      | Male   | +51951209370 | aavilav5+2@gmail.com | si          |
    Y continuar con el proceso
    Y seleccionar el medio de pago "<medio_pago>"
    Y aceptar los terminos y condiciones de pago
    Y dar click a la opción de pagar

    Ejemplos:
      | tipo_viaje | destino      | ruta                 | fecha_salida | fecha_regreso | cantidad_adultos | cantidad_niños | ticket_ida     | ticket_regreso | medio_pago |
      | Round Trip | Machu Picchu | Cusco > Machu Picchu | 18-11-2021   | 18-11-2021    | 2                | 0              | Expedition 203 | Expedition 34  | visa       |
      | One Way    | Machu Picchu | Cusco > Machu Picchu | 18-11-2021   |               | 2                | 0              | Expedition 203 |                | visa       |