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
SafeBus integrará ubicación durante el turno, botones de emergencia digitales para conductor y pasajero, y conteo de pasajeros en una sola plataforma móvil. La prueba con hardware se precisará con el docente a partir de US30.

**#2 Plataforma centralizada de información**  
Se consolidará toda la información del vehículo (ubicación, alertas, estado) en un sistema único accesible para empresas.

**#3 Integración de hardware y software**  
La primera versión utiliza el GPS del teléfono y botones de pánico digitales. La fuente externa de conteo se integra mediante un contrato de eventos; el prototipo debe identificar si utiliza sensores reales o un simulador. Un botón físico adicional queda como posible ampliación.

**#4 Analítica y reportes de seguridad**  
Se incorporará un reporte básico de incidentes y tiempos hasta el inicio de atención. Los avisos se asociarán a rutas; el análisis avanzado de zonas de riesgo queda como posible ampliación.

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
| Reportar una discrepancia y terminar el vínculo con el viaje | Cuando detecta un dato incorrecto / al bajar | Media |

### 2.3.3. User Journey Mapping

Los gráficos existentes describen hipótesis del recorrido **actual, sin SafeBus (As-Is)**: aparición del incidente, dificultad para pedir ayuda y respuesta limitada. Se conservan como antecedentes a contrastar mediante entrevistas. La matriz del pasajero completa ese mismo enfoque. El recorrido futuro con la aplicación se especifica por separado en el To-Be Scenario Mapping de 2.4.


**Segmento objetivo #1 — José Mamani Quispe**

<img src="../assets/Segmento Objetivo 1 - JourneyMap.png">


**Segmento objetivo #2 — Luis Ramírez Nombera**

<img src="../assets/Segmento Objetivo 2 - JourneyMap.png">

**Segmento objetivo #3 — Pasajero (hipótesis del recorrido actual, sin SafeBus)**

| Etapa | Acción actual supuesta | Dificultad a validar | Oportunidad para SafeBus |
|---|---|---|---|
| Abordaje | Observa la placa y la información visible del vehículo. | No cuenta con una referencia digital del conductor asignado. | Verificar los datos registrados de la unidad mediante US08. |
| Decisión de viaje | Estima visualmente cuántas personas hay. | Desconoce el conteo y la capacidad registrada. | Consultar ocupación y vigencia mediante US09. |
| Incidente | Busca ayuda de otra persona o intenta llamar. | Puede tener dificultades para actuar discretamente o identificar a quién avisar. | Botón de pánico del pasajero en US10. |
| Seguimiento | Espera una respuesta o vuelve a contactar. | No sabe si su solicitud fue recibida ni quién la atiende. | Consulta del caso mediante US12 y atención mediante US18. |
| Discrepancia o salida | Comunica informalmente un problema o termina el viaje. | La empresa puede no conservar el reporte asociado al bus. | Reporte de discrepancia mediante US14. |


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
| Route Safety Notice | Aviso de seguridad de ruta | Mensaje de la empresa vinculado a una ruta hasta su vencimiento. |

---

## 2.4. Requirements specification

SafeBus adapta la propuesta anterior a una experiencia móvil para tres actores: conductor, pasajero y supervisor de empresa. El botón de pánico para pasajeros es parte del alcance principal, conforme a la indicación docente comunicada por el equipo. Las historias cubren validación del conductor, alertas de ambos usuarios, atención por la central, ubicación y conteo de pasajeros, junto con los componentes exigidos por el curso.

Esta versión contiene **28 historias activas agrupadas en 7 épicas**: 22 funcionales, 4 técnicas y 2 spikes. La cantidad responde a responsabilidades concretas y a la eliminación de repeticiones; no constituye una cantidad mínima indicada por el docente. Es una propuesta refinada para recibir feedback, no una validación con usuarios ni una afirmación de funcionalidad implementada.

#### Scope and shared business rules

| ID | Regla propuesta para la primera versión |
|---|---|
| BR01 | **Actores y canales.** Conductores, pasajeros y supervisores usan experiencias por rol en la aplicación móvil. Se contempla implementación nativa Android y cross-platform con el mismo alcance funcional y backend. La landing es un sitio estático público. No se requiere construir además una aplicación web de operaciones para esta primera versión. |
| BR02 | **Acceso e información inicial.** La empresa dispone de cuentas, buses, rutas, capacidades y credenciales QR cargados como datos iniciales documentados. US32 permite asignarlos a turnos y US22 actualizar capacidades. US31 cubre el acceso de conductor y supervisor. No se incluye registro público de empresas ni un módulo completo de administración. |
| BR03 | **Pasajero.** El QR del bus inicia una sesión limitada al viaje, previa aceptación de términos y con conexión para verificarlo. No exige crear una cuenta con contraseña. La sesión y asociación se conservan de forma protegida en ese dispositivo; permiten consultar únicamente sus propios casos. No se promete recuperación en otro teléfono. El pasajero puede terminar el viaje y el cierre del turno también termina asociaciones para nuevas alertas. Escanear el QR vincula el reporte al bus; no demuestra físicamente que la persona esté a bordo. |
| BR04 | **Validación QR.** El conductor autenticado valida su credencial contra la asignación registrada por la empresa. El pasajero consulta placa, empresa, ruta, nombre público del conductor y validación interna. No se afirma certificación oficial ni consulta automática de SOAT, ATU o revisión técnica. Los ejemplos y registros de prueba no son datos comprobados de personas reales. |
| BR05 | **Ubicación.** La fuente principal es el GPS del teléfono del conductor durante el turno. La ubicación es Current con antigüedad menor o igual a tres minutos, Stale si la supera y Unavailable si no existe. Siempre se conserva la hora de captura; recibir un dato antiguo no lo convierte en actual. Los intervalos de muestreo se decidirán con US29. |
| BR06 | **Conteo.** La fuente de conteo se registra por bus y emite subidas, bajadas y una señal de disponibilidad al menos cada minuto. El conteo inicia solo después de confirmar el bus vacío; si no puede confirmarse, se informa Unavailable. Una pausa sin subidas no significa falla: la vigencia se decide por la señal de disponibilidad. Hasta dos minutos se considera vigente; después, Stale. Available significa conteo menor que capacidad, Full significa igualdad y Over capacity significa mayor. Un evento perdido o un conteo incoherente se informa como Unavailable hasta reconciliarlo. |
| BR07 | **Alertas sin conexión.** Los dos botones de pánico son digitales y silenciosos, sin sonido ni vibración de activación. La app guarda localmente el identificador, contexto del viaje y hora original, incluso si se reinicia, y muestra Pending transmission hasta confirmación del servidor. La falta de GPS o aforo no impide enviar una alerta vinculada al bus. La sincronización conserva el turno original aunque ya haya cerrado; una recepción tardía se identifica como tal. El botón físico no es requisito de esta primera versión móvil. |
| BR08 | **Atención de casos.** El servidor usa Received → In progress → Closed. Pending transmission pertenece solo a la app. Los dos tipos de pánico tienen prioridad Critical; reportes ordinarios y discrepancias tienen prioridad Normal. Un supervisor de la empresa asume la atención y registra un resultado para cerrar. Closed significa cierre registrado con resultado, no una garantía automática de que desapareció el peligro. No se fusionan automáticamente reportes de personas distintas. |
| BR09 | **Coordinación externa.** La central contacta autoridades por medios externos y registra intentos y resultados en US20. SafeBus no garantiza respuesta policial, atención 24 horas ni envío automático a PNP/ATU. La disponibilidad humana del servicio debe acordarse con cada empresa. |
| BR10 | **Servicios e investigación.** US15 incorpora un servicio cartográfico de terceros; el proveedor y sus condiciones están pendientes de selección antes de implementar. La aplicación funciona con datos y coordenadas si el mapa falla. US29 y US30 deben alimentar historias implementadas y documentar lo aprendido fuera de clase. Un simulador de conteo debe identificarse expresamente y no acredita precisión de sensores físicos; el alcance de hardware se revisará con el docente. |
| BR11 | **Operación móvil.** Una alerta no requiere escribir una descripción antes de enviarse. Reportes ordinarios, consulta de detalles y configuración se realizan con el vehículo detenido cuando actúa el conductor. No se incluye cálculo automático de desvíos, seguimiento continuo del GPS del pasajero, analítica avanzada ni gestión comercial extensa. |

