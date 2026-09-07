[← Volver al índice](00-chapter0.md#contenido)

# Capítulo I: Presentación

## 1.1. Startup Profile

### 1.1.1. Descripción de la Startup

DreamTeam es una startup peruana de tecnología enfocada en la protección del ecosistema de movilidad urbana. Esta iniciativa surge debido a la necesidad de transformar la experiencia diaria de millones de pasajeros en Lima y diversas regiones del Perú, donde la carencia de filtros en la identificación de operadores, la inexistencia de canales rápidos de auxilio ante siniestros y el desconocimiento del aforo real multiplican la vulnerabilidad frente a asaltos, siniestros viales y situaciones críticas.

Nuestra solución se materializa en SafeBus, el cual es una plataforma digital estructurada en tres ejes operativos conectados en tiempo real:

* **Validación de operadores** mediante código QR al inicio de cada servicio.
* **Botón de pánico digital para conductores y pasajeros**, que envía solicitudes silenciosas de ayuda a la central de operaciones e informa cuando quedan pendientes por falta de conexión.
* **Conteo automatizado de pasajeros** a bordo del vehículo, indicando su capacidad, la cantidad registrada y si el dato está vigente o no disponible.

La primera versión móvil atiende a conductores, pasajeros y supervisores de empresas en Lima y Callao. La ubicación proviene del teléfono del conductor durante el turno; el pasajero vincula su viaje escaneando el QR del bus. La empresa recibe y atiende los casos mediante una experiencia móvil por rol. El sitio web público explica el servicio y recibe solicitudes de contacto. La integración física de conteo debe contrastarse con la investigación técnica; cualquier simulador utilizado se identificará como tal.

La inclusión del botón de pánico para pasajeros responde al feedback docente comunicado por el equipo. El alcance y sus hipótesis se desarrollan en el capítulo II; no se presupone atención humana permanente ni integración automática con autoridades.

**Mision**: Fortalecer la seguridad de los usuarios del transporte público mediante soluciones digitales innovadoras que permitan verificar la identidad de conductores, gestionar emergencia en tiempo real y cuantificar el riesgo humano a bordo de cada vehículo.

**Visión**: Convertirnos en la plataforma lider de seguridad y trazabilidad en el transporte público de Latinoamérica, reconocida por reducir incidentes viales, empoderar a la autoridades con información oportuna y devolver la confianza ciudadana en el sistema de movilidad urbana.

### 1.1.2. Perfiles de integrantes del equipo

<table>
  <tr>
    <td rowspan="4" align="center" width="200">
      <img src="Foto Estudiante" alt="Foto de Estudiante" width="180"/>
    </td>
    <td><b>Nombre:</b> Nombre Estudiante</td>
  </tr>
  <tr>
    <td><b>Código:</b> Codigo estudiante</td>
  </tr>
  <tr>
    <td>
      <b>Descripción:</b><br/>
     
    </td>
  </tr>
</table>

<table>
  <tr>
    <td rowspan="4" align="center" width="200">
      <img src="Foto ESTUDIANTE" alt="Foto de Estudiante" width="180"/>
    </td>
    <td><b>Nombre:</b> Nombre Estudiante</td>
  </tr>
  <tr>
    <td><b>Código:</b> Codigo Estudiante</td>
  </tr>
  <tr>
    <td>
      <b>Descripción:</b><br/>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td rowspan="4" align="center" width="200">
      <img src="Foto Estudiante" alt="Foto de Estudiante" width="180"/>
    </td>
    <td><b>Nombre:</b> Nombre </td>
  </tr>
  <tr>
    <td><b>Código:</b> Codigo Estudiante </td>
  </tr>
  <tr>
    <td>
      <b>Descripción:</b><br/>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td rowspan="4" align="center" width="200">
      <img src="Foto Estudiante" alt="Foto de Mathias Acuache" width="180"/>
    </td>
    <td><b>Nombre:</b> Mathias Joaquin Acuache Lucas</td>
  </tr>
  <tr>
    <td><b>Código:</b> u202314898</td>
  </tr>
  <tr>
    <td>
      <b>Descripción:</b><br/>
      Soy Mathias Joaquin Acuache Lucas, me encuentro en el septimo ciclo de la carrera de Ingeniería de Software. Tengo experiencia en C++, SQL y MongoDB,tambien poder crear un Frontend y Backend basico, en vue.js, java,etc.Además de utilizar GitHub de manera correcta. Asimismo, tengo conocimiento en Domain Driven Design y algunos patrones de software los cuales he aplicado en diversos proyectos.Asimismo me considero una persona que le gusta aprender nuevas cosas, aportar las ideas que tenga en mente y apartir de ello presentar buenos trabajos.
    </td>
  </tr>
</table>

<table>
  <tr>
    <td rowspan="4" align="center" width="200">
      <img src="Foto Estudiante" alt="Foto de Estudiante" width="180"/>
    </td>
    <td><b>Nombre:</b> Nombre </td>
  </tr>
  <tr>
    <td><b>Código:</b> Codigo Estudiante </td>
  </tr>
  <tr>
    <td>
      <b>Descripción:</b><br/>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td rowspan="4" align="center" width="200">
      <img src="Foto Estudiante" alt="Foto de Estudiante" width="180"/>
    </td>
    <td><b>Nombre:</b> Nombre </td>
  </tr>
  <tr>
    <td><b>Código:</b> Codigo Estudiante </td>
  </tr>
  <tr>
    <td>
      <b>Descripción:</b><br/>
    </td>
  </tr>
</table>

## 1.2. Solution Profile

### 1.2.1. Antecedentes y problemática

Para comprender a fondo los requerimientos de nuestros usuarios, empleamos la técnica 5W's & 2H's, un marco metodológico que aborda siete interrogantes esenciales para dimensionar un desafío de manera integral.

**What (Qué) — ¿Cuál es el problema?**
La vulnerabilidad y los riesgos latentes en el sistema de transporte masivo peruano. Los usuarios carecen de medios para cerciorarse de si el operador al volante cuenta con la habilitación oficial para gestionar dicha unidad. Adicionalmente, prevalece la carencia de canales de solicitud de ayuda para conductores y pasajeros ante situaciones críticas y la ausencia de métricas sobre el aforo exacto de pasajeros.

**When (Cuándo) — ¿Cuándo sucede el problema?**
La problemática se evidencia de forma constante en cada trayecto operativo: al momento de subir al vehículo, a lo largo del recorrido y durante las labores de asistencia por parte de los organismos competentes. Los hechos delictivos y siniestros viales pueden presentarse en cualquier intervalo horario, acentuándose de manera crítica durante las horas de la noche.
*¿Cuándo utilizará el cliente el producto?* El conductor valida su turno antes de iniciar el servicio; el pasajero verifica la unidad al abordar y solicita ayuda si ocurre un peligro; el supervisor consulta la flota y atiende los casos durante su horario de operación.

**Where (Dónde) — ¿Dónde está el cliente cuando usa el producto?**
El conductor utiliza el producto en la unidad, el pasajero al abordar y durante el viaje, y el supervisor desde el lugar en que realiza el monitoreo de su empresa. El conflicto se gestó inicialmente en regiones del norte peruano (como Trujillo, Chiclayo y Piura) hace aproximadamente dos décadas, expandiéndose posteriormente hacia los principales distritos y ejes viales de Lima Metropolitana.

**Who (Quién) — ¿A quiénes les sucede el problema?**
A los usuarios del servicio público —con mayor énfasis en estudiantes, adultos mayores y mujeres—, a los operadores expuestos a asaltos y presiones extorsivas, a las empresas de transporte que carecen de supervisión telemática de su flota en vivo, y a las entidades encargadas del resguardo ciudadano.

**Why (Por qué) — ¿Cuál es la causa del problema?**
Deriva de la carencia crónica de herramientas digitales de autenticación y rastreo dentro de las unidades de transporte. Las empresas prestatarias del servicio no disponen de entornos virtuales para auditar en vivo la identidad de cada chofer, ni cuentan con enlaces telemáticos directos hacia una central de monitoreo, sumado a la ausencia de sistemas para contabilizar el flujo de pasajeros.

**How (Cómo) — ¿Cómo afecta este problema?**
La convergencia entre la informalidad operativa, el vacío en la fiscalización tecnológica y la falta de protocolos digitales de protección configura un escenario donde individuos sin registro formal controlan unidades móviles. Sus consecuencias se traducen en episodios de violencia, incremento en las tarifas, zozobra ciudadana, expansión de la oferta vehicular no regulada y severas secuelas anímicas en los usuarios.

**How Much (Cuánto) — ¿Qué datos respaldan la problemática?**
Conforme a estadísticas del Ministerio de Transportes y Comunicaciones (MTC), en el Perú se contabilizan anualmente más de 90,000 siniestros viales, de los cuales cerca del 30% involucra a vehículos de transporte público. Asimismo, la Defensoría del Pueblo documenta que el 68% de las mujeres ha vivido episodios de hostigamiento o inseguridad al trasladarse. Por su parte, asociaciones gremiales señalan que aproximadamente el 40% de las compañías de transporte en Lima y Callao son víctimas de extorsión y pagos de cupos. Complementariamente, estudios de la Asociación Automotriz del Perú (AAP) indican que el parque automotor informal y la antigüedad de la flota incrementan de forma crítica la tasa de letalidad en las pistas, agravando la vulnerabilidad diaria de millones de peruanos.

### 1.2.2. Lean UX Process

#### 1.2.2.1. Lean UX Problem Statements

El estado actual del sector de transporte público urbano en el Perú se ha enfocado principalmente en operaciones manuales, informalidad y una total ausencia de trazabilidad digital para pasajeros, conductores y empresas de transporte.

Lo que los productos o servicios existentes no logran resolver es la brecha crítica en el mercado relacionada con la seguridad en tiempo real, la verificación de identidad de los operadores y la respuesta inmediata ante emergencias durante el trayecto.

Nuestro producto/servicio (SafeBus) abordará esta brecha mediante la validación de conductores por código QR, botones de pánico digitales para conductor y pasajero que envían solicitudes de ayuda a la central de control y el conteo automatizado de pasajeros.

Nuestro foco inicial serán los pasajeros del transporte público, los conductores expuestos a riesgos y las empresas de transporte que operan inicialmente en Lima y Callao.

Sabremos que tenemos éxito cuando veamos una alta tasa de adopción de la validación QR por parte de los conductores, una reducción significativa en los tiempos de respuesta ante emergencias por parte de las empresas y un aumento en la confianza de los pasajeros durante sus viajes.

#### 1.2.2.2. Lean UX Assumptions

**Business Assumptions**
* Creemos que las empresas de transporte público necesitan herramientas digitales que les permitan supervisar sus unidades en tiempo real y responder rápidamente ante incidentes de seguridad.
* Suponemos que las empresas estarían dispuestas a adoptar una plataforma tecnológica si esta contribuye a mejorar el control operativo y reducir situaciones de riesgo dentro de las unidades.
* Consideramos que la implementación de SafeBus puede optimizar la comunicación de conductores y pasajeros con los supervisores durante situaciones de emergencia.
* Creemos que centralizar la información de recorridos, alertas e incidencias facilitará la toma de decisiones y mejorará la capacidad de monitoreo de las operaciones de transporte.

**Business Outcome Assumptions**
* Reducir el tiempo hasta el inicio de atención de incidentes reportados por conductores y pasajeros.
* Mejorar la capacidad de supervisión operativa de las empresas.
* Incrementar la percepción de confiabilidad del servicio y la adopción de la plataforma por parte de los operadores.

**User Assumptions**
* Los conductores de transporte público urbano que operan en Lima y otras ciudades del Perú necesitan herramientas accesibles y de uso rápido durante sus jornadas.
* Las empresas de transporte y sus áreas de operaciones requieren visibilidad en tiempo real sobre sus unidades y flotas en ruta.
* Los pasajeros del transporte público urbano (incluyendo estudiantes, adultos mayores y trabajadores) buscan entornos de movilidad más seguros y confiables.

**User Outcome and Benefit Assumptions**
* Los conductores podrán reportar incidentes de manera rápida y sencilla mediante alertas desde la aplicación móvil, sintiéndose más respaldados ante asaltos o emergencias.
* Los supervisores tendrán acceso inmediato a información de rutas, incidencias y estado de unidades, facilitando la toma de decisiones oportunas.
* Los pasajeros podrán verificar la unidad, pedir ayuda de forma silenciosa y consultar el estado de su caso, con el objetivo de mejorar su confianza durante el viaje. Este beneficio debe validarse mediante entrevistas y pruebas.

**Feature Assumptions**
* Una aplicación móvil con botón de pánico digital silencioso para conductores y pasajeros, almacenamiento local de alertas sin conexión y consulta de su recepción y atención por la central.
* Un sistema de validación de conductores mediante credencial QR y asignación de turno, más un QR de la unidad para que el pasajero consulte el servicio y vincule su viaje con el bus.
* Una experiencia móvil para supervisores que centralice ubicación, aforo, estado de turnos y atención de casos de conductores y pasajeros.
* Una fuente de eventos de entrada y salida para calcular el aforo y compararlo con la capacidad del bus, señalando fallas o datos antiguos. La precisión del hardware debe comprobarse; no se presume a partir de un simulador.

#### 1.2.2.3. Lean UX Hypothesis Statements

Las siguientes hipótesis corresponden a las cuatro Feature Assumptions. Son propuestas para comprobar, no resultados de validación.

| Hipótesis | Enunciado | Historias relacionadas |
|---|---|---|
| H01 — Solicitud y atención de ayuda | Creemos que conductores y pasajeros podrán pedir ayuda y conocer su recepción si disponen de un botón de pánico silencioso con estados de envío y un proceso de atención por la empresa. Lo comprobaremos con recorridos conectados y sin conexión, registrando recepción e inicio de atención. | US05, US10, US12, US18, US28 |
| H02 — Identificación del servicio | Creemos que conductores, pasajeros y empresas tendrán una referencia clara del responsable de cada bus si la validación QR se vincula con una asignación de turno. Lo comprobaremos con asignaciones válidas e inválidas y consulta del QR por pasajeros. | US01, US08, US31, US32 |
| H03 — Supervisión operativa | Creemos que los supervisores podrán evaluar y coordinar incidentes con información más clara si consultan ubicación, aforo y casos de su flota con sus horas de actualización. Lo comprobaremos con escenarios de datos actuales, antiguos y ausentes. | US04, US15, US18, US20, US23, US27 |
| H04 — Ocupación del bus | Creemos que pasajeros y supervisores podrán interpretar mejor el aforo si reciben el conteo, capacidad y estado de validez. Lo comprobaremos con secuencias conocidas de entradas y salidas, sobrecapacidad y eventos faltantes. | US09, US22, US30, US33 |

#### 1.2.2.4. Lean UX Canvas

La siguiente versión textual es la referencia actual del canvas. Resume hipótesis por validar y mantiene el alcance de H01–H04 y del capítulo II.

| Bloque | Propuesta revisada |
|---|---|
| Business Problem | Conductores y pasajeros carecen de un canal claro de ayuda y las empresas tienen información limitada sobre responsable, ubicación, aforo y atención de incidentes. |
| Users | Conductores, pasajeros y supervisores de empresas de transporte en Lima y Callao. La empresa adopta el servicio. |
| Business Outcomes | Identificar al responsable de cada turno, registrar solicitudes de ayuda y su atención, y disponer de datos operativos con vigencia conocida. Las metas de prueba se especifican en BG01–BG04. |
| User Outcomes & Benefits | Conductor: pedir ayuda discretamente. Pasajero: verificar la unidad, conocer el aforo, pedir ayuda y consultar su caso. Supervisor: ubicar la unidad y registrar la atención. |
| Solutions | Aplicaciones móviles por rol, QR del conductor y de la unidad, dos botones de pánico digitales, almacenamiento local de eventos, consulta de ubicación y aforo, proceso compartido de casos y landing de contacto. |
| Hypotheses | H01: ayuda de ambos actores. H02: identificación del servicio. H03: supervisión con datos vigentes. H04: interpretación del aforo. |
| Most important learning | Comprobar si los tres segmentos comprenden y pueden completar el flujo, si la empresa dispone de responsables para atenderlo y si ubicación y conteo son viables. |
| Smallest experiment | Prototipo de verificación, alerta de ambos actores y atención; pruebas sin conexión y entrevistas de los tres segmentos. US29 y US30 resuelven dudas técnicas y deben alimentar funciones implementadas. |

[Canvas gráfico anterior, conservado como antecedente](../docs/lean-ux-canvas/lean-canvas.png). Su exportación visual debe actualizarse a partir de esta versión; el rastreo del trayecto completo por pasajeros que figura en la imagen anterior no forma parte del alcance actual.


---

## 1.3. Segmentos objetivo

| Segmento objetivo | Características demográficas | Información estadística de sustento |
| :--- | :--- | :--- |
| **Operadores (conductores) de transporte público** | • **Volumen de unidades:** Uno o dos vehículos bajo su responsabilidad.<br>• **Rango etario:** Población adulta desde los 24 años en adelante.<br>• **Rol:** Choferes con unidades adscritas formalmente a una empresa y ruta específica.<br>• **Zona de operación:** Lima Metropolitana y la Provincia Constitucional del Callao.<br>• **Motivación:** Velar por su integridad física y la de los usuarios transportados. | Conforme a lo reportado por Panamericana.pe (2025), los operadores se ven obligados a abonar contribuciones diarias y semanales para laborar; ante cualquier negativa, se exponen a ataques armados letales. |
| **Compañías o consorcios de transporte masivo** | • **Volumen de unidades:** Parques vehiculares superiores a dos unidades a nombre de la empresa.<br>• **Rango etario:** Adultos mayores de 28 años.<br>• **Rol:** Apoderados o directivos de consorcios con flotas de cústers y ómnibuses.<br>• **Zona de operación:** Lima Metropolitana y Callao.<br>• **Motivación:** Asegurar la protección de la tripulación y de los pasajeros. | Según registros de larepublica.pe (2024), se han contabilizado más de 14,000 querellas por extorsión a nivel nacional, sobresaliendo Lima y La Libertad como las jurisdicciones con mayor índice de afectación. |
| **Pasajeros de transporte público** | • **Rol:** Personas que viajan en buses de empresas asociadas a SafeBus.<br>• **Contexto:** Lima Metropolitana y Callao; uso de un teléfono compatible durante el abordaje y el viaje.<br>• **Necesidades propuestas:** Identificar unidad y conductor, consultar aforo, activar una alerta silenciosa y conocer su atención.<br>• **Acceso:** Sesión de viaje mediante QR, sin registro con contraseña. | Segmento incorporado por la necesidad funcional indicada por el docente. Caracterización demográfica, acceso a datos móviles, barreras de uso y sustento estadístico específico pendientes de investigación; no se inventan porcentajes ni entrevistas. |

La empresa es el cliente que adopta el servicio; conductor y pasajero son usuarios directos. Los tres segmentos deben participar en la investigación y validación. Los textos y gráficos anteriores requieren contrastarse con este alcance; el catálogo de referencia es el de la sección 2.4 del capítulo II.
