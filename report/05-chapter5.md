[← Volver al índice](00-chapter0.md#contenido)

# Conclusiones y recomendaciones

## Conclusiones

* **Validación de la Problemática y Enfoque Lean UX:**  
  La investigación cualitativa ejecutada en el hito AV1 a través de seis entrevistas a profundidad (tres conductores del Segmento 1 y tres supervisores de flota del Segmento 2) permitió contrastar y validar empíricamente los *Problem Statements* y los supuestos (*Assumptions*) formulados inicialmente. Se confirmó que el sector de transporte público urbano en Lima Metropolitana y el Callao adolece de una desconexión crítica entre la operación en ruta y las centrales de monitoreo. La dependencia exclusiva de llamadas telefónicas y aplicaciones de mensajería informal ante situaciones de asalto o extorsión genera tiempos de respuesta policial ineficaces (de hasta 30 minutos). Asimismo, se validó la hipótesis **H01**, evidenciando que el conductor requiere un botón de pánico de activación inmediata y silenciosa con transmisión satelital directa sin fricciones de aprobación, así como la hipótesis **H02**, respaldando la autenticación mediante código QR al inicio de turno para erradicar sustituciones no autorizadas al volante.

* **Arquitectura de Software y Modelado Domain-Driven Design (DDD):**  
  La aplicación rigurosa de Domain-Driven Design a nivel estratégico (EventStorming, Bounded Context Canvas y Context Mapping) y a nivel táctico demostró la viabilidad técnica para desacoplar el ecosistema de SafeBus en siete Bounded Contexts especializados: *Identity & Access Management (IAM)*, *Fleet & Workforce Management*, *Trip & Location Tracking*, *Passenger Identity & Journey*, *Safety Case Management*, *External Escalation* y *Risk Zone Intelligence*. Este particionamiento modular, junto con el modelado arquitectónico bajo el estándar C4 (Contexto, Contenedores y Componentes), garantiza que los flujos de alta exigencia temporal (como el despacho de alertas críticas y la telemetría en tiempo real) no colisionen con las consultas transaccionales de aforo ni con la gestión de usuarios, proveyendo una base robusta, escalable y mantenible para el ciclo de vida del software.

* **Especificación Ágil y Trazabilidad de Requisitos:**  
  La construcción de las 24 historias de usuario estructuradas con criterios de aceptación en lenguaje Gherkin (Given-When-Then), complementada con el mapa de impacto (*Impact Mapping*) y el *Product Backlog* priorizado en Story Points, asegura una trazabilidad directa entre las metas de negocio (reducir incidentes y tiempos de atención) y los incrementos de software a entregar en cada iteración. La formulación de historias técnicas (*Spike Stories*) para el consumo continuo de GPS en segundo plano y la ingesta ordenada de eventos de conteo de pasajeros redujo la incertidumbre tecnológica antes de iniciar la fase de codificación.

## Recomendaciones

* **Roadmap para el Sprint 1 (Hito TB1):**  
  Se recomienda priorizar la puesta en marcha de la infraestructura base del backend y el despliegue del Landing Page institucional estático, asegurando la exposición pública de los Términos y Condiciones y los formularios de contacto comercial. En paralelo, se debe avanzar con la implementación de los servicios RESTful del Bounded Context *Identity & Access Management (IAM)* y el flujo de validación de turnos mediante códigos QR (*Fleet & Workforce*), estableciendo las bases de autenticación y autorización requeridas para los demás componentes.

* **Roadmap para el Sprint 2 (Hito AV2):**  
  En la siguiente fase de desarrollo, el foco técnico debe orientarse a la sincronización en tiempo real de la telemetría GPS (*Trip & Location Tracking*) y al registro de cuentas de pasajeros con validación fotográfica y cálculo de distanciamiento geográfico (>100 metros durante 60 segundos) para el cierre automático del viaje. Asimismo, se sugiere configurar una suite de pruebas automatizadas (pruebas unitarias y de integración BDD) sobre los controladores y casos de uso principales para mantener la estabilidad del código.

* **Estrategia de Adopción y Mitigación de Barreras Operativas:**  
  A partir de las apreciaciones recogidas en las entrevistas de los supervisores, se recomienda incorporar en las aplicaciones interfaces minimalistas con guías de inducción rápida que reduzcan la resistencia al cambio del personal operativo. Además, la arquitectura debe considerar el almacenamiento local persistente (SQLite) en los dispositivos móviles para garantizar que las alertas y coordenadas emitidas en zonas de sombra o baja cobertura celular se encolen de forma segura y se transmitan automáticamente en cuanto se restablezca la conectividad.

---

# Video About-the-Product

- Screenshot: [completar]
- URL OneDrive: [completar]
- URL YouTube: [completar]
- Duración: [completar]

[Introducción a la sección]

---

# Video App Validation

[Evaluación vía Firebase App Distribution — ver heurísticas en Anexo E]

---

# Video About-The-Team

- Screenshot: [completar]
- URL Microsoft Stream: [completar]
- URL YouTube: [completar]

**Pauta de secuencias de contenido**

| Timing (hh:mm:ss) | Sección |
|---------------------|-----------|
| 00:00:00 | |

---

# Glosario

| Término | Definición |
|---------|------------|
| Solicitud de pánico del pasajero | Mensaje y foto enviados por una cuenta asociada al viaje; una solicitud individual no activa una emergencia. |
| Umbral de solicitudes | Tres pasajeros distintos del mismo bus y turno en cinco minutos habilitan revisión empresarial. |
| Emergencia del conductor | Alerta Critical activada directamente sin umbral ni aprobación previa. |
| Emergencia de pasajeros | Alerta High activada por aprobación empresarial de una agrupación elegible. |
| Foto de rostro | Imagen privada aportada durante el registro del pasajero; no reemplaza evidencia de un incidente. |
| Cierre automático del viaje | Fin de la asociación tras más de 100 metros durante 60 segundos con ubicaciones válidas. |

---

# Bibliografía

> Requisitos mínimos: 4 papers Q1/Q2 (≤ 2 años de antigüedad) — 2 de dominio del
> problema, 2 de técnicas de desarrollo móvil aplicadas. Organizar por categorías:
> a) Dominio de negocio, b) Métodos/técnicas/approaches de ingeniería de software,
> c) Lenguajes, frameworks y herramientas. Formato APA. Ver Anexo G.