Las duraciones, longitudes y metas numéricas de esta sección son decisiones iniciales comprobables, pendientes de refinamiento con el equipo y el docente; no son resultados de pruebas realizadas.

#### To-Be Scenario Mapping

Esta matriz describe el recorrido futuro propuesto con SafeBus y lo vincula con las historias. Se distingue de los recorridos actuales de 2.3.3.

| Actor | Antes o al iniciar el viaje | Durante el servicio | Ante un incidente | Al finalizar |
|---|---|---|---|---|
| Conductor | Ingresa con su cuenta, consulta la asignación y valida su QR (US31, US02, US01). | Comprueba disponibilidad y comparte ubicación; consulta avisos con el vehículo detenido (US03, US04, US21). | Activa una alerta silenciosa o registra un reporte ordinario. Si no hay conexión, la alerta queda pendiente localmente (US05, US06). | Cierra el turno, detiene el GPS y conserva el vínculo histórico con sus casos (US07). |
| Pasajero | Acepta términos, verifica la unidad mediante QR y consulta aforo (US08, US09). | Conserva la asociación con el viaje, sin seguimiento continuo de su GPS (US08). | Activa su botón de pánico, consulta su atención o reporta una discrepancia (US10, US12, US14). | Termina la asociación al bajar y conserva acceso a sus casos en el mismo dispositivo (US08, US12). |
| Supervisor | Accede con su cuenta y asigna conductor, bus y ruta; registra capacidad (US31, US32, US22). | Consulta ubicación, aforo, vigencia de datos y casos; publica avisos por ruta (US15, US21). | Inicia la atención, registra contactos externos y cierra el caso con resultado (US18, US20). | Consulta o exporta los incidentes; los casos abiertos continúan aunque termine el turno del conductor (US23, US18). |

#### Cross-cutting acceptance requirements

Estos criterios forman parte de las historias aplicables y se verifican en ambas implementaciones móviles y en la landing cuando corresponda. No se agregan pantallas o módulos separados para cada criterio.

| ID | Aplicación | Criterio comprobable |
|---|---|---|
| CR01 | Landing, aplicaciones y servicios | Given no language preference exists, When the product returns user-facing content, Then it uses English by default. Given Latin American Spanish is selected, When the user repeats the supported operation, Then the product provides the equivalent content or message in es_419 without changing the business result. |
| CR02 | Landing y aplicaciones | Given a user uses a screen reader or an alternative supported input method, When the user performs an applicable core flow, Then all actions expose meaningful accessible names, status changes are identifiable without color alone and the flow completes without an inaccessible action. Web semantics and ARIA, contrast and supported text enlargement are checked in design validation. |
| CR03 | US08, US24, US25 y US31 | Given a user is about to start a passenger session, first access a company account or submit contact details, When the service validates the request, Then it requires acceptance of the current service terms or contact consent as applicable and records its version and time; a declined acceptance creates no new session or contact request. Terms remain available for consultation. |
| CR04 | US04, US05, US08 y US10 | Given the app persists pending events or a passenger association and restarts without connectivity, When the same installation resumes, Then it recovers the protected records with their original identifiers and timestamps, claims no server receipt for pending events, and synchronizes only with authorized access. Credentials and sensitive local records use platform-appropriate protected storage. |
| CR05 | US26, US27, US28 y US33; API de casos y contacto | Given the internal service contracts are implemented, When the team reviews the OpenAPI documentation and associated acceptance tests, Then REST requests, responses, errors and authorization rules match the relevant scenarios. WebSocket message and subscription rules are documented separately. |
| CR06 | US28 | Given two active buses, five supervisor subscriptions and a stable demo network with measured round-trip time no greater than 200 ms, When the team submits 20 test panic alerts, Then each connected authorized subscriber receives the relevant notification within five seconds of server persistence; activation, persistence and delivery times are retained separately. This is an acceptance target, not a production guarantee. |

### 2.4.1. User Stories

Cada historia expresa un actor, una necesidad y su beneficio. Los criterios usan Given–When–Then en presente y tercera persona, y describen resultados sin prescribir pantallas. Las Technical Stories emplean el rol Developer, conforme al enunciado. Los spikes especifican duración y evidencia de cierre. Las historias y épicas conservan identificadores para facilitar la trazabilidad respecto de la revisión anterior.

#### Epics

| Epic ID | Epic | Propósito | Historias activas |
|---|---|---|---|
| EP01 | **Driver Shift and Safety** — Turno y seguridad del conductor | Validar el turno, consultar la ruta, revisar la disponibilidad del monitoreo, compartir ubicación, pedir ayuda, reportar incidentes y cerrar el turno. | US01, US02, US03, US04, US05, US06, US07 |
| EP02 | **Passenger Verification and Safety** — Verificación y seguridad del pasajero | Consultar los datos del bus y su conductor, conocer el aforo, activar el botón de pánico, consultar la atención recibida y reportar datos que no coinciden. | US08, US09, US10, US12, US14 |
| EP03 | **Incident Response Coordination** — Atención de incidentes | Recibir y atender alertas de ambos tipos de usuario, registrar contactos externos y comunicar avisos de seguridad por ruta. | US18, US20, US21 |
| EP04 | **Fleet Monitoring and Setup** — Monitoreo y configuración básica de flota | Supervisar ubicación y aforo, registrar la capacidad del bus, asignar turnos y obtener un reporte básico de incidentes. | US15, US22, US23, US32 |
| EP05 | **Service Information and Contact** — Presentación y contacto comercial | Explicar SafeBus mediante una landing page estática y registrar solicitudes sencillas de contacto. | US24, US25 |
| EP06 | **User Access and Service Integration** — Acceso y comunicación de la aplicación | Permitir el acceso de los usuarios, proteger los datos y conectar las aplicaciones con los servicios de ubicación, conteo y alertas. | US26, US27, US28, US31, US33 |
| EP07 | **Technical Feasibility Spikes** — Investigaciones técnicas breves | Comprobar el consumo del GPS móvil y la recepción de eventos de conteo antes de cerrar sus decisiones de implementación. | US29, US30 |

#### User Story Catalogue — Reviewed Scope

