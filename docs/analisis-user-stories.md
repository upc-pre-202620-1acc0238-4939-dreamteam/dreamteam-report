# SafeBus: análisis de las épicas e historias de usuario

SafeBus permite identificar al conductor y al bus, consultar la ocupación y solicitar ayuda durante el viaje. El conductor y el pasajero disponen de un botón de pánico digital; el supervisor recibe sus alertas y registra la atención.

El alcance contiene **22 historias, numeradas de US01 a US22**, organizadas en **7 épicas**: 16 funcionales, 4 técnicas y 2 investigaciones breves. Una épica reúne necesidades relacionadas; cada historia explica una función concreta y sus criterios de aceptación indican cómo comprobarla.

## EP01 — Turno y seguridad del conductor

Validar el turno, consultar la asignación, compartir ubicación, solicitar ayuda y cerrar la jornada.

| Historia | Explicación sencilla |
|---|---|
| **US01** | El conductor valida su QR para iniciar el turno del bus que tiene asignado. |
| **US02** | El conductor consulta su bus, ruta y horario de servicio. |
| **US03** | El teléfono del conductor comparte la ubicación durante el turno y guarda los eventos si pierde conexión. |
| **US04** | El conductor activa una alerta silenciosa y distingue si está pendiente de envío, recibida o en atención. |
| **US05** | El conductor cierra el turno y deja de compartir ubicación; los casos abiertos siguen disponibles para la central. |

## EP02 — Verificación y seguridad del pasajero

Identificar la unidad, consultar el aforo, solicitar ayuda y conocer la atención de la alerta.

| Historia | Explicación sencilla |
|---|---|
| **US06** | El pasajero escanea el QR del bus, consulta los datos de la unidad y del conductor e inicia su asociación con el viaje. |
| **US07** | El pasajero consulta la cantidad de personas, la capacidad y si el bus tiene espacio, está lleno o supera su capacidad. |
| **US08** | El pasajero activa su propio botón de pánico, asociado al bus y a su ubicación disponible. |
| **US09** | El pasajero consulta si su alerta fue recibida, está siendo atendida o fue cerrada. |

## EP03 — Atención de alertas

Recibir y atender alertas de conductores y pasajeros, identificando al responsable y el resultado de atención.

| Historia | Explicación sencilla |
|---|---|
| **US10** | El supervisor recibe las alertas de ambos actores, inicia su atención y registra el resultado al cerrarlas. |

## EP04 — Monitoreo y asignación de unidades

Consultar ubicación y aforo de la flota, registrar capacidades y asignar conductor, bus y ruta.

| Historia | Explicación sencilla |
|---|---|
| **US11** | El supervisor consulta sus buses con ubicación, aforo y alertas, identificando datos antiguos o no disponibles. |
| **US12** | El supervisor registra la capacidad del bus para que el sistema interprete correctamente su ocupación. |
| **US13** | El supervisor asigna un conductor y un bus a una ruta y horario utilizando los registros de la empresa. |

## EP05 — Presentación y contacto

Explicar el servicio mediante una landing page y recibir solicitudes de información.

| Historia | Explicación sencilla |
|---|---|
| **US14** | La landing explica el funcionamiento, beneficios, alcance y términos de SafeBus. |
| **US15** | Una empresa deja sus datos para solicitar información o una demostración. |

## EP06 — Acceso y comunicación de la aplicación

Permitir el ingreso de usuarios y proteger el intercambio de ubicación, conteo y alertas.

| Historia | Explicación sencilla |
|---|---|
| **US16** | Conductor y supervisor ingresan y salen de sus cuentas de empresa. |
| **US17** | El servicio protege los datos para que cada empresa vea su flota y cada pasajero acceda a sus propios casos. |
| **US18** | El servicio recibe las ubicaciones del teléfono y entrega la última posición válida del bus. |
| **US19** | El servicio procesa las subidas y bajadas, evita duplicados e informa si el conteo está desactualizado o incompleto. |
| **US20** | La central recibe actualizaciones de alertas en vivo y recupera los casos cuando vuelve la conexión. |

## EP07 — Investigaciones técnicas breves

Evaluar el consumo de GPS móvil y la recepción de eventos de conteo para orientar la implementación.

| Historia | Explicación sencilla |
|---|---|
| **US21** | El equipo compara el consumo de batería de dos frecuencias de GPS y documenta cuál resulta adecuada. |
| **US22** | El equipo prueba el conteo ante eventos repetidos, faltantes y cortes de conexión, identificando la fuente utilizada. |

## Recorrido completo

1. El supervisor asigna el conductor, el bus, la ruta y el horario.
2. El conductor ingresa, valida su QR e inicia el turno. Su teléfono comparte la ubicación de la unidad.
3. El pasajero escanea el QR del bus, consulta su información y revisa el aforo.
4. Ante una emergencia, el conductor o el pasajero activa su botón de pánico.
5. La central recibe la alerta, identifica al responsable de atenderla y registra el resultado.
6. El pasajero consulta la atención de su caso. Al terminar el turno, se detiene el seguimiento del conductor y los casos abiertos siguen disponibles para la central.

## Coherencia del alcance

La aplicación utiliza un proceso de atención compartido para las alertas de conductores y pasajeros. Conserva el origen de cada caso y distingue los estados recibido, en atención y cerrado.

Una alerta sin conexión se almacena en el dispositivo como pendiente de envío. La aplicación informa que fue recibida únicamente después de la confirmación del servidor. La ubicación y el aforo se acompañan de su vigencia; los datos ausentes o antiguos no se presentan como actuales.

La configuración se limita a asignar registros existentes y mantener la capacidad de las unidades. La landing presenta el servicio y recibe solicitudes de contacto. Las historias técnicas proporcionan los servicios de acceso, ubicación, conteo y actualización de alertas que utilizan los recorridos principales.

Los criterios de aceptación permiten comprobar los casos normales y las situaciones de error de cada historia. El Impact Mapping relaciona las funciones con objetivos del servicio y el Product Backlog establece su prioridad, estimación y sprint.

## Documentos de referencia

- [Capítulo I: solución y segmentos objetivo](../report/01-chapter1.md)
- [Capítulo II: especificación de requisitos](../report/02-chapter2.md#24-requirements-specification)
