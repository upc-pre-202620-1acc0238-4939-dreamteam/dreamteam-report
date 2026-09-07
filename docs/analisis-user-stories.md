# SafeBus: análisis sencillo del alcance revisado

La propuesta mantiene a conductores, pasajeros y empresas como usuarios de SafeBus. **El botón de pánico para pasajeros forma parte de la primera versión**, junto con el del conductor. La central recibe ambos mediante el mismo proceso de atención.

Se organizaron **28 historias activas en 7 épicas**: 22 funcionales, 4 técnicas y 2 investigaciones breves. No existe una cantidad mínima comunicada por el docente; la cantidad surge de lo que necesita el proyecto, sin repetir funciones. Los identificadores anteriores se conservan y las historias integradas se explican en el capítulo II.

Una **épica** es un objetivo grande. Cada **historia** describe una necesidad concreta que contribuye a ese objetivo. Los criterios de aceptación son las condiciones que el equipo deberá demostrar para considerarla cumplida.

## EP01 — Turno y seguridad del conductor

Validar el turno, consultar la ruta, revisar la disponibilidad del monitoreo, compartir ubicación, pedir ayuda, reportar incidentes y cerrar el turno.

| Historia | Explicación sencilla |
|---|---|
| **US01** | El conductor valida su QR y queda vinculado al bus y la ruta que la empresa le asignó. |
| **US02** | El conductor consulta su unidad, ruta, horario y avisos vigentes. |
| **US03** | El conductor conoce si hay GPS, conexión y conteo disponibles; una falla se informa sin confundirla con un dato correcto. |
| **US04** | El teléfono del conductor comparte la ubicación durante su turno y guarda temporalmente los datos si pierde conexión. |
| **US05** | El conductor activa una alerta silenciosa. La aplicación distingue si está pendiente de envío, recibida o en atención. |
| **US06** | El conductor registra un incidente que no requiere una alerta de pánico; puede describir un desvío sin que la app calcule rutas alternativas. |
| **US07** | El conductor termina su turno. Los incidentes abiertos siguen a cargo de la central y conservan el vínculo con ese turno. |

## EP02 — Verificación y seguridad del pasajero

Consultar los datos del bus y su conductor, conocer el aforo, activar el botón de pánico, consultar la atención recibida y reportar datos que no coinciden.

| Historia | Explicación sencilla |
|---|---|
| **US08** | El pasajero escanea el QR del bus, consulta placa, empresa, ruta y conductor asignado, e inicia su vínculo con el viaje. |
| **US09** | El pasajero consulta cuántas personas hay, la capacidad y si el bus tiene espacio, está lleno o supera su capacidad. |
| **US10** | El pasajero también tiene botón de pánico. La alerta incluye el bus y su ubicación disponible, sin exigir que el pasajero comparta continuamente su GPS. |
| **US12** | El pasajero conoce el estado de sus propios reportes sin acceder a los de otras personas. |
| **US14** | El pasajero informa si la placa o los datos del conductor no coinciden con lo que observa; la empresa revisa el reporte. |

## EP03 — Atención de incidentes

Recibir y atender alertas de ambos tipos de usuario, registrar contactos externos y comunicar avisos de seguridad por ruta.

| Historia | Explicación sencilla |
|---|---|
| **US18** | La central atiende alertas de conductores y pasajeros con el mismo proceso: recibido, en atención y cerrado. |
| **US20** | El supervisor contacta a la autoridad por un medio externo y registra el intento y el resultado en el caso. |
| **US21** | La empresa publica un aviso para una ruta, con una hora de vencimiento, sin calcular desvíos automáticos. |

## EP04 — Monitoreo y configuración básica de flota

Supervisar ubicación y aforo, registrar la capacidad del bus, asignar turnos y obtener un reporte básico de incidentes.

| Historia | Explicación sencilla |
|---|---|
| **US15** | El supervisor ve sus buses, conductor, ubicación, aforo e incidentes, y distingue datos recientes de datos antiguos. |
| **US22** | El supervisor registra la capacidad del bus y el sistema la usa para interpretar el aforo. |
| **US23** | La empresa obtiene un archivo sencillo con incidentes, estado y tiempo transcurrido hasta que comenzó la atención. |
| **US32** | El supervisor asigna conductor, bus, ruta y horario usando registros iniciales ya preparados. |

## EP05 — Presentación y contacto comercial

Explicar SafeBus mediante una landing page estática y registrar solicitudes sencillas de contacto.

| Historia | Explicación sencilla |
|---|---|
| **US24** | La landing explica la validación del conductor, los dos botones de pánico, el monitoreo y el conteo de pasajeros. |
| **US25** | Una empresa deja sus datos para solicitar información o una demostración. |

## EP06 — Acceso y comunicación de la aplicación

Permitir el acceso de los usuarios, proteger los datos y conectar las aplicaciones con los servicios de ubicación, conteo y alertas.

| Historia | Explicación sencilla |
|---|---|
| **US26** | La aplicación protege la información: cada empresa ve su flota y cada pasajero ve sus propios casos. |
| **US27** | El servicio recibe la ubicación del teléfono y entrega la última posición válida del bus. |
| **US28** | Las alertas llegan a la central en vivo; si se corta la conexión, al volver se recuperan los casos desde el servidor. |
| **US31** | Conductor y supervisor ingresan con cuentas preparadas por la empresa; los pasajeros acceden mediante el QR del viaje. |
| **US33** | El servicio suma subidas, resta bajadas y detecta datos incompletos; una lectura desactualizada nunca se presenta como aforo actual. |