| Story ID | Actor | Title | Priority | Epic | Tipo |
|---|---|---|---|---|---|
| **US01** | Public Transport Driver | Validate an Assigned Shift with a Driver QR Credential | High | EP01 | Functional |
| **US02** | Public Transport Driver | Consult Assigned Route and Shift Details | High | EP01 | Functional |
| **US03** | Public Transport Driver | Check Monitoring Availability Before Service | Medium | EP01 | Functional |
| **US04** | Public Transport Driver | Share Bus Location During an Active Shift | High | EP01 | Functional |
| **US05** | Public Transport Driver | Activate a Silent Driver Panic Alert | High | EP01 | Functional |
| **US06** | Public Transport Driver | Report a Non-Emergency Safety Incident | Medium | EP01 | Functional |
| **US07** | Public Transport Driver | Close a Driver Shift | Medium | EP01 | Functional |
| **US08** | Bus Passenger | Verify a Bus and Start a Passenger Journey | High | EP02 | Functional |
| **US09** | Bus Passenger | Consult Passenger Count and Bus Capacity | High | EP02 | Functional |
| **US10** | Bus Passenger | Activate a Silent Passenger Panic Alert with Bus Location | High | EP02 | Functional |
| **US12** | Bus Passenger | Consult the Status of My Safety Cases | Medium | EP02 | Functional |
| **US14** | Bus Passenger | Report a Bus or Driver Information Mismatch | Medium | EP02 | Functional |
| **US15** | Fleet Supervisor | Monitor Fleet Location and Occupancy | High | EP04 | Functional |
| **US18** | Fleet Supervisor | Receive, Attend and Close Driver and Passenger Cases | High | EP03 | Functional |
| **US20** | Fleet Supervisor | Record External Emergency Contact Attempts | Medium | EP03 | Functional |
| **US21** | Fleet Supervisor | Publish a Time-Limited Route Safety Notice | Medium | EP03 | Functional |
| **US22** | Fleet Supervisor | Maintain the Recorded Capacity of a Bus | Medium | EP04 | Functional |
| **US23** | Fleet Supervisor | Export a Basic Incident Report | Medium | EP04 | Functional |
| **US24** | Transport Company Representative | Consult SafeBus Service Information | Medium | EP05 | Functional |
| **US25** | Transport Company Representative | Submit a Company Contact Request | Medium | EP05 | Functional |
| **US26** | Developer | Protect API Access by Role, Company and Passenger Session | High | EP06 | Technical |
| **US27** | Developer | Provide a RESTful Location Service | High | EP06 | Technical |
| **US28** | Developer | Deliver Live Case Updates and Recover Missed Notifications | High | EP06 | Technical |
| **US29** | Developer | Spike Mobile Background Location and Battery Use | High | EP07 | Spike |
| **US30** | Developer | Spike Ordered Passenger-Count Event Ingestion | High | EP07 | Spike |
| **US31** | Registered Driver or Fleet Supervisor | Sign In and Sign Out of a Company Account | High | EP06 | Functional |
| **US32** | Fleet Supervisor | Assign a Driver and Bus to a Route Shift | High | EP04 | Functional |
| **US33** | Developer | Provide a RESTful Passenger-Count Service | High | EP06 | Technical |

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
| **Acceptance Criteria** | **Scenario 1: Consult an assignment**<br>Given the authenticated driver has an assigned shift<br>When the driver requests the assignment<br>Then SafeBus provides the bus plate, route name, origin, destination, scheduled start and any active route notice<br><br>**Scenario 2: Handle a missing assignment**<br>Given the authenticated driver has no assigned shift<br>When the driver requests the assignment<br>Then SafeBus reports that no assignment is available and does not substitute another driver's assignment | | |

##### US03 — Check Monitoring Availability Before Service

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US03** | Public Transport Driver | Medium | EP01 — Driver Shift and Safety |
| **Title** | Check Monitoring Availability Before Service | | |
| **Description** | As a Public Transport Driver, I want to check location, connectivity and passenger-count availability before service so that I know which safety information is available to Operations Central. | | |
| **Acceptance Criteria** | **Scenario 1: Report available monitoring**<br>Given the mobile app has location permission, network connectivity and a count-source heartbeat no older than two minutes<br>When the driver requests the monitoring check<br>Then SafeBus reports each component as available and records the check time<br><br>**Scenario 2: Report partial availability**<br>Given the location permission is denied, the network is unavailable, or the count-source heartbeat is older than two minutes<br>When the driver requests the monitoring check<br>Then SafeBus identifies each unavailable component and its limitation, keeps panic activation available for local recording, and does not block an otherwise valid shift solely because monitoring is degraded | | |

##### US04 — Share Bus Location During an Active Shift

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US04** | Public Transport Driver | High | EP01 — Driver Shift and Safety |
| **Title** | Share Bus Location During an Active Shift | | |
| **Description** | As a Public Transport Driver, I want the mobile app to share my bus location during my active shift so that Operations Central can locate the unit when assistance is needed. | | |
| **Acceptance Criteria** | **Scenario 1: Share a current location**<br>Given the driver has an active shift, grants location permission and has connectivity<br>When the app obtains a location sample at the configured interval<br>Then SafeBus sends the event identifier, coordinates, accuracy, capture time, bus and shift to the location service<br><br>**Scenario 2: Synchronize locally stored samples**<br>Given the app captures three samples while connectivity is unavailable<br>When connectivity returns during an authenticated session<br>Then the app submits the locally persisted samples with their original identifiers and times, removes acknowledged samples from the pending queue, and does not replace a newer current position with an older sample<br><br>**Scenario 3: Stop collecting location**<br>Given the shift closes or the driver withdraws location permission<br>When the app evaluates location collection<br>Then the app stops collecting new samples and reports that live location is unavailable; already pending samples remain associated with their original shift | | |

##### US05 — Activate a Silent Driver Panic Alert

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US05** | Public Transport Driver | High | EP01 — Driver Shift and Safety |
| **Title** | Activate a Silent Driver Panic Alert | | |
| **Description** | As a Public Transport Driver, I want to activate a silent panic alert from the mobile app so that Operations Central receives a request for help linked to my bus. | | |
| **Acceptance Criteria** | **Scenario 1: Submit a driver panic alert**<br>Given the authenticated driver has an active shift and connectivity<br>When the driver activates the panic function<br>Then SafeBus records a critical driver alert with its unique identifier, activation time, bus, route and available location and occupancy context; the mobile app emits no activation sound or vibration and records Received only after server acknowledgement<br><br>**Scenario 2: Queue a panic alert offline**<br>Given the driver has a locally stored active-shift association and no connectivity<br>When the driver activates the panic function<br>Then the mobile app persists the alert and its original context as Pending transmission, emits no activation sound or vibration, and does not claim that Operations Central has received it<br><br>**Scenario 3: Retry without creating duplicate cases**<br>Given a locally pending alert exists and connectivity and authorized access are restored<br>When the mobile app retries delivery using the original alert identifier<br>Then SafeBus creates or returns one case, preserves the activation time and original shift association, records the receipt time separately, and marks a late delivery as delayed<br><br>**Scenario 4: Consult my driver alert status**<br>Given the authenticated driver submitted a panic case<br>When the driver requests that case status<br>Then SafeBus returns Received, In progress or Closed and its update time for the driver's own case, without disclosing internal coordination notes or another driver's cases | | |

##### US06 — Report a Non-Emergency Safety Incident

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US06** | Public Transport Driver | Medium | EP01 — Driver Shift and Safety |
| **Title** | Report a Non-Emergency Safety Incident | | |
| **Description** | As a Public Transport Driver, I want to report a non-emergency safety incident with a category and a short description so that the company can review the issue without confusing it with an active panic alert. | | |
| **Acceptance Criteria** | **Scenario 1: Register an incident**<br>Given the authenticated driver has an active shift and supplies a category and a description of 1 to 500 characters<br>When SafeBus receives the report<br>Then SafeBus records the description, category, bus, route, activation time and available location as a non-emergency case for Operations Central<br><br>**Scenario 2: Reject an incomplete report**<br>Given the report has no category or its description falls outside the permitted length<br>When SafeBus validates the report<br>Then SafeBus identifies the invalid field and creates no case | | |

