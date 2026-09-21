# SafeBus: análisis de las épicas e historias de usuario

SafeBus distingue dos acciones de seguridad: **el conductor activa directamente una emergencia prioritaria**; **el pasajero envía una solicitud con mensaje y foto**. Las solicitudes de tres pasajeros distintos del mismo bus y turno en cinco minutos habilitan la aprobación de la empresa. La emergencia de pasajeros se activa después de esa decisión.

El alcance contiene **24 historias, de US01 a US24**, en **7 épicas**: 18 funcionales, 4 técnicas y 2 investigaciones breves. El pasajero se registra con DNI, foto del rostro y contraseña. Consulta alertas del bus en US07; el aforo queda para la empresa. US23 cubre el registro y US24 el cierre automático del viaje.

## EP01 — Turno y seguridad del conductor

Validar el turno, compartir la ubicación del bus y activar emergencias directas con prioridad máxima.

| Historia | Explicación sencilla |
|---|---|
| **US01** | El conductor valida su QR e inicia el turno asignado. |
| **US02** | El conductor consulta su bus, ruta y horario. |
| **US03** | El teléfono del conductor comparte la posición del bus durante el turno. |
| **US04** | El conductor activa directamente una emergencia de prioridad máxima; no necesita mensaje, foto, otras solicitudes ni aprobación previa. |
| **US05** | El conductor cierra el turno. Se detiene la ubicación y terminan los viajes asociados, pero las solicitudes y emergencias abiertas se conservan. |

## EP02 — Identidad, viaje y seguridad del pasajero

Registrar DNI y rostro, vincular el viaje, consultar alertas, enviar solicitudes con evidencia y terminar el viaje al alejarse del bus.

| Historia | Explicación sencilla |
|---|---|
| **US06** | El pasajero registrado e identificado inicia sesión, escanea el QR del bus y vincula un viaje a su cuenta. |
| **US07** | El pasajero consulta el resumen de alertas y solicitudes del bus de su viaje, con origen, fecha, conteo y estado; no ve aforo ni datos privados de otros pasajeros. |
| **US08** | El pasajero envía una solicitud con mensaje y foto del incidente. Tres pasajeros distintos del mismo bus y turno en cinco minutos habilitan la aprobación de la empresa. |
| **US09** | El pasajero consulta sus solicitudes y su evidencia, distingue espera de otras solicitudes, aprobación y atención, y conserva acceso después de bajar. |
| **US23** | El pasajero crea una cuenta con DNI, foto de su rostro y contraseña. Una foto de registro no reemplaza la evidencia de un incidente. |
| **US24** | El viaje termina cuando el pasajero se mantiene a más de 100 metros del bus durante 60 segundos con ubicaciones válidas; también existe cierre manual. |

## EP03 — Revisión y atención de emergencias

Priorizar emergencias del conductor y aprobar o rechazar agrupaciones de solicitudes de pasajeros antes de atenderlas.

| Historia | Explicación sencilla |
|---|---|
| **US10** | La empresa atiende primero las emergencias directas del conductor. Revisa la evidencia de grupos elegibles de pasajeros y decide si activa su emergencia. |

## EP04 — Monitoreo y asignación de unidades

Consultar ubicación, aforo y estado de seguridad de la flota; registrar capacidades y asignar unidades.

| Historia | Explicación sencilla |
|---|---|
| **US11** | El supervisor ve ubicación, aforo, emergencias activas y solicitudes de pasajeros listas para revisión, con estados diferentes. |
| **US12** | El supervisor registra la capacidad del bus para interpretar su aforo. |
| **US13** | El supervisor asigna conductor, bus, ruta y horario. |

## EP05 — Presentación y contacto

Explicar el servicio y sus dos procesos de alerta mediante la landing y recibir solicitudes de información.

| Historia | Explicación sencilla |
|---|---|
| **US14** | La landing explica el registro, las diferencias entre los botones de conductor y pasajero, el cierre automático del viaje y el servicio para empresas. |
| **US15** | Una empresa deja datos de contacto para recibir información. |

## EP06 — Acceso y comunicación protegida

Autenticar los tres roles y proteger identidad, evidencia y servicios de ubicación, conteo y notificaciones.