## EP07 — Investigaciones técnicas breves

Comprobar el consumo del GPS móvil y la recepción de eventos de conteo antes de cerrar sus decisiones de implementación.

| Historia | Explicación sencilla |
|---|---|
| **US29** | El equipo prueba cuánto consume el GPS del teléfono y documenta una configuración viable. |
| **US30** | El equipo comprueba que las subidas y bajadas se cuentan sin duplicar eventos y documenta si usó sensor real o simulador. |

## Cómo se conecta todo

1. La empresa dispone de sus registros iniciales y el supervisor asigna conductor, bus y ruta.
2. El conductor ingresa, valida su QR y empieza el turno. El teléfono comparte ubicación y el servicio recibe el conteo de pasajeros.
3. El pasajero escanea el QR del bus, verifica la unidad y consulta el aforo.
4. Ante un peligro, **el conductor o el pasajero** puede activar una alerta silenciosa.
5. La central recibe el caso, registra quién lo atiende y coordina la ayuda. Si contacta a una autoridad, registra lo que ocurrió.
6. El pasajero consulta la atención de su reporte. El cierre de turno detiene el seguimiento del conductor, pero no elimina un incidente abierto.

## Qué se simplificó

- **US11 se integra en US10:** la alerta del pasajero usa la ubicación disponible del bus; se evita el seguimiento continuo del teléfono del pasajero.
- **US13 se integra en US09:** cantidad, capacidad y estado se consultan juntos.
- **US16 se integra en US15:** el monitoreo ya informa si la ubicación está actualizada.
- **US19 se integra en US18:** conductores y pasajeros comparten el proceso de atención, manteniendo el origen de cada reporte.
- **US17 deja de ser una automatización:** la asignación se valida con US32/US01 y un desvío puede reportarse manualmente en US06. No se calculan corredores ni rutas alternativas.
- La landing explica el servicio y registra contacto; no incorpora gestión comercial avanzada.
- El contacto con autoridades queda como registro de una acción humana, sin prometer una integración oficial.
- Los dos botones son digitales en la primera versión móvil; un botón físico adicional no condiciona el flujo.
- Se incorporan acceso de empresa (US31), asignación básica (US32) y un contrato específico de conteo (US33) para cerrar dependencias reales.

## Reglas que hacen coherente la propuesta

- Una alerta sin conexión queda **pendiente de envío**. No se afirma que la central la recibió hasta obtener confirmación.
- Un dato antiguo de ubicación o aforo se identifica como antiguo; nunca se interpreta como una ubicación actual o como bus vacío.
- La atención sigue **recibido → en atención → cerrado**, con responsable y resultado. Cerrar un caso no equivale automáticamente a afirmar que desapareció el riesgo.
- Cada empresa accede a su flota; cada pasajero consulta sus propios casos desde su sesión.
- El QR relaciona al pasajero con una unidad, pero no prueba físicamente que esté a bordo.
- Las validaciones se basan en registros de la empresa. No se afirma verificación automática ante ATU, SOAT o PNP.
- Las historias funcionales expresan necesidades y resultados; las técnicas describen contratos; los spikes generan evidencia para decisiones.

## Estado de la revisión y feedback docente

La estructura documental incluye actor, objetivo, beneficio, épica, prioridad y escenarios Given–When–Then para las 28 historias. Se añadieron reglas comunes, requisitos transversales de idiomas, accesibilidad, términos y almacenamiento local, trazabilidad, el canvas textual revisado, recorridos futuros de los tres actores, un mapa textual de impactos y un backlog con estimaciones propuestas. Los mapas actuales sin SafeBus se distinguen del recorrido futuro propuesto.

**Esto es una especificación revisada, no una certificación de que la aplicación ya funciona o de que el informe completo está terminado.** Las estimaciones y la distribución por sprint son provisionales: 31, 33 y 33 puntos propuestos. Esta distribución debe ajustarse a la capacidad real del equipo antes de comprometer trabajo.

Para el feedback docente quedan identificados estos puntos concretos:

- Confirmar el alcance de hardware de conteo y qué demostración con sensor físico se exige; un simulador se identifica y no sustituye evidencia física sin acordarlo.
- Confirmar que la distribución de experiencias por rol en las aplicaciones nativa y cross-platform corresponde a lo esperado.
- Ajustar prioridades y estimaciones al calendario del curso, manteniendo la landing desde el primer sprint.
- Completar entrevistas de los tres segmentos; el perfil de pasajero y sus mapas textuales son hipótesis explícitas.
- Actualizar los gráficos de Lean UX y mapas previos, trasladar el Impact Mapping a UXPressia y publicar el backlog en la herramienta indicada.
- Seleccionar el proveedor cartográfico externo y demostrar su integración, así como la funcionalidad incorporada a partir del aprendizaje autónomo.

El núcleo de SafeBus queda cubierto: **identificar al conductor, permitir que conductor y pasajero pidan ayuda, atender los incidentes y conocer ubicación y aforo del bus**. La propuesta evita convertir esas necesidades en navegación avanzada, gestión de autoridades o administración comercial extensa.

## Archivos de referencia

- [Capítulo I: propuesta y tres segmentos](../report/01-chapter1.md)
- [Capítulo II: historias, reglas, impactos y backlog](../report/02-chapter2.md)
- Enunciado del trabajo final: páginas 2, 15–16, 32–33 y anexo de spikes, carpeta `Docs informe final` del workspace.
- Sílabo del curso: propósito y logros de aprendizaje, carpeta `Docs informe final` del workspace.