##### US07 — Close a Driver Shift

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US07** | Public Transport Driver | Medium | EP01 — Driver Shift and Safety |
| **Title** | Close a Driver Shift | | |
| **Description** | As a Public Transport Driver, I want to close my completed shift so that the company records the end of my responsibility and the app stops collecting my location. | | |
| **Acceptance Criteria** | **Scenario 1: Close an active shift**<br>Given the authenticated driver has an active shift<br>When the driver requests shift closure<br>Then SafeBus records the closing time and last available location and count with their timestamps, closes the shift and requests the app to stop location collection<br><br>**Scenario 2: Preserve an open incident**<br>Given the closing shift has an unresolved case<br>When SafeBus closes the shift<br>Then SafeBus preserves the case and its original driver and shift references, keeps it available to Operations Central, and does not mark the case as resolved | | |

##### US08 — Verify a Bus and Start a Passenger Journey

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US08** | Bus Passenger | High | EP02 — Passenger Verification and Safety |
| **Title** | Verify a Bus and Start a Passenger Journey | | |
| **Description** | As a Bus Passenger, I want to scan the unit QR and consult the company-recorded bus and driver details so that I can identify the service and associate safety requests with the correct bus. | | |
| **Acceptance Criteria** | **Scenario 1: Start a passenger journey**<br>Given the passenger accepts the current service terms and scans a registered unit QR with connectivity and an active driver shift<br>When SafeBus validates the unit association<br>Then SafeBus provides the bus plate, company, route, assigned driver's public display name and company validation status, creates a passenger session limited to that journey, and allows the app to persist its association securely<br><br>**Scenario 2: Reject an unknown or inactive unit**<br>Given the QR is unreadable, unregistered, or identifies a bus without an active shift<br>When the passenger requests verification<br>Then SafeBus identifies the reason, creates no verified journey, and does not present the bus as verified<br><br>**Scenario 3: End a passenger journey**<br>Given a passenger journey association exists<br>When the passenger ends the journey or SafeBus records closure of its driver shift<br>Then SafeBus ends the association for new alerts, preserves access to the passenger's own case history, and keeps already queued reports linked to their original journey | | |

##### US09 — Consult Passenger Count and Bus Capacity

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US09** | Bus Passenger | High | EP02 — Passenger Verification and Safety |
| **Title** | Consult Passenger Count and Bus Capacity | | |
| **Description** | As a Bus Passenger, I want to consult the passenger count and capacity of a verified bus so that I can judge whether there is room before boarding. | | |
| **Acceptance Criteria** | **Scenario 1: Classify current occupancy**<br>Given the bus has capacity 42 and a count-source heartbeat no older than two minutes<br>When the passenger requests occupancy<br>Then SafeBus provides count, capacity, reading time and state: Available for counts below 42, Full for 42, and Over capacity for counts above 42<br><br>**Scenario 2: Handle unavailable or stale counts**<br>Given no valid count exists or the latest count-source heartbeat is older than two minutes<br>When the passenger requests occupancy<br>Then SafeBus reports Unavailable or Stale as applicable, preserves the last known count and time if they exist, and does not infer zero passengers or available space | | |

##### US10 — Activate a Silent Passenger Panic Alert with Bus Location

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US10** | Bus Passenger | High | EP02 — Passenger Verification and Safety |
| **Title** | Activate a Silent Passenger Panic Alert with Bus Location | | |
| **Description** | As a Bus Passenger, I want to activate a silent panic alert associated with my bus so that Operations Central can respond to a danger affecting my journey. | | |
| **Acceptance Criteria** | **Scenario 1: Submit a passenger panic alert**<br>Given the passenger has a verified active journey and connectivity<br>When the passenger activates the panic function<br>Then SafeBus creates a critical passenger case with its unique identifier, activation time, journey, bus, route and latest available bus location; the app emits no activation sound or vibration, requires no category before sending, and records Received only after server acknowledgement<br><br>**Scenario 2: Report without current bus location**<br>Given the passenger has a verified journey but bus location is stale or unavailable<br>When SafeBus receives the panic alert<br>Then SafeBus accepts the case, labels the location as Stale or Unavailable with its timestamp if present, and does not delay the request while waiting for passenger GPS<br><br>**Scenario 3: Queue and retry a passenger alert**<br>Given the passenger has a persisted journey association and loses connectivity before activating the alert<br>When the passenger activates the panic function and the app later restores authorized connectivity<br>Then the app persists the alert as Pending transmission without sound or vibration, submits the original identifier and journey context on reconnection, and records Received only after acknowledgement; SafeBus returns one case even if delivery occurs after journey closure and marks that delivery as delayed | | |

##### US12 — Consult the Status of My Safety Cases

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US12** | Bus Passenger | Medium | EP02 — Passenger Verification and Safety |
| **Title** | Consult the Status of My Safety Cases | | |
| **Description** | As a Bus Passenger, I want to consult the status of safety cases submitted from my passenger session so that I know whether Operations Central has received, started attending or closed my report. | | |
| **Acceptance Criteria** | **Scenario 1: Consult a submitted case**<br>Given the passenger session owns a case that Operations Central has started attending<br>When the passenger requests the case status<br>Then SafeBus returns In progress, its update time and any passenger-facing response, without disclosing internal coordination notes<br><br>**Scenario 2: Protect another passenger's case**<br>Given a passenger session requests a case owned by a different session<br>When SafeBus validates case access<br>Then SafeBus rejects access and discloses no case details<br><br>**Scenario 3: Distinguish a locally pending report**<br>Given an alert remains locally queued without server acknowledgement<br>When the passenger requests its status<br>Then the app reports Pending transmission and does not claim receipt or attention by Operations Central | | |

##### US14 — Report a Bus or Driver Information Mismatch

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US14** | Bus Passenger | Medium | EP02 — Passenger Verification and Safety |
| **Title** | Report a Bus or Driver Information Mismatch | | |
| **Description** | As a Bus Passenger, I want to report a difference between the bus details and what I observe so that the company can review a possible incorrect assignment. | | |
| **Acceptance Criteria** | **Scenario 1: Report a mismatch**<br>Given the passenger has a verified journey and provides a mismatch type and a description of 1 to 500 characters<br>When SafeBus receives the report<br>Then SafeBus creates a non-emergency case linked to the original bus, route, journey and report time for Operations Central review<br><br>**Scenario 2: Reject an incomplete mismatch report**<br>Given the report lacks a mismatch type or its description falls outside the permitted length<br>When SafeBus validates the report<br>Then SafeBus identifies the invalid field and creates no case; the verified journey remains available for a valid report | | |

##### US15 — Monitor Fleet Location and Occupancy

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US15** | Fleet Supervisor | High | EP04 — Fleet Monitoring and Setup |
| **Title** | Monitor Fleet Location and Occupancy | | |
| **Description** | As a Fleet Supervisor, I want to consult my company's active buses and their location and occupancy status so that I can locate a unit and assess the available information during an incident. | | |
| **Acceptance Criteria** | **Scenario 1: Consult active fleet information**<br>Given the authenticated supervisor has buses assigned to their company<br>When the supervisor requests active fleet information<br>Then SafeBus returns each bus, route, driver, shift state, latest location and timestamp, count and timestamp, occupancy state and open cases; the mobile client uses an external cartographic service to represent available positions<br><br>**Scenario 2: Identify outdated location**<br>Given a bus has no location sample newer than three minutes<br>When SafeBus evaluates the bus location<br>Then SafeBus marks the last position as Stale, preserves its timestamp, and does not present it as a current position; absent samples produce Unavailable<br><br>**Scenario 3: Handle an external map-service failure**<br>Given the external cartographic service is unavailable but SafeBus fleet data is accessible<br>When the supervisor requests fleet information<br>Then SafeBus keeps bus details, coordinates, timestamps and case access available and reports that the map is unavailable | | |