## a) Dominio de negocio

- Defensoría del Pueblo del Perú. (2024). *Informe defensorial sobre la seguridad ciudadana y la prevención del acoso en los servicios de transporte público urbano de Lima Metropolitana y Callao*. Defensoría del Pueblo. https://www.defensoria.gob.pe/
- Kapatsila, B., & Grisé, E. (2025). An empirical investigation of the impact of preferences for physical, social, and security factors on the feeling of safety on public transit. *Transportation Research Part A: Policy and Practice*, 193, 104501. https://doi.org/10.1016/j.tra.2025.104501
- Ledoux, J., & Marrone, M. (2024). The evolving landscape of public transport security: A review of technological advancements. *Transportation Research Part A: Policy and Practice*, 181, 103942. https://doi.org/10.1016/j.tra.2023.103942
- Ministerio de Transportes y Comunicaciones [MTC]. (2024). *Anuario estadístico de siniestralidad vial en el transporte terrestre urbano en el Perú*. Observatorio Nacional de Seguridad Vial. https://www.gob.pe/mtc

## b) Métodos, técnicas y approaches de ingeniería de software

- Cohn, M. (2004). *User stories applied: For agile software development*. Addison-Wesley Professional. https://www.mountaingoatsoftware.com/books/user-stories-applied
- Evans, E. (2003). *Domain-driven design: Tackling complexity in the heart of software*. Addison-Wesley Professional. https://www.domainlanguage.com/ddd/
- Gothelf, J., & Seiden, J. (2021). *Lean UX: Designing great products with agile teams* (3.ª ed.). O'Reilly Media. https://www.oreilly.com/library/view/lean-ux-3rd/9781098108762/
- Ünlü, H., Demirörs, O., & Tüzün, E. (2024). Microservice-based projects in agile world: A structured interview. *Information and Software Technology*, 165, 107334. https://doi.org/10.1016/j.infsof.2023.107334
- Zhong, C., Li, S., Huang, H., Liu, X., Chen, Z., Zhang, Y., & Zhang, H. (2024). Domain-driven design for microservices: An evidence-based investigation. *IEEE Transactions on Software Engineering*, 50(6), 1425–1449. https://doi.org/10.1109/TSE.2024.3385835

