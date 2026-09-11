[← Volver al índice](00-chapter0.md#contenido)

# Capítulo II: Requirements Development and Software Solution Design

## 2.1. Competidores

### 2.1.1. Análisis competitivo

#### Competitive analysis landscape

| Competitive Analysis Landscape | | | | |
|---|---|---|---|---|
| **¿Por qué llevar a cabo este análisis?** | Identificar ventajas competitivas frente a soluciones existentes en el mercado de seguridad para transporte público. | | | |
| | **SafeBus (Nuestro startup)** | **Competidor 1 (Metropolitano)** | **Competidor 2 (RTP)** | **Competidor 3 (Mi Transporte)** |
| **Ventaja competitiva** | Monitoreo en tiempo real, botón de emergencia para conductores y pasajeros, y conteo de pasajeros por sensores en la puerta. | Infraestructura organizada, estaciones, rutas definidas, carriles exclusivos y cámaras de videovigilancia. | Tecnología incorporada: cámaras de seguridad, monitoreo en tiempo real y capacitación del personal. | Monitoreo y protocolos de seguimiento en tiempo real, reportes ciudadanos. |
| **Mercado objetivo** | Consorcios/empresas de transporte público, conductores y pasajeros de unidades asociadas. | Usuarios urbanos de Lima Metropolitana. | Población de zonas periféricas, estudiantes y grupos vulnerables. | Población de zonas periféricas y estudiantes. |
| **Estrategia de marketing** | Enfatiza la seguridad durante la ruta con un sistema integrado al vehículo. | Servicio rápido, moderno, formal y seguro, destacando eficiencia y orden. | Campaña "Yo Soy RTP", sustentabilidad con unidades eléctricas. | Posiciona el transporte como sistema integrado, moderno y eficiente. |
| **Productos & Servicios** | Botón de pánico para conductor y pasajero, consulta de ruta, ubicación y aforo; atención según disponibilidad de la empresa. | Transporte troncal, tarjeta recargable, estaciones seguras, información de rutas. | Servicio ordinario, expreso, Ecobús y Nochebús. | Transporte multimodal, Tarjeta Mi Movilidad, App Mi Saldo, Mi Pasaje. |
| **Precios & Costos** | Desde S/. 99 por unidad/mes incluyendo instalación. 20% de descuento a partir de 3 unidades. | S/. 3.50 por viaje. | 40 céntimos (ordinario) a 1.50 soles (Nochebús). | Tarifa plana S/. 2.00, tarifa preferencial S/. 1.00. |
| **Canales de distribución** | Web y móvil. | Web, móvil/recarga digital, puntos físicos. | App CDMX, tarjeta de movilidad integrada, sitio web oficial. | Web, móvil (App Mi Saldo), puntos físicos (OXXO, estaciones). |
| **Fortalezas** | Equipo profesional comprometido con el bienestar del cliente. | Marca reconocida, sistema formal, modernización digital. | Tarifas sociales subsidiadas, flota moderna eléctrica, conductores capacitados. | Marca unificada, interoperabilidad, modernización de flota. |
| **Oportunidades** | Expansión a provincias, acuerdos formales con la policía. | Expansión urbana, digitalización del servicio. | Expansión de rutas eléctricas para el Mundial 2026. | Crecimiento urbano hacia otros estados, crisis de combustibles. |
| **Amenazas** | Alto índice de extorsiones a transportistas en sus rutas. | Inseguridad ciudadana, saturación en horas punta, fallas operativas. | Competencia del transporte concesionado informal, congestión vial. | Resistencia al cambio, inseguridad, incidentes de vandalismo. |


## Análisis SWOT — SafeBus

| Fortalezas | Debilidades |
|---|---|
| Tecnología diferenciadora: monitoreo en tiempo real, botón de emergencia para conductores y pasajeros, y conteo de pasajeros por sensores en la puerta. | Marca nueva y poco reconocida frente a competidores consolidados (Metropolitano, RTP). |
| Enfoque especializado en seguridad, que los competidores tratan solo como característica secundaria. | Canales limitados: solo web y móvil, sin puntos físicos de venta/atención. |
| Precio competitivo y escalable: desde S/. 99 por unidad/mes, con 20% de descuento a partir de 3 unidades. | Dependencia de hardware/sensores: costos de instalación, mantenimiento y riesgo de fallas técnicas. |
| Sistema integrado al vehículo, sin depender de estaciones ni infraestructura fija. | Mercado objetivo estrecho (consorcios y empresas): ingresos concentrados en pocos clientes grandes. |
| Equipo profesional comprometido con el bienestar del cliente. | Startup en etapa temprana, aún no probada a gran escala. |

| Oportunidades | Amenazas |
|---|---|
| Expansión a provincias. | Alto índice de extorsiones a transportistas en las rutas de operación. |
| Acuerdos formales con la policía y autoridades. | Competidores grandes con más recursos podrían incorporar funciones de seguridad similares. |
| Demanda creciente de soluciones de seguridad por el aumento de la inseguridad y la extorsión. | Resistencia al cambio y baja adopción tecnológica entre los transportistas. |
| Tendencia a la formalización del transporte público y a exigir estándares de seguridad. | Informalidad del sector y dependencia de los presupuestos de los consorcios. |

### 2.1.2. Estrategias y tácticas frente a competidores

Para posicionar a SafeBus de manera competitiva, se plantean las siguientes estrategias:

**Estrategias de vinculación y fidelización con usuarios clave:**

**#1 Implementación colaborativa con conductores y empresas**  
SafeBus adoptará un enfoque participativo, donde conductores y empresas de transporte formen parte del proceso de implementación y adaptación del sistema. Esto permitirá reducir la resistencia al cambio y asegurar que la solución se ajuste a necesidades reales del entorno.

**#2 Programa integral de capacitación y soporte técnico continuo**  
Se ofrecerán programas de capacitación para conductores y empresas, junto con soporte técnico constante. Esta estrategia responde a la baja adopción tecnológica en el sector.

**#3 Empoderamiento del usuario como actor activo**  
SafeBus integrará funcionalidades visibles para los usuarios (como monitoreo de rutas o estado del viaje), aumentando la percepción de seguridad.

**Estrategias de diferenciación tecnológica y funcional:**

**#1 Sistema integral de seguridad en tiempo real**  
SafeBus integrará ubicación durante el turno, botones de emergencia digitales para conductor y pasajero, y conteo de pasajeros en una sola plataforma móvil. La prueba con hardware se precisará con el docente a partir de US22.

**#2 Plataforma centralizada de información**  
Se consolidará toda la información del vehículo (ubicación, alertas, estado) en un sistema único accesible para empresas.

**#3 Integración de hardware y software**  
La primera versión utiliza el GPS del teléfono y botones de pánico digitales. La fuente externa de conteo se integra mediante un contrato de eventos; el prototipo debe identificar si utiliza sensores reales o un simulador. Un botón físico adicional queda como posible ampliación.

**#4 Seguimiento de alertas de seguridad**

La central conservará el estado, responsable y resultado de atención de las alertas para consultar cada caso durante el servicio.

**Estrategias de posicionamiento y enfoque de mercado:**

**#1 Enfoque en seguridad como valor principal**  
SafeBus se posicionará como una solución centrada en la protección de conductores y pasajeros, destacando su impacto social.

**#2 Segmentación hacia empresas formales de transporte**  
Se priorizará trabajar con consorcios organizados que busquen mejorar su gestión y seguridad.

**#3 Adaptación al contexto local (Perú)**  
La solución estará diseñada considerando problemáticas reales como extorsión, informalidad y falta de regulación tecnológica.

**#4 Alianzas estratégicas**  
Se buscarán acuerdos con autoridades, municipalidades y entidades de seguridad para fortalecer la credibilidad y efectividad del sistema.

---

## 2.2. Entrevistas

### 2.2.1. Diseño de entrevistas

La siguiente guía incorpora a los tres segmentos. Es un instrumento propuesto: las respuestas y conclusiones se registrarán después de realizar las entrevistas.

| Segmento | Preguntas principales | Aspectos a profundizar |
|---|---|---|
| Conductor | ¿Cómo inicia y termina su turno? ¿Cómo solicita ayuda actualmente? ¿Qué ocurre si pierde conexión? | Tiempo disponible, uso del teléfono con el vehículo detenido, validación de identidad y comprensión de una alerta pendiente de envío. |
| Empresa / supervisor | ¿Cómo asigna buses y conductores? ¿Quién recibe alertas y en qué horario? ¿Cómo registra la atención y contacta autoridades? | Datos disponibles, responsable del caso, necesidad de ubicación y aforo, restricciones de operación y capacidad de respuesta. |
| Pasajero | ¿Cómo identifica el bus y al conductor? ¿Qué haría ante un peligro a bordo? ¿Qué necesita saber después de pedir ayuda? | Uso del QR, acceso sin cuenta, aforo antes de abordar, privacidad y comprensión de los estados de la alerta. |

### 2.2.2. Registro de entrevistas

Video consolidado: `upc-pre-<periodo>-1acc0238-<NRC>-<startup>-needfinding-<avn/tbn>.mp4`

| # | Nombres y apellidos | Edad | Distrito | Timing en video | Screenshot |
|---|----------------------|------|----------|------------------|------------|
| 1 | | | | | |

**Estado del registro:** entrevistas pendientes de documentar. No se atribuyen respuestas a personas ni se presentan resultados de validación en esta versión.

### 2.2.3. Análisis de entrevistas

Pendiente de entrevistas reales. El análisis deberá separar conductores, empresas y pasajeros, indicar cantidad de participantes y explicar qué historias se mantienen, cambian o descartan según la evidencia. Las necesidades propuestas abajo son hipótesis de diseño.

---

## 2.3. Needfinding

Las necesidades siguientes son hipótesis que deberán contrastarse mediante entrevistas de los tres segmentos. Esta revisión no presenta entrevistas realizadas ni conclusiones estadísticas nuevas.

#### 2.3.1 User Personas

Los perfiles representan a los actores del alcance. Los materiales existentes de conductor y supervisor deben contrastarse con entrevistas; el perfil de pasajero incorporado en esta revisión es provisional, sin atribuirle evidencia empírica.

**Segmento #1: Conductores (operarios) de transporte público**

<img src="../assets/Segmento1Persona.png">

**Segmento #2: Empresas o consorcios de transporte público**

<img src="../assets/Segmento2Persona.png">

**Segmento #3: Pasajeros de transporte público — perfil provisional**

| Aspecto | Hipótesis de perfil a validar |
|---|---|
| Identificación | Pasajero frecuente de una unidad asociada a SafeBus; no representa a una persona entrevistada. |
| Contexto | Usa transporte público en Lima y Callao y dispone de un teléfono compatible. |
| Objetivos | Identificar el bus y su conductor, conocer el aforo y pedir ayuda discretamente durante el viaje. |
| Dificultades | Desconocer quién recibe su alerta, perder conexión y no saber si el reporte fue atendido. |
| Necesidades | QR sencillo, botón de pánico sin formulario previo, estados claros y acceso limitado a sus propios casos. |
| Validación pendiente | Entrevistas, frecuencia de uso, barreras de accesibilidad y acceso efectivo a teléfono y datos móviles. |

El perfil y los mapas del tercer segmento deben trasladarse a UXPressia. Los materiales gráficos previos de los otros segmentos requieren revisión contra este alcance móvil; no se consideran actualizados automáticamente por esta edición textual.

---

### 2.3.2. User Task Matrix

Las matrices existentes describen actividades del contexto del conductor y de la empresa, incluyendo tareas que SafeBus no automatiza. Sus frecuencias e importancia son hipótesis pendientes de contraste; no se presentan como mediciones de entrevistas. El alcance implementable se determina en 2.4.

**Segmento objetivo #1 — José Mamani Quispe**

| Actividades | Frecuencia | Importancia |
|-------------|-----------|-------------|
| Iniciar jornada y verificar el estado de la unidad antes de salir | Con frecuencia | Alta |
| Confirmar la ruta asignada y horario de salida con la empresa | Con frecuencia | Alta |
| Cobrar pasaje y controlar el flujo de subida y bajada de pasajeros | Con frecuencia | Alta |
| Reportar incidentes o percances al encargado de la empresa | A veces | Alta |
| Evaluar zonas de riesgo durante la ruta y tomar desvíos si es necesario | Frecuente | Alta |
| Pagar cuota o cupo a personas externas que operan en la ruta | Frecuente | Media |
| Comunicarse con otros conductores vía celular ante situaciones de riesgo | A veces | Alta |
| Registrar el cierre de turno y entregar la unidad al siguiente conductor | Con frecuencia | Alta |

**Segmento objetivo #2 — Luis Ramírez Nombera**

| Actividades | Frecuencia | Importancia |
|-------------|-----------|-------------|
| Supervisar las unidades de transporte en ruta | Con frecuencia | Alta |
| Coordinar con conductores durante la jornada | Con frecuencia | Alta |
| Atender incidentes o reportes de seguridad | Con frecuencia | Alta |
| Comunicarse con autoridades (policía, emergencia) | A veces | Alta |
| Verificar documentación de conductores | A veces | Media |
| Gestionar problemas de extorsión o amenazas | Con frecuencia | Alta |
| Revisar estado operativo de las unidades | Con frecuencia | Alta |
| Recibir reportes de pasajeros o quejas | A veces | Media |
| Resolver problemas sin información en tiempo real | Con frecuencia | Alta |
| Evaluar implementación de nuevas tecnologías | A veces | Media |

**Segmento objetivo #3 — Pasajero frecuente (tareas propuestas, pendientes de validación)**

| Actividad | Momento previsto | Importancia propuesta |
|---|---|---|
| Escanear el QR y verificar la unidad | Al abordar | Alta |
| Consultar cantidad de pasajeros y capacidad | Antes de abordar | Alta |
| Activar el botón de pánico | Ante un peligro durante el viaje | Alta |
| Consultar si su alerta fue recibida y atendida | Después de reportar | Alta |
| Terminar el vínculo con el viaje | Al bajar de la unidad | Media |

### 2.3.3. User Journey Mapping

Los gráficos existentes describen hipótesis del recorrido **actual, sin SafeBus (As-Is)**: aparición del incidente, dificultad para pedir ayuda y respuesta limitada. Se conservan como antecedentes a contrastar mediante entrevistas. La matriz del pasajero completa ese mismo enfoque. El recorrido futuro con la aplicación se especifica por separado en el To-Be Scenario Mapping de 2.4.


**Segmento objetivo #1 — José Mamani Quispe**

<img src="../assets/Segmento Objetivo 1 - JourneyMap.png">


**Segmento objetivo #2 — Luis Ramírez Nombera**

<img src="../assets/Segmento Objetivo 2 - JourneyMap.png">

**Segmento objetivo #3 — Pasajero (hipótesis del recorrido actual, sin SafeBus)**

| Etapa | Acción actual supuesta | Dificultad a validar | Oportunidad para SafeBus |
|---|---|---|---|
| Abordaje | Observa la placa y la información visible del vehículo. | No cuenta con una referencia digital del conductor asignado. | Verificar los datos registrados de la unidad mediante US06. |
| Decisión de viaje | Estima visualmente cuántas personas hay. | Desconoce el conteo y la capacidad registrada. | Consultar ocupación y vigencia mediante US07. |
| Incidente | Busca ayuda de otra persona o intenta llamar. | Puede tener dificultades para actuar discretamente o identificar a quién avisar. | Botón de pánico del pasajero en US08. |
| Seguimiento | Espera una respuesta o vuelve a contactar. | No sabe si su solicitud fue recibida ni quién la atiende. | Consulta del caso mediante US09 y atención mediante US10. |



---

### 2.3.4. Empathy Mapping

Para entender mejor a nuestros usuarios, usamos el Empathy Map, para ponernos en su lugar y entender mejor sus necesidades y deseos.

**#1er Segmento Objetivo:**

<img src="../assets/Empathy map Segmento 1.png">

**#2do Segmento Objetivo:**

<img src="../assets/Empathy map Segmento 2.png">

**#3er Segmento Objetivo — Pasajero (hipótesis de empatía, no citas de entrevistas):**

| Dimensión | Hipótesis a contrastar |
|---|---|
| Piensa / siente | Necesita saber si puede pedir ayuda sin llamar la atención y si alguien recibió el aviso. |
| Ve / oye | Encuentra información limitada sobre la unidad y recibe comentarios sobre inseguridad en el transporte. |
| Dice / hace | Revisa datos del bus, decide si aborda y busca un canal de ayuda cuando lo necesita. |
| Dificultades | Falta de conexión, desconocimiento del conductor y falta de respuesta visible. |
| Beneficios esperados | Identificar la unidad, pedir ayuda discretamente y conocer el estado de su caso. |


---

### 2.3.5. Big Picture EventStorming

[Capturas y explicación del proceso — guía: https://bit.ly/bpes-guide]

### 2.3.6. Ubiquitous Language

| Term (English) | Término (Español) | Definición |
|-----------------|--------------------|------------|
| Driver Shift | Turno del conductor | Periodo asignado a un conductor, bus y ruta; pasa de asignado a activo y cerrado. |
| Passenger Journey | Viaje del pasajero | Asociación iniciada al verificar el QR de una unidad; termina al bajar o cerrar el turno. |
| Panic Alert | Alerta de pánico | Solicitud crítica de ayuda de conductor o pasajero; puede estar pendiente localmente antes de ser recibida. |
| Safety Case | Caso de seguridad | Registro recibido por la central con origen, responsable, estado e historial de atención. |
| Operations Central | Central de operaciones | Función de la empresa ejercida por supervisores que reciben y atienden casos. |
| Passenger Count | Conteo de pasajeros | Cantidad derivada de entradas y salidas de la fuente registrada, con estado de validez. |
| Bus Capacity | Capacidad del bus | Límite de pasajeros registrado por la empresa según la ficha de la unidad. |

---

## 2.4. Requirements specification

SafeBus reúne los requisitos de una aplicación móvil para conductores, pasajeros y supervisores de empresas de transporte. Su alcance comprende la validación del conductor mediante QR, la consulta de la unidad y su aforo, los botones de pánico para conductor y pasajero, la atención de alertas y el monitoreo de ubicación. Una landing page presenta el servicio y recibe solicitudes de contacto.

La especificación contiene **22 historias, numeradas de US01 a US22 y agrupadas en 7 épicas**: 16 historias funcionales, 4 historias técnicas y 2 Spike Stories. Cada historia identifica al actor, la necesidad, el beneficio, la prioridad y los criterios de aceptación que permiten comprobar su cumplimiento.

#### To-Be Scenario Mapping

El recorrido futuro conecta las acciones de los tres actores con los resultados que ofrece SafeBus.

| Actor | Inicio del servicio | Durante el viaje | Ante una emergencia | Finalización |
|---|---|---|---|---|
| Conductor | Ingresa, consulta su asignación y valida su QR (US16, US02, US01). | Comparte la ubicación del bus desde su teléfono (US03). | Activa una alerta silenciosa; si no tiene conexión, la aplicación conserva el aviso hasta poder enviarlo (US04). | Cierra el turno y detiene el seguimiento de ubicación (US05). |
| Pasajero | Escanea el QR, verifica la unidad y consulta el aforo (US06, US07). | Conserva la asociación con el viaje sin compartir continuamente su GPS (US06). | Activa su botón de pánico y consulta la atención de su caso (US08, US09). | Termina su asociación con el viaje y conserva acceso a sus casos desde la misma sesión del dispositivo (US06, US09). |
| Supervisor | Ingresa, registra capacidades y asigna conductor, bus y ruta (US16, US12, US13). | Consulta ubicación, aforo y alertas de su flota (US11). | Asume la atención de alertas del conductor o pasajero (US10). | Registra el resultado y cierra el caso; conserva abiertos aquellos que todavía requieren atención (US10). |

### 2.4.1. User Stories

Las historias se redactan con la estructura “As a… I want… so that…”. Sus criterios de aceptación utilizan Given–When–Then y describen condiciones y resultados comprobables. Las historias técnicas utilizan el actor Developer; las Spike Stories establecen una pregunta de investigación, un límite de tiempo y los resultados que documentan su cierre.

#### Epics

| Epic ID | Epic | Propósito | User Stories |
|---|---|---|---|
| EP01 | **Driver Shift and Safety** — Turno y seguridad del conductor | Validar el turno, consultar la asignación, compartir ubicación, solicitar ayuda y cerrar la jornada. | US01, US02, US03, US04, US05 |
| EP02 | **Passenger Verification and Safety** — Verificación y seguridad del pasajero | Identificar la unidad, consultar el aforo, solicitar ayuda y conocer la atención de la alerta. | US06, US07, US08, US09 |
| EP03 | **Incident Response Coordination** — Atención de alertas | Recibir y atender alertas de conductores y pasajeros, identificando al responsable y el resultado de atención. | US10 |
| EP04 | **Fleet Monitoring and Setup** — Monitoreo y asignación de unidades | Consultar ubicación y aforo de la flota, registrar capacidades y asignar conductor, bus y ruta. | US11, US12, US13 |
| EP05 | **Service Information and Contact** — Presentación y contacto | Explicar el servicio mediante una landing page y recibir solicitudes de información. | US14, US15 |
| EP06 | **User Access and Service Integration** — Acceso y comunicación de la aplicación | Permitir el ingreso de usuarios y proteger el intercambio de ubicación, conteo y alertas. | US16, US17, US18, US19, US20 |
| EP07 | **Technical Feasibility Spikes** — Investigaciones técnicas breves | Evaluar el consumo de GPS móvil y la recepción de eventos de conteo para orientar la implementación. | US21, US22 |

#### User Story Catalogue

| Story ID | User | Title | Priority | Epic | Type |
|---|---|---|---|---|---|
| **US01** | Public Transport Driver | Validate an Assigned Shift with a Driver QR Credential | High | EP01 | Functional |
| **US02** | Public Transport Driver | Consult Assigned Route and Shift Details | High | EP01 | Functional |
| **US03** | Public Transport Driver | Share Bus Location During an Active Shift | High | EP01 | Functional |
| **US04** | Public Transport Driver | Activate a Silent Driver Panic Alert | High | EP01 | Functional |
| **US05** | Public Transport Driver | Close a Driver Shift | Medium | EP01 | Functional |
| **US06** | Bus Passenger | Verify a Bus and Start a Passenger Journey | High | EP02 | Functional |
| **US07** | Bus Passenger | Consult Passenger Count and Bus Capacity | High | EP02 | Functional |
| **US08** | Bus Passenger | Activate a Silent Passenger Panic Alert with Bus Location | High | EP02 | Functional |
| **US09** | Bus Passenger | Consult the Status of My Safety Cases | Medium | EP02 | Functional |
| **US10** | Fleet Supervisor | Receive, Attend and Close Driver and Passenger Cases | High | EP03 | Functional |
| **US11** | Fleet Supervisor | Monitor Fleet Location and Occupancy | High | EP04 | Functional |
| **US12** | Fleet Supervisor | Maintain the Recorded Capacity of a Bus | Medium | EP04 | Functional |
| **US13** | Fleet Supervisor | Assign a Driver and Bus to a Route Shift | High | EP04 | Functional |
| **US14** | Transport Company Representative | Consult SafeBus Service Information | Medium | EP05 | Functional |
| **US15** | Transport Company Representative | Submit a Company Contact Request | Medium | EP05 | Functional |
| **US16** | Registered Driver or Fleet Supervisor | Sign In and Sign Out of a Company Account | High | EP06 | Functional |
| **US17** | Developer | Protect API Access by Role, Company and Passenger Session | High | EP06 | Technical |
| **US18** | Developer | Provide a RESTful Location Service | High | EP06 | Technical |
| **US19** | Developer | Provide a RESTful Passenger-Count Service | High | EP06 | Technical |
| **US20** | Developer | Deliver Live Case Updates and Recover Missed Notifications | High | EP06 | Technical |
| **US21** | Developer | Spike Mobile Background Location and Battery Use | High | EP07 | Spike |
| **US22** | Developer | Spike Ordered Passenger-Count Event Ingestion | High | EP07 | Spike |

#### Detailed User Stories

##### US01 — Validate an Assigned Shift with a Driver QR Credential

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US01** | Public Transport Driver | High | EP01 — Driver Shift and Safety |
| **Title** | Validate an Assigned Shift with a Driver QR Credential | | |
| **Description** | As a Public Transport Driver, I want to validate my assigned shift with my driver QR credential so that the company identifies the authorized driver responsible for the bus. | | |
| **Acceptance Criteria** | **Scenario 1: Activate an assigned shift**<br>Given the authenticated driver has a valid company-issued QR credential and an assigned, unstarted shift<br>When SafeBus validates the credential for that shift<br>Then SafeBus activates the shift, associates the driver, bus and route, and records the start time<br><br>**Scenario 2: Reject an invalid assignment**<br>Given the credential is expired, disabled, belongs to another driver, or has no matching assignment<br>When the driver requests shift validation<br>Then SafeBus rejects activation, identifies the reason, and preserves the existing shift state | | |

##### US02 — Consult Assigned Route and Shift Details

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US02** | Public Transport Driver | High | EP01 — Driver Shift and Safety |
| **Title** | Consult Assigned Route and Shift Details | | |
| **Description** | As a Public Transport Driver, I want to consult my assigned route and shift details so that I know the bus, route and service schedule that I must follow. | | |
| **Acceptance Criteria** | **Scenario 1: Consult an assignment**<br>Given the authenticated driver has an assigned shift<br>When the driver requests the assignment<br>Then SafeBus provides the bus plate, route name, origin, destination, scheduled start and scheduled end<br><br>**Scenario 2: Handle a missing assignment**<br>Given the authenticated driver has no assigned shift<br>When the driver requests the assignment<br>Then SafeBus reports that no assignment is available and does not substitute another driver's assignment | | |

##### US03 — Share Bus Location During an Active Shift

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US03** | Public Transport Driver | High | EP01 — Driver Shift and Safety |
| **Title** | Share Bus Location During an Active Shift | | |
| **Description** | As a Public Transport Driver, I want the mobile app to share my bus location during my active shift so that Operations Central can locate the unit when assistance is needed. | | |
| **Acceptance Criteria** | **Scenario 1: Share a current location**<br>Given the driver has an active shift, grants location permission and has connectivity<br>When the app obtains a location sample at a sampling interval of 30 seconds<br>Then SafeBus sends the event identifier, coordinates, accuracy, capture time, bus and shift to the location service<br><br>**Scenario 2: Synchronize locally stored samples**<br>Given the app captures three samples while connectivity is unavailable<br>When connectivity returns during an authenticated session<br>Then the app submits the locally persisted samples with their original identifiers and times, removes acknowledged samples from the pending queue, and does not replace a newer current position with an older sample<br><br>**Scenario 3: Stop collecting location**<br>Given the shift closes or the driver withdraws location permission<br>When the app evaluates location collection<br>Then the app stops collecting new samples and reports that live location is unavailable; already pending samples remain associated with their original shift | | |

##### US04 — Activate a Silent Driver Panic Alert

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US04** | Public Transport Driver | High | EP01 — Driver Shift and Safety |
| **Title** | Activate a Silent Driver Panic Alert | | |
| **Description** | As a Public Transport Driver, I want to activate a silent panic alert from the mobile app so that Operations Central receives a request for help linked to my bus. | | |
| **Acceptance Criteria** | **Scenario 1: Submit a driver panic alert**<br>Given the authenticated driver has an active shift and connectivity<br>When the driver activates the panic function<br>Then SafeBus records a critical driver alert with its unique identifier, activation time, bus, route and available location and occupancy context; the mobile app emits no activation sound or vibration and records Received only after server acknowledgement<br><br>**Scenario 2: Queue a panic alert offline**<br>Given the driver has a locally stored active-shift association and no connectivity<br>When the driver activates the panic function<br>Then the mobile app persists the alert and its original context in protected local storage as Pending transmission, recovers that record after an app restart, emits no activation sound or vibration, and does not claim that Operations Central has received it<br><br>**Scenario 3: Retry without creating duplicate cases**<br>Given a locally pending alert exists and connectivity and authorized access are restored<br>When the mobile app retries delivery using the original alert identifier<br>Then SafeBus creates or returns one case, preserves the activation time and original shift association, records the receipt time separately, and marks a late delivery as delayed<br><br>**Scenario 4: Consult my driver alert status**<br>Given the authenticated driver submitted a panic case<br>When the driver requests that case status<br>Then SafeBus returns Received, In progress or Closed and its update time for the driver's own case, without disclosing internal coordination notes or another driver's cases | | |

##### US05 — Close a Driver Shift

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US05** | Public Transport Driver | Medium | EP01 — Driver Shift and Safety |
| **Title** | Close a Driver Shift | | |
| **Description** | As a Public Transport Driver, I want to close my completed shift so that the company records the end of my responsibility and the app stops collecting my location. | | |
| **Acceptance Criteria** | **Scenario 1: Close an active shift**<br>Given the authenticated driver has an active shift<br>When the driver requests shift closure<br>Then SafeBus records the closing time and last available location and count with their timestamps, closes the shift and requests the app to stop location collection<br><br>**Scenario 2: Preserve an open incident**<br>Given the closing shift has an unresolved case<br>When SafeBus closes the shift<br>Then SafeBus preserves the case and its original driver and shift references, keeps it available to Operations Central, and does not mark the case as resolved | | |

##### US06 — Verify a Bus and Start a Passenger Journey

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US06** | Bus Passenger | High | EP02 — Passenger Verification and Safety |
| **Title** | Verify a Bus and Start a Passenger Journey | | |
| **Description** | As a Bus Passenger, I want to scan the unit QR and consult the company-recorded bus and driver details so that I can identify the service and associate safety requests with the correct bus. | | |
| **Acceptance Criteria** | **Scenario 1: Start a passenger journey**<br>Given the passenger accepts the current service terms and scans a registered unit QR with connectivity and an active driver shift<br>When SafeBus validates the unit association<br>Then SafeBus provides the bus plate, company, route, assigned driver's public display name and company validation status, creates a passenger session limited to that journey without requiring password-based registration, and allows the app to persist its association securely<br><br>**Scenario 2: Reject an unknown or inactive unit**<br>Given the QR is unreadable, unregistered, or identifies a bus without an active shift<br>When the passenger requests verification<br>Then SafeBus identifies the reason, creates no verified journey, and does not present the bus as verified<br><br>**Scenario 3: End a passenger journey**<br>Given a passenger journey association exists<br>When the passenger ends the journey or SafeBus records closure of its driver shift<br>Then SafeBus ends the association for new alerts, preserves access to the passenger's own case history, and keeps already queued reports linked to their original journey | | |

##### US07 — Consult Passenger Count and Bus Capacity

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US07** | Bus Passenger | High | EP02 — Passenger Verification and Safety |
| **Title** | Consult Passenger Count and Bus Capacity | | |
| **Description** | As a Bus Passenger, I want to consult the passenger count and capacity of a verified bus so that I can judge whether there is room before boarding. | | |
| **Acceptance Criteria** | **Scenario 1: Classify current occupancy**<br>Given the bus has capacity 42 and a count-source heartbeat no older than two minutes<br>When the passenger requests occupancy<br>Then SafeBus provides count, capacity, reading time and state: Available for counts below 42, Full for 42, and Over capacity for counts above 42<br><br>**Scenario 2: Handle unavailable or stale counts**<br>Given no valid count exists or the latest count-source heartbeat is older than two minutes<br>When the passenger requests occupancy<br>Then SafeBus reports Unavailable or Stale as applicable, preserves the last known count and time if they exist, and does not infer zero passengers or available space | | |

##### US08 — Activate a Silent Passenger Panic Alert with Bus Location

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US08** | Bus Passenger | High | EP02 — Passenger Verification and Safety |
| **Title** | Activate a Silent Passenger Panic Alert with Bus Location | | |
| **Description** | As a Bus Passenger, I want to activate a silent panic alert associated with my bus so that Operations Central can respond to a danger affecting my journey. | | |
| **Acceptance Criteria** | **Scenario 1: Submit a passenger panic alert**<br>Given the passenger has a verified active journey and connectivity<br>When the passenger activates the panic function<br>Then SafeBus creates a critical passenger case with its unique identifier, activation time, journey, bus, route and latest available bus location; the app emits no activation sound or vibration, requires no category before sending, and records Received only after server acknowledgement<br><br>**Scenario 2: Report without current bus location**<br>Given the passenger has a verified journey but bus location is stale or unavailable<br>When SafeBus receives the panic alert<br>Then SafeBus accepts the case, labels the location as Stale or Unavailable with its timestamp if present, and does not delay the request while waiting for passenger GPS<br><br>**Scenario 3: Queue and retry a passenger alert**<br>Given the passenger has a persisted journey association and loses connectivity before activating the alert<br>When the passenger activates the panic function and the app later restores authorized connectivity<br>Then the app persists the alert in protected local storage as Pending transmission without sound or vibration and retains it after an app restart, submits the original identifier and journey context on reconnection, and records Received only after acknowledgement; SafeBus returns one case even if delivery occurs after journey closure and marks that delivery as delayed | | |

##### US09 — Consult the Status of My Safety Cases

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US09** | Bus Passenger | Medium | EP02 — Passenger Verification and Safety |
| **Title** | Consult the Status of My Safety Cases | | |
| **Description** | As a Bus Passenger, I want to consult the status of safety cases submitted from my passenger session so that I know whether Operations Central has received, started attending or closed my report. | | |
| **Acceptance Criteria** | **Scenario 1: Consult a submitted case**<br>Given the passenger session owns a case that Operations Central has started attending<br>When the passenger requests the case status<br>Then SafeBus returns In progress, its update time and any passenger-facing response, without disclosing internal coordination notes<br><br>**Scenario 2: Protect another passenger's case**<br>Given a passenger session requests a case owned by a different session<br>When SafeBus validates case access<br>Then SafeBus rejects access and discloses no case details<br><br>**Scenario 3: Distinguish a locally pending report**<br>Given an alert remains locally queued without server acknowledgement<br>When the passenger requests its status<br>Then the app reports Pending transmission and does not claim receipt or attention by Operations Central | | |

##### US10 — Receive, Attend and Close Driver and Passenger Cases

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US10** | Fleet Supervisor | High | EP03 — Incident Response Coordination |
| **Title** | Receive, Attend and Close Driver and Passenger Cases | | |
| **Description** | As a Fleet Supervisor, I want to receive, attend and close driver and passenger cases through one response process so that both user groups receive traceable assistance from Operations Central. | | |
| **Acceptance Criteria** | **Scenario 1: Receive and attend a panic case**<br>Given a driver or passenger panic alert reaches the server and is recorded as Received with Critical priority<br>When an authorized supervisor starts attending that case<br>Then SafeBus preserves its source and context, records the responsible supervisor and attention time, and changes the case to In progress<br><br>**Scenario 2: Close a case with an outcome**<br>Given a case is In progress and its responsible supervisor provides an outcome and a response summary<br>When the supervisor requests closure<br>Then SafeBus records Closed, the outcome, closing time and a user-facing response, while preserving the incident history<br><br>**Scenario 3: Reject an invalid transition**<br>Given a case is Received or the closure request lacks an outcome<br>When the supervisor requests closure<br>Then SafeBus rejects the request and preserves the current state until attention has started and an outcome is supplied | | |

##### US11 — Monitor Fleet Location and Occupancy

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US11** | Fleet Supervisor | High | EP04 — Fleet Monitoring and Setup |
| **Title** | Monitor Fleet Location and Occupancy | | |
| **Description** | As a Fleet Supervisor, I want to consult my company's active buses and their location and occupancy status so that I can locate a unit and assess the available information during an incident. | | |
| **Acceptance Criteria** | **Scenario 1: Consult active fleet information**<br>Given the authenticated supervisor has buses assigned to their company<br>When the supervisor requests active fleet information<br>Then SafeBus returns each bus, route, driver, shift state, latest location and timestamp, count and timestamp, occupancy state and open cases; the mobile client uses an external cartographic service to represent available positions<br><br>**Scenario 2: Identify outdated location**<br>Given the latest bus location sample is older than three minutes or no sample exists<br>When SafeBus evaluates the bus location<br>Then SafeBus marks the last position as Stale, preserves its timestamp, and does not present it as a current position; absent samples produce Unavailable<br><br>**Scenario 3: Handle an external map-service failure**<br>Given the external cartographic service is unavailable but SafeBus fleet data is accessible<br>When the supervisor requests fleet information<br>Then SafeBus keeps bus details, coordinates, timestamps and case access available and reports that the map is unavailable | | |

##### US12 — Maintain the Recorded Capacity of a Bus

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US12** | Fleet Supervisor | Medium | EP04 — Fleet Monitoring and Setup |
| **Title** | Maintain the Recorded Capacity of a Bus | | |
| **Description** | As a Fleet Supervisor, I want to record the passenger capacity of a bus using its company-held technical record so that SafeBus evaluates occupancy against the correct limit. | | |
| **Acceptance Criteria** | **Scenario 1: Record a capacity**<br>Given the supervisor is authorized for the bus and supplies a positive integer capacity and a technical-record reference<br>When SafeBus receives the capacity update<br>Then SafeBus stores the capacity, reference, author and update time and applies the capacity to subsequent occupancy queries without changing the passenger count<br><br>**Scenario 2: Reject an invalid capacity**<br>Given the submitted capacity is zero, negative or non-integer, or the reference is absent<br>When SafeBus validates the update<br>Then SafeBus rejects the update, identifies the reason and preserves the last valid capacity | | |

##### US13 — Assign a Driver and Bus to a Route Shift

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US13** | Fleet Supervisor | High | EP04 — Fleet Monitoring and Setup |
| **Title** | Assign a Driver and Bus to a Route Shift | | |
| **Description** | As a Fleet Supervisor, I want to assign an existing driver and bus to a route and shift period so that the driver can validate the correct service and the company knows who is responsible. | | |
| **Acceptance Criteria** | **Scenario 1: Create a shift assignment**<br>Given the company has an enabled driver, bus and route with no overlapping assignment and a valid start and end period<br>When the supervisor records the assignment<br>Then SafeBus stores driver, bus, route, planned period and author and makes the assignment available to that driver<br><br>**Scenario 2: Reject a conflicting or foreign assignment**<br>Given the driver or bus has an overlapping assignment, belongs to another company, or is disabled<br>When the supervisor submits the assignment<br>Then SafeBus rejects the request, identifies the conflict or access limitation and preserves existing assignments | | |

##### US14 — Consult SafeBus Service Information

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US14** | Transport Company Representative | Medium | EP05 — Service Information and Contact |
| **Title** | Consult SafeBus Service Information | | |
| **Description** | As a Transport Company Representative, I want to consult the published SafeBus service information so that I understand its benefits and the service scope for my company. | | |
| **Acceptance Criteria** | **Scenario 1: Consult the service scope**<br>Given a representative requests the published static landing page<br>When the site serves its content<br>Then the content explains driver verification, driver and passenger panic alerts, fleet location, occupancy, connectivity limitations and the contact channel<br><br>**Scenario 2: Consult service terms and languages**<br>Given the representative requests service terms or selects a supported language<br>When the site serves the corresponding static content<br>Then the site provides the current terms and consistent English or Latin American Spanish content, using English by default | | |

##### US15 — Submit a Company Contact Request

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US15** | Transport Company Representative | Medium | EP05 — Service Information and Contact |
| **Title** | Submit a Company Contact Request | | |
| **Description** | As a Transport Company Representative, I want to submit my company and contact details so that the SafeBus team can respond to my request for information or a demonstration. | | |
| **Acceptance Criteria** | **Scenario 1: Register a contact request**<br>Given the representative supplies a company name, contact name, syntactically valid email and contact consent<br>When SafeBus receives the contact request with a unique submission identifier<br>Then SafeBus stores the request and receipt time and returns a receipt reference; retries with the same identifier return the same reference<br><br>**Scenario 2: Reject invalid contact details**<br>Given a required name, a valid email or contact consent is missing<br>When SafeBus validates the request<br>Then SafeBus identifies the invalid field and stores no contact request | | |

##### US16 — Sign In and Sign Out of a Company Account

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US16** | Registered Driver or Fleet Supervisor | High | EP06 — User Access and Service Integration |
| **Title** | Sign In and Sign Out of a Company Account | | |
| **Description** | As a Registered Driver or Fleet Supervisor, I want to sign in and sign out of my company-provisioned account so that I can use the operations assigned to my role and end access on the device. | | |
| **Acceptance Criteria** | **Scenario 1: Sign in with valid credentials**<br>Given the company-provisioned account is active and the user accepts the current service terms<br>When the user submits valid credentials<br>Then SafeBus establishes an authenticated session with the stored role and company and permits only the corresponding operations<br><br>**Scenario 2: Reject an invalid sign-in**<br>Given the account is disabled or the supplied credentials are invalid<br>When the user attempts sign-in<br>Then SafeBus creates no session and returns a generic sign-in failure without revealing whether the account exists<br><br>**Scenario 3: Sign out of the device**<br>Given a company session exists on the mobile device<br>When the user signs out<br>Then the app removes its local access credentials, stops collecting new location samples and requires sign-in for protected operations; pending reports remain protected and require renewed authorized access to synchronize | | |

##### US17 — Protect API Access by Role, Company and Passenger Session

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US17** | Developer | High | EP06 — User Access and Service Integration |
| **Title** | Protect API Access by Role, Company and Passenger Session | | |
| **Description** | As a Developer, I want to enforce authenticated and scoped access to SafeBus services so that clients access only the operations and information permitted to them. | | |
| **Acceptance Criteria** | **Scenario 1: Authorize a company request**<br>Given a client holds an unexpired signed access token with Fleet Supervisor role and a matching company scope<br>When the client requests an authorized fleet resource<br>Then the API validates the token and scope and returns HTTP 200 with only the authorized resource<br><br>**Scenario 2: Reject invalid authentication**<br>Given a protected request has a missing, expired or invalid token<br>When the API evaluates authentication<br>Then the API returns HTTP 401 and discloses no protected resource<br><br>**Scenario 3: Reject a forbidden operation**<br>Given an authenticated Driver requests a supervisor operation or a supervisor requests another company's resource<br>When the API evaluates permissions<br>Then the API returns HTTP 403 and leaves the protected resource unchanged<br><br>**Scenario 4: Restrict passenger sessions**<br>Given a valid passenger-session credential identifies one journey and its submitted cases<br>When the client requests a different session's case or a company administration operation<br>Then the API returns HTTP 403 and discloses no private case or company data; verified public unit information remains limited to US06 and US07 | | |

##### US18 — Provide a RESTful Location Service

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US18** | Developer | High | EP06 — User Access and Service Integration |
| **Title** | Provide a RESTful Location Service | | |
| **Description** | As a Developer, I want to provide location ingestion and retrieval through a RESTful API so that mobile clients exchange timestamped bus positions consistently. | | |
| **Acceptance Criteria** | **Scenario 1: Accept a location event**<br>Given an authorized driver client submits a unique event identifier, original assigned shift, capture time, accuracy and coordinates within valid latitude and longitude ranges<br>When POST /api/v1/location-events validates the payload<br>Then the API returns HTTP 201 and persists the event; it updates the current bus position only if the event is newer than the latest stored sample<br><br>**Scenario 2: Reject malformed coordinates**<br>Given a location payload is missing a required field or has latitude outside -90 to 90 or longitude outside -180 to 180<br>When POST /api/v1/location-events validates the payload<br>Then the API returns HTTP 422 with validation details and preserves the last valid bus position<br><br>**Scenario 3: Handle a repeated event**<br>Given the same authorized client resubmits a previously accepted identifier with the same payload<br>When POST /api/v1/location-events processes the retry<br>Then the API returns HTTP 200 with the original event reference and creates no duplicate; a conflicting payload for that identifier returns HTTP 409<br><br>**Scenario 4: Retrieve the current position**<br>Given an authorized supervisor requests a bus within their company<br>When GET /api/v1/vehicles/{id}/location processes the request<br>Then the API returns HTTP 200 with the latest position and timestamp and Current for a sample no older than three minutes, Stale for an older sample, or Unavailable when no sample exists | | |

##### US19 — Provide a RESTful Passenger-Count Service

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US19** | Developer | High | EP06 — User Access and Service Integration |
| **Title** | Provide a RESTful Passenger-Count Service | | |
| **Description** | As a Developer, I want to process ordered entry and exit events from a registered counting source so that SafeBus provides a reliable passenger count without double counting retries. | | |
| **Acceptance Criteria** | **Scenario 1: Initialize and process an ordered count**<br>Given a registered source has an authenticated association with a bus and shift and a confirmed initial empty-bus count of zero<br>When POST /api/v1/occupancy-events receives the next sequential entry or exit event with an identifier and capture time<br>Then the API returns HTTP 201, applies the increment or decrement once and records the resulting count and sequence; counts above capacity remain valid and are classified as Over capacity<br><br>**Scenario 2: Reject an impossible or unregistered event**<br>Given the payload is malformed, the source is not registered, or the next exit would reduce the count below zero<br>When the occupancy API validates the request<br>Then the API returns HTTP 422 for malformed or impossible data or HTTP 403 for an unauthorized source, preserves the last valid count and marks a count inconsistency as Unavailable pending reconciliation<br><br>**Scenario 3: Handle repeated and out-of-order delivery**<br>Given the API has accepted sequence 10 and receives an identical retry of 10 or sequence 12 before 11<br>When the API evaluates the sequence<br>Then the identical retry returns HTTP 200 without changing the count; sequence 12 returns HTTP 409 identifying expected sequence 11 and marks the count Unavailable until the source replays the missing sequence and following events successfully<br><br>**Scenario 4: Maintain source freshness**<br>Given a registered source has a valid initialized count and sends a heartbeat at least once per minute even when no passenger boards or exits<br>When an authorized client requests occupancy<br>Then the API returns HTTP 200 with count, capacity, last count time, last heartbeat time and validity; it reports Stale when the heartbeat is older than two minutes and Unavailable when initialization or sequence consistency is missing | | |

##### US20 — Deliver Live Case Updates and Recover Missed Notifications

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US20** | Developer | High | EP06 — User Access and Service Integration |
| **Title** | Deliver Live Case Updates and Recover Missed Notifications | | |
| **Description** | As a Developer, I want to deliver authenticated live case notifications and recover current case state after reconnection so that Operations Central does not depend on an uninterrupted connection to find received alerts. | | |
| **Acceptance Criteria** | **Scenario 1: Deliver a live notification**<br>Given an authorized supervisor client has an active WebSocket connection and the test network has a measured round-trip time no greater than 200 ms, with two active buses and five supervisor subscriptions<br>When the server persists a new panic case<br>Then the service delivers its identifier, source, bus, state and receipt time to the company subscription within five seconds after persistence<br><br>**Scenario 2: Recover after a disconnection**<br>Given a supervisor client loses its socket connection while cases are persisted on the server<br>When the client reconnects and authenticates<br>Then the client retrieves current open cases from the REST API, reconciles them by case identifier and resumes live notifications without creating duplicate cases<br><br>**Scenario 3: Reject a foreign subscription**<br>Given a supervisor token identifies one company<br>When the client requests a socket subscription for another company<br>Then the service rejects the subscription and delivers no foreign company events | | |

##### US21 — Spike Mobile Background Location and Battery Use

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US21** | Developer | High | EP07 — Technical Feasibility Spikes |
| **Title** | Spike Mobile Background Location and Battery Use | | |
| **Description** | As a Developer, I want to compare two background-location sampling profiles within a 12-hour investigation so that the team selects a measured configuration for US03 and identifies platform limitations. | | |
| **Acceptance Criteria** | **Scenario 1: Complete a bounded experiment**<br>Given the team has a physical Android device, profiles of 15 and 30 seconds, and a budget of at most 10 battery percentage points per hour per profile<br>When the developer runs one-hour tests per profile under comparable conditions and records a one-hour baseline plus a permission-revocation and background-restriction check within the 12-hour time box<br>Then the report records device and OS, raw battery levels, baseline, sample counts, location accuracy and restrictions, compares both profiles and recommends one or records that neither meets the budget; it does not claim a measured full-shift endurance result<br><br>**Scenario 2: Document a limitation or unfinished measurement**<br>Given a profile fails the budget, loses updates in the background, or the investigation reaches its time limit<br>When the developer closes the investigation<br>Then the report records the failure or missing evidence, cites the technical sources consulted, identifies what was learned beyond class content, and specifies the changes and follow-up validation required for US03 on native and cross-platform clients | | |

##### US22 — Spike Ordered Passenger-Count Event Ingestion

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US22** | Developer | High | EP07 — Technical Feasibility Spikes |
| **Title** | Spike Ordered Passenger-Count Event Ingestion | | |
| **Description** | As a Developer, I want to test passenger-count event ingestion through the REST contract within a 16-hour investigation so that the team knows whether the counting source can maintain a consistent count despite interruptions. | | |
| **Acceptance Criteria** | **Scenario 1: Run the ingestion proof of concept**<br>Given a prototype sensor adapter or an explicitly identified simulator emits device, bus, shift, sequence, event identifier and entry or exit events using the US19 REST contract<br>When the developer tests a known event sequence, a five-minute interruption and reconnection within the 16-hour time box<br>Then the report compares the final count against the known expected count, records receipt delay and event loss, identifies the actual source used and provides an implementation recommendation for US19<br><br>**Scenario 2: Test duplicate and missing events**<br>Given the source repeats an entry, delays an exit and omits a sequence number<br>When the developer runs the proof of concept<br>Then the report demonstrates or records failure of duplicate rejection, gap handling and recovery, lists the sources consulted and the implementation tasks; a simulator-only test explicitly leaves physical-sensor accuracy unvalidated | | |

### 2.4.2. Impact Mapping

El Impact Mapping de SafeBus relaciona cuatro objetivos del servicio con las acciones de conductores, pasajeros y representantes de empresas de transporte. A partir de estos comportamientos se identifican los entregables y las historias de usuario que permiten validar al conductor, solicitar y atender ayuda, consultar el aforo y conocer la propuesta comercial. El siguiente mapa muestra estas relaciones y su correspondencia con el catálogo de requisitos

<img src="../assets/SafeBus - Impact Mapping.png">

### 2.4.3. Product Backlog

El Product Backlog ordena las historias por su valor para el servicio. La estimación utiliza Story Points de la escala 1, 2, 3, 5 y 8. El sprint indica la iteración de desarrollo asignada; las historias de acceso e integración permiten implementar los recorridos funcionales y la landing se incorpora desde el primer sprint.

| # Orden | User Story Id | Título | Story Points | Sprint |
|---|---|---|---|---|
| 1 | US04 | Activate a Silent Driver Panic Alert | 5 |  |
| 2 | US08 | Activate a Silent Passenger Panic Alert with Bus Location | 5 |  |
| 3 | US10 | Receive, Attend and Close Driver and Passenger Cases | 5 |  |
| 4 | US01 | Validate an Assigned Shift with a Driver QR Credential | 3 |  |
| 5 | US06 | Verify a Bus and Start a Passenger Journey | 3 | |
| 6 | US07 | Consult Passenger Count and Bus Capacity | 3 |  |
| 7 | US11 | Monitor Fleet Location and Occupancy | 5 |  |
| 8 | US03 | Share Bus Location During an Active Shift | 5 |  |
| 9 | US14 | Consult SafeBus Service Information | 2 |  |
| 10 | US15 | Submit a Company Contact Request | 2 |  |
| 11 | US13 | Assign a Driver and Bus to a Route Shift | 3 |  |
| 12 | US16 | Sign In and Sign Out of a Company Account | 3 | |
| 13 | US17 | Protect API Access by Role, Company and Passenger Session | 3 |  |
| 14 | US02 | Consult Assigned Route and Shift Details | 2 |  |
| 15 | US21 | Spike Mobile Background Location and Battery Use | 3 |  |
| 16 | US22 | Spike Ordered Passenger-Count Event Ingestion | 5 |  |
| 17 | US19 | Provide a RESTful Passenger-Count Service | 5 |  |
| 18 | US18 | Provide a RESTful Location Service | 3 |  |
| 19 | US20 | Deliver Live Case Updates and Recover Missed Notifications | 5 |  |
| 20 | US12 | Maintain the Recorded Capacity of a Bus | 2 |  |
| 21 | US05 | Close a Driver Shift | 3 |  |
| 22 | US09 | Consult the Status of My Safety Cases | 3 |  |

---

## 2.5. Strategic-Level Domain-Driven Design

### 2.5.1. EventStorming

#### 2.5.1.1. Candidate Context Discovery

[Proceso y capturas]

#### 2.5.1.2. Domain Message Flows Modeling

[Domain Storytelling]

#### 2.5.1.3. Bounded Context Canvases

[Un Bounded Context Canvas por cada BC, en orden de importancia]

### 2.5.2. Context Mapping

[Context maps y patrones DDD aplicados: Anti-corruption Layer, Conformist,
Customer/Supplier, Shared Kernel]

### 2.5.3. Software Architecture

#### 2.5.3.1. Software Architecture Context Level Diagrams

[Diagrama de contexto — C4 Model, herramienta Structurizr]

#### 2.5.3.2. Software Architecture Container Level Diagrams

[Diagrama de contenedores]

#### 2.5.3.3. Software Architecture Deployment Diagrams

[Diagrama de despliegue]

---

## 2.6. Tactical-Level Domain-Driven Design

> Duplicar la siguiente subsección `2.6.x` por cada Bounded Context identificado.

### 2.6.1. Bounded Context: [Nombre del Bounded Context]

#### 2.6.1.1. Domain Layer

[Entities, Value Objects, Aggregates, Factories, Domain Services, Repository interfaces]

#### 2.6.1.2. Interface Layer

[Controllers, Consumers]

#### 2.6.1.3. Application Layer

[Command Handlers, Event Handlers]

#### 2.6.1.4. Infrastructure Layer

[Repository implementations, Message Brokers, servicios externos]

#### 2.6.1.5. Bounded Context Software Architecture Component Level Diagrams

[Component Diagram C4 por Container]

#### 2.6.1.6. Bounded Context Software Architecture Code Level Diagrams

##### 2.6.1.6.1. Bounded Context Domain Layer Class Diagrams

[Class Diagram UML — atributos, métodos, scope, relaciones calificadas]

##### 2.6.1.6.2. Bounded Context Database Design Diagram

[Database Diagram — tablas, columnas, constraints, relaciones]