##### US18 — Receive, Attend and Close Driver and Passenger Cases

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US18** | Fleet Supervisor | High | EP03 — Incident Response Coordination |
| **Title** | Receive, Attend and Close Driver and Passenger Cases | | |
| **Description** | As a Fleet Supervisor, I want to receive, attend and close driver and passenger cases through one response process so that both user groups receive traceable assistance from Operations Central. | | |
| **Acceptance Criteria** | **Scenario 1: Receive and attend a panic case**<br>Given a driver or passenger panic alert reaches the server<br>When an authorized supervisor starts attending the received case<br>Then SafeBus preserves its critical priority and source, records the responsible supervisor and attention time, and changes the case from Received to In progress<br><br>**Scenario 2: Close a case with an outcome**<br>Given a case is In progress and its responsible supervisor provides an outcome and a response summary<br>When the supervisor requests closure<br>Then SafeBus records Closed, the outcome, closing time and a separate passenger-facing response where applicable, while preserving the incident history<br><br>**Scenario 3: Reject an invalid transition**<br>Given a case is Received or lacks a closure outcome<br>When the supervisor requests direct closure without starting attention or providing the outcome<br>Then SafeBus rejects the transition and preserves the current state<br><br>**Scenario 4: Review an ordinary report**<br>Given a driver incident or passenger mismatch report reaches the server<br>When an authorized supervisor requests received cases<br>Then SafeBus includes the report in the same case workflow with Normal priority and its original source; it does not automatically reclassify it as a panic alert | | |

##### US20 — Record External Emergency Contact Attempts

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US20** | Fleet Supervisor | Medium | EP03 — Incident Response Coordination |
| **Title** | Record External Emergency Contact Attempts | | |
| **Description** | As a Fleet Supervisor, I want to record attempts to contact an authority or emergency service so that the case history shows what coordination occurred and what response was obtained. | | |
| **Acceptance Criteria** | **Scenario 1: Record a completed contact**<br>Given the responsible supervisor has an In progress case and contacts an emergency service outside SafeBus<br>When the supervisor records the service name, contact time and response summary<br>Then SafeBus appends the contact record and author to the case without claiming an automated authority integration<br><br>**Scenario 2: Record an unanswered attempt**<br>Given the emergency service does not answer the supervisor's external contact attempt<br>When the supervisor records No response and the attempt time<br>Then SafeBus preserves the attempt and keeps the case In progress for further coordination | | |

##### US21 — Publish a Time-Limited Route Safety Notice

| Story ID | User | Priority | Epic |
    |---|---|---|---|
| **US21** | Fleet Supervisor | Medium | EP03 — Incident Response Coordination |
| **Title** | Publish a Time-Limited Route Safety Notice | | |
| **Description** | As a Fleet Supervisor, I want to publish a safety notice for a route until a defined expiry time so that assigned drivers receive relevant risk information during their service. | | |
| **Acceptance Criteria** | **Scenario 1: Publish a route notice**<br>Given the supervisor is authorized for a route and supplies a message of 1 to 500 characters and a future expiry time<br>When the supervisor publishes the notice<br>Then SafeBus records route, message, author, publication time and expiry and makes it available with the assigned route details<br><br>**Scenario 2: Exclude an expired notice**<br>Given a route notice has reached its expiry time<br>When a driver requests current route notices<br>Then SafeBus excludes the expired notice from active notices and preserves its historical record<br><br>**Scenario 3: Reject unauthorized publication**<br>Given the requested route belongs to another company<br>When the supervisor publishes a notice for that route<br>Then SafeBus rejects the request and preserves existing notices | | |

##### US22 — Maintain the Recorded Capacity of a Bus

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US22** | Fleet Supervisor | Medium | EP04 — Fleet Monitoring and Setup |
| **Title** | Maintain the Recorded Capacity of a Bus | | |
| **Description** | As a Fleet Supervisor, I want to record the passenger capacity of a bus using its company-held technical record so that SafeBus evaluates occupancy against the correct limit. | | |
| **Acceptance Criteria** | **Scenario 1: Record a capacity**<br>Given the supervisor is authorized for the bus and supplies a positive integer capacity and a technical-record reference<br>When SafeBus receives the capacity update<br>Then SafeBus stores the capacity, reference, author and update time and applies the capacity to subsequent occupancy queries without changing the passenger count<br><br>**Scenario 2: Reject an invalid capacity**<br>Given the submitted capacity is zero, negative or non-integer, or the reference is absent<br>When SafeBus validates the update<br>Then SafeBus rejects the update, identifies the reason and preserves the last valid capacity | | |

##### US23 — Export a Basic Incident Report

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US23** | Fleet Supervisor | Medium | EP04 — Fleet Monitoring and Setup |
| **Title** | Export a Basic Incident Report | | |
| **Description** | As a Fleet Supervisor, I want to export my company's incident records for a date range so that I can review the cases and time taken to start attention. | | |
| **Acceptance Criteria** | **Scenario 1: Export authorized cases**<br>Given the supervisor supplies a valid date range containing cases for their company<br>When the supervisor requests a CSV report<br>Then SafeBus exports case identifier, source, bus, route, activation time, receipt time, attention-start time, closing time, state and outcome, and calculates attention delay from receipt to attention start only where both times exist<br><br>**Scenario 2: Export an empty period**<br>Given the date range is valid but contains no cases for the supervisor's company<br>When the supervisor requests the report<br>Then SafeBus returns a CSV with the defined headers and zero case rows, including no records from another company | | |

##### US24 — Consult SafeBus Service Information

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US24** | Transport Company Representative | Medium | EP05 — Service Information and Contact |
| **Title** | Consult SafeBus Service Information | | |
| **Description** | As a Transport Company Representative, I want to consult the published SafeBus service information so that I understand its benefits and the scope proposed for my company. | | |
| **Acceptance Criteria** | **Scenario 1: Consult the service scope**<br>Given a representative requests the published static landing page<br>When the site serves its content<br>Then the content explains driver verification, driver and passenger panic alerts, fleet location, occupancy, connectivity limitations and the contact channel, distinguishing implemented capabilities from proposed capabilities<br><br>**Scenario 2: Consult service terms and languages**<br>Given the representative requests service terms or selects a supported language<br>When the site serves the corresponding static content<br>Then the site provides the current terms and consistent English or Latin American Spanish content, using English by default | | |

##### US25 — Submit a Company Contact Request

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US25** | Transport Company Representative | Medium | EP05 — Service Information and Contact |
| **Title** | Submit a Company Contact Request | | |
| **Description** | As a Transport Company Representative, I want to submit my company and contact details so that the SafeBus team can respond to my request for information or a demonstration. | | |
| **Acceptance Criteria** | **Scenario 1: Register a contact request**<br>Given the representative supplies a company name, contact name, syntactically valid email and contact consent<br>When SafeBus receives the contact request with a unique submission identifier<br>Then SafeBus stores the request and receipt time and returns a receipt reference; retries with the same identifier return the same reference<br><br>**Scenario 2: Reject invalid contact details**<br>Given a required name, a valid email or contact consent is missing<br>When SafeBus validates the request<br>Then SafeBus identifies the invalid field and stores no contact request | | |