| Historia | Explicación sencilla |
|---|---|
| **US16** | Conductor, supervisor y pasajero ingresan y salen con sus respectivas cuentas. El pasajero utiliza DNI y contraseña. |
| **US17** | El servicio protege DNI, fotos de rostro y evidencia; cada pasajero accede a sus registros y cada empresa a sus operaciones autorizadas. |
| **US18** | El servicio entrega la ubicación del bus al supervisor y al pasajero asociado para que la app pueda comparar la distancia durante el viaje. |
| **US19** | El servicio calcula el aforo a partir de subidas y bajadas y lo ofrece a la empresa. |
| **US20** | Las notificaciones distinguen una emergencia directa, un grupo de pasajeros que requiere revisión y una emergencia aprobada. |

## EP07 — Investigaciones técnicas breves

Evaluar el GPS de conductor y pasajero y la recepción consistente de eventos de conteo.

| Historia | Explicación sencilla |
|---|---|
| **US21** | El equipo prueba batería, precisión y permisos del GPS para compartir la ubicación del bus y detectar la salida del pasajero. |
| **US22** | El equipo prueba conteo, eventos duplicados y cortes de conexión. |

## Diferencia entre los botones

| Aspecto | Conductor | Pasajero |
|---|---|---|
| Qué envía | Activación directa vinculada a su unidad. | Solicitud con mensaje y foto del incidente. |
| Otras solicitudes necesarias | Ninguna. | Tres cuentas distintas del mismo bus y turno en cinco minutos. |
| Aprobación antes de activar emergencia | No. | Sí, por el supervisor de la empresa cuando el grupo cumple el umbral. |
| Prioridad | Critical; se atiende primero. | High después de la aprobación; la espera de revisión no es una emergencia activa. |
| Si falta conexión | Se guarda y activa al recibirse en el servidor. | Se guarda; una llegada tardía se conserva pero no cuenta para habilitar una nueva emergencia. |

El proceso del pasajero es: **mensaje y foto → solicitud recibida → reunir tres pasajeros → revisión empresarial → aprobación → emergencia activa → atención → cierre**. La ventana de cinco minutos empieza con la primera solicitud completa aceptada por el servidor. Si el umbral no se alcanza dentro de esa ventana, el grupo expira. Un mismo pasajero nunca completa el umbral mediante pulsaciones repetidas. El cierre del viaje no elimina evidencia ni cancela una aprobación pendiente.

US07 muestra resúmenes de alertas del bus; US09 muestra los registros privados del propio pasajero. Las fotos de rostro pertenecen al registro y las fotos del incidente pertenecen a la solicitud. El registro reúne los datos aportados y no incorpora reconocimiento facial ni verificación oficial automática del DNI.

## Finalización del viaje

El pasajero autoriza el uso de ubicación durante su viaje. La app compara su posición con la del bus. Si la distancia se mantiene **por encima de 100 metros durante al menos 60 segundos**, termina la asociación y deja de recopilar su ubicación.

Para evitar cierres por una lectura defectuosa, ambas posiciones deben tener como máximo 60 segundos de antigüedad y 30 metros de precisión reportada, con comparaciones separadas por no más de 30 segundos. Una separación breve, una lectura antigua o una precisión insuficiente reinicia la comprobación. Si no puede evaluarse automáticamente, el pasajero puede terminar el viaje manualmente.

El supervisor consulta el GPS del bus; no recibe un historial continuo de movimientos del pasajero. Las solicitudes propias siguen disponibles para su titular después de bajar.

## Cambios aplicados al informe

La propuesta, Feature Assumptions e hipótesis Lean UX, canvas textual, necesidades del pasajero, recorridos, lenguaje del dominio, épicas, catálogo, criterios, backlog y matriz de Impact Mapping incluyen el nuevo flujo. Los contextos IAM, User Management y Alert Management separan registro/acceso, viaje y aprobación de emergencias. El capítulo de diseño incorpora los estados necesarios y el capítulo de validación recoge los casos a comprobar sin declarar pruebas ejecutadas.

La imagen de Impact Mapping exportada anteriormente se conserva como antecedente; la actualización en UXPressia y su nueva exportación se realiza con la [guía de cambios](guia-impact-mapping-qa.md).

## Documentos de referencia

- [Capítulo I](../report/01-chapter1.md)
- [Capítulo II](../report/02-chapter2.md#24-requirements-specification)
- [Diseño de la experiencia móvil](../report/03-chapter3.md)
- [Validación](../report/04-chapter4.md#43-validation-interviews)