## c) Lenguajes, frameworks y herramientas

- Android Developers. (2024). *Jetpack Compose: Modern toolkit for building native UI*. Google Developers. https://developer.android.com/develop/ui/compose
- Brown, S. (2024). *The C4 model for visualising software architecture*. Structurizr. https://c4model.com/
- PostgreSQL Global Development Group. (2024). *PostgreSQL 16.0 documentation*. PostgreSQL. https://www.postgresql.org/docs/16/index.html
- RabbitMQ. (2024). *RabbitMQ documentation: Messaging that just works*. Broadcom / VMware. https://www.rabbitmq.com/docs
- Spring Framework. (2024). *Spring Boot reference documentation (Version 3.3)*. VMware Tanzu. https://docs.spring.io/spring-boot/index.html

---

# Anexos
## Anexo. Enlaces y Recursos Digitales del Proyecto

| Recurso | Descripción | Identificador / Enlace |
| :--- | :--- | :--- |
| **Organización GitHub** | Espacio oficial de la startup | [GitHub Org](https://github.com/upc-pre-202620-1acc0238-4939-dreamteam) |
| **Repositorio del Reporte** | Código fuente del informe Markdown | [dreamteam-report](https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/dreamteam-report) |
| **Event Storming** | link del Miro | [Event Storming](https://miro.com/app/board/uXjVHn-32vA=/?share_link_id=323821691090) |
| **Video Needfinding Interviews** | Compilación de entrevistas a conductores | `upc-pre-202620-1acc0238-4939-dreamteam-needfinding-av1.mp4` — [Ver Video]([completar-url]) |
| **Entrevista 1 (Carlos García)** | Grabación individual (Conductor, 45 años) | [Ver en SharePoint Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410344_upc_edu_pe/IQDxbGA3NcI4QJTFe6GnCx8pAQvz3SOZwqUSE4nQZNJK-xc?e=GFwsLX) |
| **Entrevista 2 (Miguel Torres)** | Grabación individual (Conductor, 42 años) | [Ver en SharePoint Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410344_upc_edu_pe/IQC9FCvjAeQ1RZ8q5zTOY0kYAV6r-v6TR54tpsqDX0SajP4?e=ueAqmB) |
| **Entrevista 3 (Jorge Mendoza)** | Grabación individual (Conductor, 38 años) | [Ver en SharePoint Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410344_upc_edu_pe/IQD4wjK9m5zCTYguNpfw6csmAUHHSHx-iHAi5NocSGR3BJU?e=ujXq9R) |
| **Reporte de Participación AV1** | Evaluación de desempeño del Team Leader | `upc-pre-202620-1acc0238-4939-dreamteam-performance-av1.docx` — [Ver Documento]([completar-url]) |

## Anexo A. Student Outcome

Ver estructura en [00-chapter0.md](00-chapter0.md#student-outcome).

## Anexo B. Participant Performance Report

Documento independiente en Word/PDF:
`upc-pre-202620-1acc0238-4939-dreamteam-performance-av1.docx` (y `.pdf`)