##### US26 — Protect API Access by Role, Company and Passenger Session

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US26** | Developer | High | EP06 — User Access and Service Integration |
| **Title** | Protect API Access by Role, Company and Passenger Session | | |
| **Description** | As a Developer, I want to enforce authenticated and scoped access to SafeBus services so that clients access only the operations and information permitted to them. | | |
| **Acceptance Criteria** | **Scenario 1: Authorize a company request**<br>Given a client holds an unexpired signed access token with Fleet Supervisor role and a matching company scope<br>When the client requests an authorized fleet resource<br>Then the API validates the token and scope and returns HTTP 200 with only the authorized resource<br><br>**Scenario 2: Reject invalid authentication**<br>Given a protected request has a missing, expired or invalid token<br>When the API evaluates authentication<br>Then the API returns HTTP 401 and discloses no protected resource<br><br>**Scenario 3: Reject a forbidden operation**<br>Given an authenticated Driver requests a supervisor operation or a supervisor requests another company's resource<br>When the API evaluates permissions<br>Then the API returns HTTP 403 and leaves the protected resource unchanged<br><br>**Scenario 4: Restrict passenger sessions**<br>Given a valid passenger-session credential identifies one journey and its submitted cases<br>When the client requests a different session's case or a company administration operation<br>Then the API returns HTTP 403 and discloses no private case or company data; verified public unit information remains limited to US08 and US09 | | |

##### US27 — Provide a RESTful Location Service

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US27** | Developer | High | EP06 — User Access and Service Integration |
| **Title** | Provide a RESTful Location Service | | |
| **Description** | As a Developer, I want to provide location ingestion and retrieval through a RESTful API so that mobile clients exchange timestamped bus positions consistently. | | |
| **Acceptance Criteria** | **Scenario 1: Accept a location event**<br>Given an authorized driver client submits a unique event identifier, original assigned shift, capture time, accuracy and coordinates within valid latitude and longitude ranges<br>When POST /api/v1/location-events validates the payload<br>Then the API returns HTTP 201 and persists the event; it updates the current bus position only if the event is newer than the latest stored sample<br><br>**Scenario 2: Reject malformed coordinates**<br>Given a location payload is missing a required field or has latitude outside -90 to 90 or longitude outside -180 to 180<br>When POST /api/v1/location-events validates the payload<br>Then the API returns HTTP 422 with validation details and preserves the last valid bus position<br><br>**Scenario 3: Handle a repeated event**<br>Given the same authorized client resubmits a previously accepted identifier with the same payload<br>When POST /api/v1/location-events processes the retry<br>Then the API returns HTTP 200 with the original event reference and creates no duplicate; a conflicting payload for that identifier returns HTTP 409<br><br>**Scenario 4: Retrieve the current position**<br>Given an authorized supervisor requests a bus within their company<br>When GET /api/v1/vehicles/{id}/location processes the request<br>Then the API returns HTTP 200 with the latest position and timestamp and Current, Stale or Unavailable according to the shared freshness rule | | |

##### US28 — Deliver Live Case Updates and Recover Missed Notifications

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US28** | Developer | High | EP06 — User Access and Service Integration |
| **Title** | Deliver Live Case Updates and Recover Missed Notifications | | |
| **Description** | As a Developer, I want to deliver authenticated live case notifications and recover current case state after reconnection so that Operations Central does not depend on an uninterrupted connection to find received alerts. | | |
| **Acceptance Criteria** | **Scenario 1: Deliver a live notification**<br>Given an authorized supervisor client has an active WebSocket connection and the agreed demo network conditions hold<br>When the server persists a new panic case<br>Then the service delivers its identifier, source, bus, state and receipt time to the company subscription within five seconds after persistence<br><br>**Scenario 2: Recover after a disconnection**<br>Given a supervisor client loses its socket connection while cases are persisted on the server<br>When the client reconnects and authenticates<br>Then the client retrieves current open cases from the REST API, reconciles them by case identifier and resumes live notifications without creating duplicate cases<br><br>**Scenario 3: Reject a foreign subscription**<br>Given a supervisor token identifies one company<br>When the client requests a socket subscription for another company<br>Then the service rejects the subscription and delivers no foreign company events | | |

##### US29 — Spike Mobile Background Location and Battery Use

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US29** | Developer | High | EP07 — Technical Feasibility Spikes |
| **Title** | Spike Mobile Background Location and Battery Use | | |
| **Description** | As a Developer, I want to compare two background-location sampling profiles within a 12-hour investigation so that the team selects a measured configuration for US04 and identifies platform limitations. | | |
| **Acceptance Criteria** | **Scenario 1: Complete a bounded experiment**<br>Given the team has a physical Android device, profiles of 15 and 30 seconds, and a draft budget of at most 10 battery percentage points per hour per profile<br>When the developer runs one-hour tests per profile under comparable conditions and records a one-hour baseline plus a permission-revocation and background-restriction check within the 12-hour time box<br>Then the report records device and OS, raw battery levels, baseline, sample counts, location accuracy and restrictions, compares both profiles and recommends one or records that neither meets the draft budget; it does not claim a measured full-shift endurance result<br><br>**Scenario 2: Document a limitation or unfinished measurement**<br>Given a profile fails the budget, loses updates in the background, or the investigation reaches its time limit<br>When the developer closes the investigation<br>Then the report records the failure or missing evidence, cites the technical sources consulted, identifies what was learned beyond class content, and specifies the changes and follow-up validation required for US04 on native and cross-platform clients | | |

##### US30 — Spike Ordered Passenger-Count Event Ingestion

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US30** | Developer | High | EP07 — Technical Feasibility Spikes |
| **Title** | Spike Ordered Passenger-Count Event Ingestion | | |
| **Description** | As a Developer, I want to test passenger-count event ingestion through the planned REST contract within a 16-hour investigation so that the team knows whether the counting source can maintain a consistent count despite interruptions. | | |
| **Acceptance Criteria** | **Scenario 1: Run the ingestion proof of concept**<br>Given a prototype sensor adapter or an explicitly identified simulator emits device, bus, shift, sequence, event identifier and entry or exit events using the US33 REST contract<br>When the developer tests a known event sequence, a five-minute interruption and reconnection within the 16-hour time box<br>Then the report compares the final count against the known expected count, records receipt delay and event loss, identifies the actual source used and provides an implementation recommendation for US33<br><br>**Scenario 2: Test duplicate and missing events**<br>Given the source repeats an entry, delays an exit and omits a sequence number<br>When the developer runs the proof of concept<br>Then the report demonstrates or records failure of duplicate rejection, gap handling and recovery, lists the sources consulted and the implementation tasks; a simulator-only test explicitly leaves physical-sensor accuracy unvalidated | | |

##### US31 — Sign In and Sign Out of a Company Account

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US31** | Registered Driver or Fleet Supervisor | High | EP06 — User Access and Service Integration |
| **Title** | Sign In and Sign Out of a Company Account | | |
| **Description** | As a Registered Driver or Fleet Supervisor, I want to sign in and sign out of my company-provisioned account so that I can use the operations assigned to my role and end access on the device. | | |
| **Acceptance Criteria** | **Scenario 1: Sign in with valid credentials**<br>Given the company-provisioned account is active and the user accepts the current service terms<br>When the user submits valid credentials<br>Then SafeBus establishes an authenticated session with the stored role and company and permits only the corresponding operations<br><br>**Scenario 2: Reject an invalid sign-in**<br>Given the account is disabled or the supplied credentials are invalid<br>When the user attempts sign-in<br>Then SafeBus creates no session and returns a generic sign-in failure without revealing whether the account exists<br><br>**Scenario 3: Sign out of the device**<br>Given a company session exists on the mobile device<br>When the user signs out<br>Then the app removes its local access credentials, stops collecting new location samples and requires sign-in for protected operations; pending reports remain protected and require renewed authorized access to synchronize | | |

