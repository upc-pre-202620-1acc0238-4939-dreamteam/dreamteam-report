# Informe de Trabajo Final

## Carátula

<div align="center">

![Universidad Peruana de Ciencias Aplicadas](https://github.com/user-attachments/assets/246a4dfb-6dd5-4909-a472-6cdce8319986)

# Universidad Peruana de Ciencias Aplicadas

## Facultad de Ingeniería

## Programa Académico de Ingeniería de Software

**Código del curso:** 1ACC0238

**Curso:** Aplicaciones para Dispositivos Móviles

**NRC:** 4939

**Docente del curso:** David Gerardo Quevedo Velasco

---

# Informe de Avance 1

**Nombre del equipo:** Dreamteam  

**Nombre del proyecto:** SafeBus

---

## Integrantes

* u202314898 - Acuache Lucas, Mathias Joaquin
* u202320699 - Arechaga Saavedra, Mathias Augusto
* u202321020 - Delgado Arriola, Leonardo Sebastian
* u202410344 - Espinoza Orrego, Valentino Andre
* u202414928 - Fernández Linares, Alvaro Sebastian

---

**Periodo:** 2026-02  

*Septiembre, 2026*

</div>

---

## Registro de Versiones del Informe

| Versión | Fecha | Autor | Descripción de modificación |
|---------|-------|-------|------------------------------|
| 0.1.0   |  9/01/2026| DreamTeam| Versión inicial del informe |
| 1.0.0   | 9/21/2026| DreamTeam | Primer avance del informe |

---

## Project Report Collaboration Insights

> URL del repositorio: `https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/dreamteam-report`

### AV1

### DreamTeam - Report Repository

  <img src="../docs/insights/team-insights.png" alt="Foto de Estudiante"/>

---

## Contenido

- [Student Outcome](#student-outcome)
- [Objetivos SMART](#objetivos-smart)
- [Capítulo I — Presentación](01-chapter1.md)
  - [1.1. Startup Profile](01-chapter1.md#11-startup-profile)
  - [1.2. Solution Profile](01-chapter1.md#12-solution-profile)
  - [1.3. Segmentos objetivo](01-chapter1.md#13-segmentos-objetivo)
- [Capítulo II — Requirements Development and Software Solution Design](02-chapter2.md)
- [Capítulo III — Solution UI/UX Design](03-chapter3.md)
- [Capítulo IV — Product Implementation & Validation](04-chapter4.md)
- [Conclusiones](05-chapter5.md#conclusiones-y-recomendaciones)
- [Bibliografía](05-chapter5.md#bibliografía)
- [Anexos](05-chapter5.md#anexos)

---

## Student Outcome

El curso contribuye al cumplimiento del Student Outcome ABET:

**ABET - EAC - Student Outcome 7**
Criterio: La capacidad de adquirir y aplicar nuevos conocimientos según sea necesario,
utilizando estrategias de aprendizaje apropiadas.

En el siguiente cuadro se describe las acciones realizadas y enunciados de conclusiones
por parte del grupo, que permiten sustentar el haber alcanzado el logro del ABET – EAC -
Student Outcome 7.

| Criterio específico | Acciones realizadas | Conclusiones |
|----------------------|----------------------|----------------|
| Actualiza conceptos y conocimientos necesarios para su desarrollo profesional y en especial para su proyecto en soluciones de software. | **Acuache Lucas, Mathias Joaquin**<br>AV1: Actualicé y apliqué conceptos avanzados del marco Lean UX y la técnica 5W's & 2H's para definir rigurosamente la propuesta de valor y las hipótesis de SafeBus en el Capítulo 1. Asimismo, adquirí y apliqué conocimientos de Domain-Driven Design (DDD) táctico para modelar los diagramas de clases del dominio, diagramas de componentes y esquemas de bases de datos de los Bounded Contexts, optimizando el diseño técnico de la solución de software.<br><br>TB1: Actualicé y apliqué conceptos de diseño de interacción y experiencia de usuario móvil, profundizando en principios de diseño centrado en el usuario, jerarquía visual y directrices de Material Design 3. Diseñé en colaboración con mi equipo los wireframes, wireflows, mockups y flujos de usuario para los módulos de registro seguro de pasajeros y escaneo de códigos QR, asegurando una navegación intuitiva y accesible. Asimismo, sinteticé los hallazgos técnicos formulando las conclusiones y recomendaciones del proyecto en el Capítulo 5, alineando las decisiones de diseño e ingeniería con los objetivos estratégicos de SafeBus.<br><br>**Arechaga Saavedra, Mathias Augusto**<br>AV1: Actualicé conocimientos en metodologías de análisis estratégico de mercado y competitividad (Competitive Analysis Landscape y matriz FODA/SWOT) para estructurar el posicionamiento de SafeBus en el sector transporte. Además, investigué y apliqué patrones de arquitectura limpia y Domain-Driven Design (DDD) a nivel táctico, diseñando la división por capas (Dominio, Interfaces, Aplicación e Infraestructura) para sustentar una solución de software escalable y desacoplada.<br><br>TB1: Actualicé mis conocimientos en diseño de producto y arquitectura de la información, definiendo rigurosamente el sistema de diseño (paleta cromática accesible, escala tipográfica, espaciado de 8 puntos y tono comunicativo), junto con los esquemas de organización, sistemas de etiquetado, metaetiquetas SEO y sistemas de navegación y búsqueda de la plataforma. Asimismo, lideré y documenté de forma integral el ciclo de vida del Sprint 1, aplicando el marco de trabajo ágil Scrum, formalizando la matriz LACX, gestionando el Product Backlog, integrando los Web Services iniciales y estructurando la suite de pruebas unitarias y de integración.<br><br>**Delgado Arriola, Leonardo Sebastian**<br>AV1: Actualicé conceptos sobre metodologías ágiles y levantamiento de requerimientos mediante entrevistas al Segmento 2. Apliqué la técnica de Impact Mapping y la especificación de User Stories estructuradas con criterios de aceptación en formato Gherkin (Given-When-Then), además de priorizar y estimar el Product Backlog en Story Points para garantizar que los requerimientos de la solución de software reflejen con precisión las necesidades del negocio.<br><br>TB1: Actualicé y apliqué conceptos avanzados de desarrollo web y móvil nativo. Diseñé los wireframes y mockups de la Landing Page y desarrollé completamente su implementación frontal y backend con Node.js y SQLite. En la aplicación móvil (`safebus-mobile`), lideré el desarrollo del núcleo (*core*), implementando en Kotlin y Jetpack Compose la interfaz reactiva, el botón de pánico de activación inmediata y silenciosa del conductor, el almacenamiento local en SQLite para contingencia sin conexión y el servicio en segundo plano con `FusedLocationProviderClient` para telemetría GPS continua (US03, US04). Asimismo, brindé soporte técnico en la configuración y arquitectura de los Web Services del backend hasta la sección 4.1.4.<br><br>**Espinoza Orrego, Valentino Andre**<br>AV1: Ejecuté las entrevistas del Segmento 1, actualizando nuestro conocimiento del mercado mediante el levantamiento de requerimientos cualitativos reales. Lideré la creación de las User Personas y la redacción de la introducción del proyecto, aplicando conceptos modernos de desarrollo para estructurar sólidamente el documento y alinear la solución de software con las necesidades reales del usuario.<br><br>TB1: Actualicé conceptos clave de diseño de interacción móvil colaborando en la elaboración de wireflows, mockups y flujos de usuario de la aplicación. Lideré y ejecuté de manera integral el desarrollo y la documentación del Sprint 2 (sección 4.2.2): planifiqué la sesión del Sprint Planning 2, coordiné la matriz LACX, implementé los controladores REST de telemetría e ingesta de coordenadas GPS (`/api/v1/location-events`, `/api/v1/vehicle-locations`), desarrollé los servicios de emergencias críticas del conductor y agregación por umbral, diseñé la suite de pruebas BDD con Cucumber y Gherkin, documenté los contratos con OpenAPI/Swagger UI y orquesté el despliegue del contenedor Docker en Azure App Service con MySQL en la nube y analíticas de GitFlow.<br><br>**Fernández Linares, Alvaro Sebastian**<br>AV1: Adquirí y actualicé conocimientos avanzados en exploración de dominio y diseño estratégico con Domain-Driven Design (DDD), aplicando herramientas como Big Picture EventStorming, mapeo de contextos (Context Mapping) y Bounded Context Canvases. Asimismo, profundicé en el modelo C4 para diseñar la arquitectura de software en los niveles de Contexto, Contenedores y Componentes, alineando la solución tecnológica con el lenguaje ubicuo y los procesos críticos del negocio.<br><br>TB1: Actualicé y apliqué conocimientos avanzados de ingeniería de software en la configuración y arquitectura integral del backend. Definí el ecosistema de desarrollo con Java 21, Maven y Spring Boot, establecí la disciplina de control de versiones con GitFlow y la convención Conventional Commits, e implementé las guías de estilo oficiales (Google Java Style Guide y Kotlin Coding Conventions). Asimismo, diseñé la arquitectura de despliegue del backend mediante imágenes de contenedor multi-stage en Docker, configuración de perfiles (`dev`/`prod`), inyección segura de variables de entorno (JWT, base de datos) y verificación de health checks y políticas CORS. |AV1: El equipo actualizó y profundizó conocimientos en metodologías de Lean UX (User Personas, Journey Mapping As-Is, Empathy Mapping) y en Domain-Driven Design estratégico (EventStorming, Bounded Context Canvas, Context Mapping), aplicándolos directamente sobre el dominio real de SafeBus. Esto permitió pasar de conceptos teóricos revisados en clase a artefactos concretos que sustentan las decisiones de diseño del proyecto, evidenciando la capacidad del equipo de trasladar el aprendizaje del curso a un contexto de aplicación real.<br><br>TB1: En esta entrega, el equipo actualizó y aplicó de manera interdisciplinaria conocimientos avanzados en diseño de producto y UX/UI móvil (Design System, arquitectura de la información, wireflows y prototipado interactivo), desarrollo web y móvil nativo (Jetpack Compose, Kotlin, captura telemática en segundo plano y SQLite local), arquitectura backend bajo Domain-Driven Design (DDD táctico con Spring Boot), pruebas automatizadas BDD (Cucumber y Gherkin) y despliegue productivo en la nube mediante contenedores Docker en Microsoft Azure. Esta evolución demostró la capacidad del equipo para articular conceptos de ingeniería de vanguardia en artefactos de software operativos, integrados y testeables, conectando los requisitos del negocio con un producto digital robusto y funcional. |
| Reconoce la necesidad del aprendizaje permanente para el desempeño profesional y el desarrollo de proyectos en soluciones de software. | **Acuache Lucas, Mathias Joaquin**<br>AV1: Reconocí la importancia del aprendizaje permanente al profundizar de manera autónoma en los principios de Lean UX y la arquitectura táctica con DDD. Comprendí que el desarrollo de software exige una constante actualización metodológica y técnica frente a requerimientos cambiantes en el sector transporte, lo cual me permitió traducir conceptos teóricos en diagramas de clases y bases de datos consistentes para el proyecto.<br><br>TB1: Reconocí la importancia del aprendizaje continuo al investigar de forma autónoma directrices de interacción móvil y estándares de usabilidad táctil para optimizar los flujos de navegación y wireflows en escenarios de estrés operativo y emergencias. Además, formular las conclusiones y recomendaciones del informe me evidenció que como futuro ingeniero de software requiero una constante evaluación crítica y autoaprendizaje para identificar mejoras técnicas y metodológicas en cada iteración del producto.<br><br>**Arechaga Saavedra, Mathias Augusto**<br>AV1: Reconocí la necesidad del aprendizaje permanente al investigar por cuenta propia marcos de análisis competitivo y estándares arquitectónicos modernos en DDD. Entendí que para desempeñarme eficazmente en el desarrollo de software debo mantenerme continuamente informado sobre la evolución del mercado y los patrones de diseño por capas, asegurando la robustez y vigencia técnica del producto ante nuevos retos operativos.<br><br>TB1: Reconocí la necesidad del aprendizaje continuo al investigar por iniciativa propia pautas de accesibilidad web (WCAG) y principios modernos de arquitectura de la información, logrando estructurar una navegación coherente y accesible para el usuario. Asimismo, gestionar y ejecutar el Sprint 1 me demostró la necesidad de actualizarme permanentemente en buenas prácticas ágiles de integración continua, revisión cruzada de código y control riguroso de versiones en proyectos de software.<br><br>**Delgado Arriola, Leonardo Sebastian**<br>AV1: A través del análisis de las entrevistas del Segmento 2 y la elaboración del Product Backlog con Impact Mapping, reconocí que el aprendizaje continuo es esencial para comprender las dinámicas cambiantes del usuario. La profundización autodirigida en la formulación de escenarios Gherkin evidenció que la capacidad de adquirir nuevas habilidades de especificación ágil es clave para entregar soluciones de software de alto impacto y calidad profesional.<br><br>TB1: Reconocí la imperiosa necesidad del aprendizaje autodirigido al investigar y dominar el paradigma reactivo declarativo de Jetpack Compose y los servicios de ubicación en segundo plano en Android, superando retos técnicos vinculados al consumo eficiente de batería, gestión del ciclo de vida y persistencia local sin conexión. Esta experiencia me demostró que mantenerme al día con las tecnologías móviles y arquitecturas nativas modernas es vital para mi desempeño profesional al construir soluciones de software seguras, resilientes y de alto rendimiento.<br><br>**Espinoza Orrego, Valentino Andre**<br>AV1: A partir de las entrevistas del Segmento 1, reconocí la necesidad de un aprendizaje permanente al investigar y profundizar en metodologías cualitativas para validar de forma continua nuestro mercado. Apliqué estos nuevos conocimientos en el diseño de las User Personas y la estructuración de la introducción, asegurando que la solución de software evolucione basándose en un autoaprendizaje constante de las necesidades del usuario.<br><br>TB1: Comprendí que el aprendizaje permanente es indispensable en mi desarrollo profesional al autoformarme en la integración de servicios de nube empresariales en Microsoft Azure, gestión de contenedores Docker multi-etapa y especificación de pruebas de comportamiento BDD concurrentes. Adaptar rápidamente estos nuevos conocimientos en arquitectura RESTful, contratos OpenAPI y automatización de despliegues me permitió resolver los desafíos técnicos del Sprint 2 y asegurar la entrega de un sistema integral y robusto.<br><br>**Fernández Linares, Alvaro Sebastian**<br>AV1: Reconocí la trascendencia del aprendizaje continuo al autoformarme en metodologías complejas como EventStorming estratégico y el modelado arquitectónico C4. Esta experiencia me demostró que el éxito de un proyecto de software depende de la investigación y adaptación constante frente a nuevos paradigmas de diseño de sistemas distribuidos, fortaleciendo mi capacidad analítica y profesional ante desafíos de ingeniería reales.<br><br>TB1: Reconocí la necesidad constante del autoaprendizaje permanente al investigar estándares industriales de despliegue en contenedores, seguridad en la gestión de credenciales y secretos de producción, y políticas de gobernanza de código estricto. Asimilar de forma autónoma estas directrices de arquitectura de infraestructura y configuración de software me permitió asegurar que la plataforma cuente con bases sólidas, reproducibles y alineadas con las mejores prácticas profesionales de la industria. | AV1: El equipo reconoció que el desarrollo del proyecto exige aprendizaje continuo más allá de lo revisado en clase, evidenciado en la necesidad de investigar y validar de forma autónoma el alcance correcto de técnicas como EventStorming y Bounded Context Canvas, así como en la decisión consciente de priorizar y documentar explícitamente los alcances pendientes (segmento de pasajero, Bounded Context Canvases livianos) en lugar de dejarlos como vacíos no declarados, mostrando conciencia del propio proceso de aprendizaje y de sus limitaciones de tiempo en esta primera entrega.<br><br>TB1: El equipo reconoció que la materialización de un sistema distribuido y móvil demanda un aprendizaje continuo y autodirigido para dominar estándares de la industria que evolucionan rápidamente. La necesidad de investigar autónomamente el paradigma declarativo de Jetpack Compose, resolver restricciones operativas de localización GPS en segundo plano y persistencia offline, orquestar contenedores Docker y configuraciones seguras en Microsoft Azure, y formalizar especificaciones BDD concurrentes evidenció que el autoaprendizaje permanente es indispensable. Esta experiencia fortaleció la adaptabilidad y madurez profesional del equipo, reconociendo que la constante asimilación de nuevos marcos y prácticas es la clave para entregar soluciones de software seguras, escalables y de alta calidad técnica. |

---

## Objetivos SMART

Cada integrante formula al menos dos objetivos SMART orientados a su desarrollo
profesional una vez finalizada la carrera.

## Objetivos SMART de Desarrollo Profesional

### 1. **Acuache Lucas, Mathias Joaquin**
* **Objetivo SMART 1:** Poder dominar un framework de fronted y backend moderno como React o Vue y Node.js o Net, de esta manera poder tener una noción de como realizar apps web de manera correcta y poder dominar bien DDD.
* **Objetivo SMART 2:** Desarrollar una aplicación movil de manera correcta siguiendo todos los lineamientos para el desarrollo y poder adaptarme de manera rapida a los frameworks para móvil.

### 2. **Arechaga Saavedra, Mathias Augusto**
* **Objetivo SMART 1:** Dominar un framework backend moderno (Spring Boot, Node.js o .NET) y uno frontend (Angular, React o Vue) en un plazo de 10 meses, evidenciado en un proyecto integrador.
* **Objetivo SMART 2:** Aprender un framework de deep learning (TensorFlow o PyTorch) en un lapso de 12 meses, desarrollando y publicando 2 proyectos de redes neuronales en mi repositorio de GitHub.

### 3. **Delgado Arriola, Leonardo Sebastian**
* **Objetivo SMART 1:** Diseñar y desplegar una arquitectura de integración continua y entrega continua (CI/CD) para una aplicación web escalable, incorporando pruebas automatizadas y contenedores Docker en un lapso de 8 meses posteriores a la graduación, evidenciado en un pipeline funcional en GitHub Actions.
* **Objetivo SMART 2:** Consolidar competencias en desarrollo backend de alto rendimiento construyendo una API RESTful con soporte para procesamiento en tiempo real (mediante WebSockets o colas de mensajería) en un período de 6 meses, validada con una suite de pruebas de carga que soporte al menos 500 solicitudes concurrentes.

### 4. **Espinoza Orrego, Valentino Andre**
* **Objetivo SMART 1:** Integrar de forma avanzada herramientas de Inteligencia Artificial Generativa y codificación asistida (Agentic Coding) en entornos de desarrollo móvil para agilizar los ciclos de vida del software, completando dos cursos especializados en Google Cloud dentro de los primeros 6 meses como graduado.
* **Objetivo SMART 2:** Desarrollar y lanzar un MVP (Producto Mínimo Viable) móvil multiplataforma que resuelva una problemática de logística empresarial en un lapso de 12 meses tras recibir el título profesional, aplicando marcos de trabajo ágiles aprendidos en la carrera.

### 5. **Fernández Linares, Alvaro Sebastian**
* **Objetivo SMART 1:** Consolidar mi transición hacia Data Science e Inteligencia Artificial completando el curso GCI 2026 de la Universidad de Tokio sobre Data Science e IA durante este año, y aplicando lo aprendido en un proyecto propio de análisis de datos con Python (pandas, scikit-learn) dentro de los 6 meses posteriores a la graduación.

* **Objetivo SMART 2:** Integrar mi base en arquitectura de software (DDD, hexagonal, CQRS) con la implementación práctica de IA, desarrollando y desplegando en un plazo de 10 meses tras egresar un sistema backend que incorpore un modelo de machine learning o un servicio de IA generativa como parte de su lógica de negocio, documentado en un repositorio público.