##### US32 — Assign a Driver and Bus to a Route Shift

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US32** | Fleet Supervisor | High | EP04 — Fleet Monitoring and Setup |
| **Title** | Assign a Driver and Bus to a Route Shift | | |
| **Description** | As a Fleet Supervisor, I want to assign an existing driver and bus to a route and shift period so that the driver can validate the correct service and the company knows who is responsible. | | |
| **Acceptance Criteria** | **Scenario 1: Create a shift assignment**<br>Given the company has an enabled driver, bus and route with no overlapping assignment and a valid start and end period<br>When the supervisor records the assignment<br>Then SafeBus stores driver, bus, route, planned period and author and makes the assignment available to that driver<br><br>**Scenario 2: Reject a conflicting or foreign assignment**<br>Given the driver or bus has an overlapping assignment, belongs to another company, or is disabled<br>When the supervisor submits the assignment<br>Then SafeBus rejects the request, identifies the conflict or access limitation and preserves existing assignments | | |

##### US33 — Provide a RESTful Passenger-Count Service

| Story ID | User | Priority | Epic |
|---|---|---|---|
| **US33** | Developer | High | EP06 — User Access and Service Integration |
| **Title** | Provide a RESTful Passenger-Count Service | | |
| **Description** | As a Developer, I want to process ordered entry and exit events from a registered counting source so that SafeBus provides a reliable passenger count without double counting retries. | | |
| **Acceptance Criteria** | **Scenario 1: Initialize and process an ordered count**<br>Given a registered source has an authenticated association with a bus and shift and a confirmed initial empty-bus count of zero<br>When POST /api/v1/occupancy-events receives the next sequential entry or exit event with an identifier and capture time<br>Then the API returns HTTP 201, applies the increment or decrement once and records the resulting count and sequence; counts above capacity remain valid and are classified as Over capacity<br><br>**Scenario 2: Reject an impossible or unregistered event**<br>Given the payload is malformed, the source is not registered, or the next exit would reduce the count below zero<br>When the occupancy API validates the request<br>Then the API returns HTTP 422 for malformed or impossible data or HTTP 403 for an unauthorized source, preserves the last valid count and marks a count inconsistency as Unavailable pending reconciliation<br><br>**Scenario 3: Handle repeated and out-of-order delivery**<br>Given the API has accepted sequence 10 and receives an identical retry of 10 or sequence 12 before 11<br>When the API evaluates the sequence<br>Then the identical retry returns HTTP 200 without changing the count; sequence 12 returns HTTP 409 identifying expected sequence 11 and marks the count Unavailable until the source replays the missing sequence and following events successfully<br><br>**Scenario 4: Maintain source freshness**<br>Given a registered source has a valid initialized count and sends a heartbeat at least once per minute even when no passenger boards or exits<br>When an authorized client requests occupancy<br>Then the API returns HTTP 200 with count, capacity, last count time, last heartbeat time and validity; it reports Stale when the heartbeat is older than two minutes and Unavailable when initialization or sequence consistency is missing | | |

#### Traceability of refinements

| Identificador anterior | Decisión | Dónde queda su valor |
|---|---|---|
| US11 | Integrada; ya no se planifica como historia independiente | US10 incorpora ubicación del bus y tratamiento de ubicación no disponible. Se retira el seguimiento continuo del GPS del pasajero. |
| US13 | Integrada | US09 consulta conteo, capacidad y clasificación en una sola historia. |
| US16 | Integrada | US15 distingue ubicación vigente, desactualizada y ausente. |
| US17 | Retirada como automatización de excepciones | US32 previene asignaciones incompatibles; US01 valida el turno y US06 permite reportar un desvío manualmente. La detección automática por corredores queda fuera de la primera versión. |
| US19 | Integrada | US18 atiende tanto alertas de conductor como de pasajero, conservando su origen. |
| US27 | Acotada | Conserva el contrato de ubicación; US33 especifica por separado el conteo de pasajeros. |
| US31 y US32 | Añadidas para cerrar dependencias del flujo | Acceso de cuentas y asignación básica conductor–bus–ruta. |

Los identificadores integrados o retirados no se reutilizan y no cuentan en las 28 historias activas. Mantener huecos evita cambiar las referencias del equipo. Se simplifican US20, US21, US23, US24 y US25 sin crear módulos adicionales. US29 y US30 conservan sus preguntas de investigación, con criterios medibles y límites explícitos.

### 2.4.2. Impact Mapping

El siguiente mapa textual relaciona necesidades, cambios esperados y funciones. Es una **propuesta de objetivos para la validación académica**, no evidencia de entrevistas ni resultados obtenidos. Debe trasladarse a UXPressia y completarse con su enlace y captura cuando el equipo lo elabore. Las referencias de conductor y supervisor corresponden a los perfiles existentes; el perfil de pasajero es provisional.

| Business Goal SMART propuesto | Actor / Persona | Impact esperado | Deliverable | User Stories (Como… quiero… para…) |
|---|---|---|---|---|
| BG01: antes de la demostración de la primera entrega funcional, validar correctamente los 5 casos de asignación válida y rechazar los 5 casos inválidos definidos por el equipo. | Conductor / José Mamani Quispe; supervisor / Luis Ramírez Nombera | Iniciar servicios con una responsabilidad identificada. | Acceso, asignación y validación QR. | US31: como usuario de empresa quiero acceder a mi cuenta para usar mi rol. US32: como supervisor quiero asignar un turno para identificar al responsable. US01: como conductor quiero validar mi QR para iniciar el turno asignado. |
| BG02: antes de la entrega final, completar el flujo de recepción, atención y cierre de 10 alertas de conductor y 10 de pasajero, sin casos duplicados por reintentos, bajo las condiciones de CR06. | Conductor / José; pasajero / perfil provisional; supervisor / Luis | Solicitar ayuda y registrar quién atendió cada reporte. | Dos botones de pánico y un proceso compartido de atención. | US05 y US10: como conductor o pasajero quiero pedir ayuda para que la central atienda el peligro. US18: como supervisor quiero atender los casos para coordinar ayuda. US12: como pasajero quiero consultar mi caso para conocer su atención. |
| BG03: antes de la entrega final, obtener el conteo esperado en los 10 recorridos de eventos de prueba acordados y señalar como no disponible todo caso con eventos faltantes sin reconciliar. | Pasajero / perfil provisional; supervisor / Luis | Decidir con datos identificados como actuales o limitados. | Consulta de aforo, capacidad y vigencia. | US09: como pasajero quiero conocer el aforo para decidir si hay espacio. US15: como supervisor quiero consultar ubicación y aforo para evaluar la unidad. US22: como supervisor quiero registrar capacidad para interpretar el conteo. |
| BG04: al cierre del Sprint 1 propuesto, permitir consultar el alcance y registrar correctamente las 5 solicitudes válidas de contacto de prueba, rechazando las 5 inválidas acordadas. | Representante de empresa / rol comercial del segmento empresa | Comprender la propuesta y expresar interés. | Landing estática y contacto. | US24: como representante quiero conocer SafeBus para evaluar sus beneficios. US25: como representante quiero dejar mis datos para recibir información. |

US02, US03, US04, US06, US07, US08, US14, US20, US21 y US23 completan los recorridos operativos de BG01–BG03. US26, US27, US28 y US33 son habilitadores técnicos. US29 y US30 reducen incertidumbre y deben vincular sus resultados a US04 y US33, respectivamente. Estas relaciones no sustituyen las pruebas con personas de los tres segmentos.

### 2.4.3. Product Backlog

El orden expresa valor para el negocio y no orden de programación. Las dependencias se resuelven mediante tareas e historias coordinadas dentro del sprint o en uno anterior. El acceso técnico no encabeza el backlog por sí mismo. La landing se incluye desde el Sprint 1, conforme al enunciado.

**Estimaciones iniciales, pendientes de revisión del equipo y feedback docente.** Los puntos representan esfuerzo relativo (1, 2, 3, 5 u 8), no horas. La distribución en tres sprints es tentativa y debe ajustarse a fechas y capacidad real antes de comprometer trabajo. La duración de los spikes se mide además con sus límites de 12 y 16 horas. Una historia puede pasar a otro sprint si sus dependencias no están listas.

> Herramienta indicada por el docente: pendiente de confirmar. URL pública y captura del Product Backlog: pendientes de publicación por el equipo; no se ha creado un tablero externo durante esta revisión.

| # Orden | User Story Id | Título | Story Points propuestos | Sprint propuesto | Dependencias / coordinación |
|---|---|---|---|---|---|
| 1 | US05 | Activate a Silent Driver Panic Alert | 5 | 2 | US01, US26, US18; US28 completa la actualización en vivo |
| 2 | US10 | Activate a Silent Passenger Panic Alert with Bus Location | 5 | 2 | US08, US26, US18; US28 completa la actualización en vivo |
| 3 | US18 | Receive, Attend and Close Driver and Passenger Cases | 5 | 2 | US26, US31; fuentes US05, US10, US06 y US14 |
| 4 | US01 | Validate an Assigned Shift with a Driver QR Credential | 3 | 1 | US31, US32, US26 |
| 5 | US08 | Verify a Bus and Start a Passenger Journey | 3 | 1 | US26, US01 |
| 6 | US09 | Consult Passenger Count and Bus Capacity | 3 | 3 | US08, US22, US33 |
| 7 | US15 | Monitor Fleet Location and Occupancy | 5 | 2 | US04, US27, US26; aforo de US33 y casos de US18 |
| 8 | US04 | Share Bus Location During an Active Shift | 5 | 2 | US01, US27; US29 informa la configuración |
| 9 | US24 | Consult SafeBus Service Information | 2 | 1 | — |
| 10 | US25 | Submit a Company Contact Request | 2 | 1 | US24 |
| 11 | US32 | Assign a Driver and Bus to a Route Shift | 3 | 1 | US26, US31 |
| 12 | US31 | Sign In and Sign Out of a Company Account | 3 | 1 | US26 |
| 13 | US26 | Protect API Access by Role, Company and Passenger Session | 5 | 1 | — |
| 14 | US02 | Consult Assigned Route and Shift Details | 2 | 1 | US31, US32; avisos de US21 cuando estén disponibles |
| 15 | US29 | Spike Mobile Background Location and Battery Use | 3 | 1 | — |
| 16 | US30 | Spike Ordered Passenger-Count Event Ingestion | 5 | 1 | — |
| 17 | US33 | Provide a RESTful Passenger-Count Service | 5 | 3 | US26, US30; capacidad de US22 |
| 18 | US27 | Provide a RESTful Location Service | 3 | 2 | US26 |
| 19 | US28 | Deliver Live Case Updates and Recover Missed Notifications | 5 | 2 | US26, US18 |
| 20 | US22 | Maintain the Recorded Capacity of a Bus | 2 | 3 | US26, US31 |
| 21 | US03 | Check Monitoring Availability Before Service | 3 | 3 | US04, US33 |
| 22 | US07 | Close a Driver Shift | 3 | 3 | US01, US04, US18 |
| 23 | US12 | Consult the Status of My Safety Cases | 3 | 3 | US10, US18, US26 |
| 24 | US06 | Report a Non-Emergency Safety Incident | 3 | 3 | US01, US18 |
| 25 | US14 | Report a Bus or Driver Information Mismatch | 3 | 3 | US08, US18 |
| 26 | US20 | Record External Emergency Contact Attempts | 2 | 3 | US18 |
| 27 | US21 | Publish a Time-Limited Route Safety Notice | 3 | 3 | US02, US26 |
| 28 | US23 | Export a Basic Incident Report | 3 | 3 | US18, US26 |

| Sprint propuesto | Objetivo | Puntos iniciales |
|---|---|---|
| 1 | Preparar acceso, asignación y verificación QR de conductor y pasajero, publicar la landing y resolver las investigaciones. | 31 |
| 2 | Completar las alertas de ambos actores y su atención, integrar ubicación, monitoreo y notificaciones en vivo. | 33 |
| 3 | Integrar conteo, consulta de casos, cierre de turno, reportes, avisos y exportación básica. | 33 |

Los totales similares ayudan a revisar la distribución, pero no acreditan capacidad ni una velocidad de trabajo conocida. El equipo debe ajustar el plan antes de comprometer cada sprint, manteniendo la landing desde el primero. El Sprint 2 prueba alertas de ambos actores con ubicación; el aforo puede permanecer Unavailable hasta completar el conteo en Sprint 3, tal como permiten sus criterios. La cobertura completa se verifica con ambos datos al final. US18 implementa el servicio de casos y US28 agrega notificación en vivo y recuperación de estado dentro del mismo Sprint 2.

#### Requirements coverage and pending evidence

| Requisito / punto del proyecto | Cobertura prevista | Evidencia pendiente |
|---|---|---|
| Validación del conductor y asignación | US01, US02, US31 y US32 | Pruebas de asignación válida e inválida. |
| Pánico para conductor **y pasajero** | US05, US08, US10, US12 y US18 | Recorridos de ambos segmentos, recepción, atención, cierre y prueba sin conexión. |
| Conteo automatizado y capacidad | US09, US22, US30 y US33 | Fuente real o simulada identificada, secuencias de prueba y decisión docente sobre hardware. |
| Ubicación y servicio externo | US04, US15, US27 y US29 | Proveedor cartográfico seleccionado, integración y prueba de caída. |
| Almacenamiento local móvil | US04, US05, US08, US10 y CR04 | Reinicio de app sin red y sincronización sin duplicados. |
| Recurso interno del dispositivo | Cámara para QR en US01/US08; GPS en US04 | Demostración con permisos y denegación de permisos en dispositivo físico. |
| Servicio RESTful propio y documentación | US26, US27, US33, API de casos/contacto y CR05 | Contratos OpenAPI y pruebas de aceptación implementadas. |
| Aprendizaje autónomo | US29 → US04; US30 → US33 | Fuentes, comparación, decisiones, implementación y evidencia de aprendizaje diferente al contenido de clase. |
| Landing | US24 y US25 | Sitio estático, términos, contacto y validación de contenido. |
| Idiomas, accesibilidad y términos | CR01–CR03 | Pruebas en_US/es_419, accesibilidad y aceptación de términos. |
| Nativa y cross-platform | BR01; mismas historias por rol | Implementaciones y demostración en dispositivo físico conforme al enunciado. |
| Sustento del alcance | Capítulo I y segmentos de 2.3 | Entrevistas reales de los tres segmentos; el pasajero tiene perfil provisional. |
| Planificación y diseño | Impact Mapping y backlog textual de esta sección | Feedback docente, estimación por el equipo, tablero público, mapas, diseños y diagramas de las secciones restantes. |

Esta cobertura corresponde a **requisitos documentados**. No declara la aplicación construida, las pruebas aprobadas ni el informe académico completo.

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
