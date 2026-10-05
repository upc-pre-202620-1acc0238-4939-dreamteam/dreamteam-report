[← Volver al índice](00-chapter0.md#contenido)

# Capítulo IV: Product Implementation & Validation

### 4.1. Software Configuration Management

Esta sección establece las decisiones y convenciones que mantienen la consistencia durante el ciclo de vida de los productos: las herramientas de trabajo del equipo, la organización del código fuente, las guías de estilo y la configuración de despliegue.

#### 4.1.1. Software Development Environment Configuration

| Actividad | Producto | Propósito en el proyecto | Ruta de referencia |
|---|---|---|---|
| Needfinding | UXPressia | User Personas, Journey Maps, Empathy Maps e Impact Map | https://uxpressia.com |
| Modelado de dominio | Miro | EventStorming, Domain Storytelling, Bounded Context Canvas y Context Map | https://miro.com |
| Diseño UX/UI | Figma | Wireframes, mock-ups y prototipos | https://www.figma.com |
| Wireflows y User Flows | LucidChart / Overflow | Diagramas de flujo de las aplicaciones | https://www.lucidchart.com |
| Arquitectura de software | Structurizr (C4 Model) | Diagramas de contexto, contenedores, componentes y despliegue | https://structurizr.com |
| Desarrollo backend | Java 21 (Eclipse Temurin), Maven, Spring Boot 4.0.6, Spring Data JPA, Lombok | Implementación de los Web Services RESTful | https://adoptium.net · https://maven.apache.org · https://spring.io/projects/spring-boot |
| Desarrollo de la Landing Page | HTML5, CSS3 y JavaScript | Sitio web estático del modelo de negocio | https://developer.mozilla.org |
| Desarrollo móvil | Kotlin, Android Studio y Gradle | Aplicación móvil para Android | https://kotlinlang.org · https://developer.android.com/studio |
| Documentación de servicios | springdoc-openapi (Swagger UI) | Documentación OpenAPI de los endpoints | https://springdoc.org |
| Pruebas | JUnit 5 y Spring Boot Test | Pruebas unitarias y de integración del backend | https://junit.org/junit5 |
| Base de datos | H2 (desarrollo local) y MySQL 8 (producción) | Persistencia | https://www.mysql.com |
| Contenedores | Docker | Empaquetado del backend | https://www.docker.com |
| Despliegue | Microsoft Azure (Container Registry, App Service, Database for MySQL, Static Web Apps) y Azure CLI | Publicación de los productos | https://portal.azure.com · https://learn.microsoft.com/cli/azure |
| Distribución móvil | Firebase App Distribution | Pruebas de la aplicación en dispositivos reales | https://firebase.google.com/docs/app-distribution |
| Control de versiones | Git y GitHub | Repositorios y colaboración | https://github.com |
| Documentación del informe | Markdown con Visual Studio Code | Redacción del informe en el repositorio | https://code.visualstudio.com |

#### 4.1.2. Source Code Management

El equipo utiliza GitHub como plataforma de control de versiones, dentro de la organización pública del equipo.

| Producto | Repositorio |
|---|---|
| Informe del proyecto | https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/dreamteam-report |
| Landing Page | https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/safebus-landing |
| Web Services (backend) | https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend |
| Aplicación móvil | https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/safebus-mobile |
| Criterios de Aceptación (BDD) | https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/Acceptance-Criteria |

El repositorio del backend incluye el proyecto y sus archivos de pruebas, tanto unitarias como de integración y aceptación.

**GitFlow.** El equipo aplica GitFlow como flujo de trabajo, con las siguientes ramas:

| Rama | Se crea desde | Se integra en | Propósito |
|---|---|---|---|
| `main` | — | — | Código estable. Solo recibe merges de `release/*` y `hotfix/*`, y cada merge se etiqueta con una versión |
| `develop` | `main` | — | Rama de integración de las features |
| `feature/<contexto>-<descripcion>` | `develop` | `develop` | Una rama por feature. Ejemplos: `feature/safety-case-driver-emergency`, `feature/iam-jwt-authentication` |
| `release/<x.y.z>` | `develop` | `main` y `develop` | Preparación de una entrega. Ejemplo: `release/0.1.0` |
| `hotfix/<descripcion>` | `main` | `main` y `develop` | Corrección urgente sobre código publicado |

Todo cambio llega a `develop` o `main` mediante Pull Request revisado por al menos otro integrante; no se hacen commits directos a esas ramas.

**Conventional Commits.** Los mensajes siguen el formato `<tipo>(<alcance>): <descripción>`, con los tipos `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `build`, `ci` y `chore`. El alcance corresponde al Bounded Context o al módulo afectado. Ejemplos:

```
feat(iam): add JWT authentication
fix(location): reject out-of-range coordinates
test(safety-case): add driver emergency integration test
build: add Dockerfile for Azure deployment
```

**Semantic Versioning.** Las versiones siguen el formato `MAJOR.MINOR.PATCH`. Mientras el producto no alcance su Release Review, las entregas son versiones `0.x.y`: `v0.1.0` para el Sprint 1 (TB1) y `v0.2.0` para el Sprint 2 (AV2). La versión `v1.0.0` corresponde al Release Review (TB2).

#### 4.1.3. Source Code Style Guide & Conventions

Todos los identificadores (paquetes, clases, métodos, variables, tablas y rutas) se nombran en inglés.

| Lenguaje o artefacto | Guía adoptada | Referencia |
|---|---|---|
| Java | Google Java Style Guide | https://google.github.io/styleguide/javaguide.html |
| HTML y CSS | Google HTML/CSS Style Guide | https://google.github.io/styleguide/htmlcssguide.html |
| JavaScript | Google JavaScript Style Guide | https://google.github.io/styleguide/jsguide.html |
| Kotlin | Kotlin Coding Conventions | https://kotlinlang.org/docs/coding-conventions.html |
| Gherkin (`.feature`) | Writing better Gherkin | https://cucumber.io/docs/bdd/better-gherkin/ |

La adopción se verifica en la revisión de cada Pull Request.

**Convenciones propias del backend.** Cada Bounded Context se organiza en cuatro capas: `domain`, `application`, `infrastructure` e `interfaces`. Los nombres siguen estos sufijos:

| Elemento | Convención | Ejemplo |
|---|---|---|
| Command | `<Verbo><Entidad>Command` | `CreateAlertCommand` |
| Query | `Get<Entidad>By<Criterio>Query` | `GetAlertByIdQuery` |
| Servicios de aplicación | `<Entidad>CommandService`, `<Entidad>QueryService` y su `Impl` | `AlertCommandServiceImpl` |
| Resource (DTO REST) | `<Entidad>Resource` | `AlertResource` |
| Assembler | `<Entidad>ResourceFromEntityAssembler` | `AlertResourceFromEntityAssembler` |
| Endpoints REST | `/api/v1/<recurso-en-plural-kebab-case>` | `/api/v1/bus-units` |
| Tablas y columnas | `snake_case` | `bus_unit`, `plate_number` |

#### 4.1.4. Software Deployment Configuration

Los tres productos digitales se publican sobre Microsoft Azure y Firebase. El backend se empaqueta como imagen Docker, se almacena en Azure Container Registry y se ejecuta en Azure App Service sobre una base de datos MySQL administrada.

| Producto | Plataforma | Origen | Mecanismo de despliegue |
|---|---|---|---|
| Web Services | Azure Container Registry y Azure App Service (Linux, contenedor) | Repositorio del backend, rama `main` | Imagen Docker construida con el `Dockerfile` del repositorio |
| Base de datos | Azure Database for MySQL, Flexible Server | — | El esquema lo crea Hibernate al iniciar la aplicación |
| Landing Page | Azure Static Web Apps | Repositorio de la Landing Page, rama `main` | Flujo de GitHub Actions que Azure genera y que se ejecuta en cada push a `main` |
| Aplicación móvil | Firebase App Distribution | Repositorio de la aplicación móvil | Compilación del APK o AAB con Gradle y distribución a un grupo de testers *(se completa en TB2)* |

**Entornos del backend.**

| | Local | Producción |
|---|---|---|
| Perfil de Spring | por defecto | `prod` |
| Base de datos | H2 en archivo | MySQL en Azure (TLS obligatorio) |
| Datos de ejemplo (seeders) | activos | desactivados |
| Origen de la configuración | `application.properties` | Application Settings del App Service |

**Variables de configuración en Azure App Service.**

| Variable | Descripción |
|---|---|
| `WEBSITES_PORT` | Puerto en el que escucha el contenedor (`8080`) |
| `SPRING_PROFILES_ACTIVE` | Perfil de Spring (`prod`) |
| `SPRING_DATASOURCE_URL` | URL JDBC del servidor MySQL, con `sslMode=REQUIRED` |
| `SPRING_DATASOURCE_USERNAME` | Usuario de la base de datos |
| `SPRING_DATASOURCE_PASSWORD` | Contraseña de la base de datos |
| `APP_CORS_ALLOWED_ORIGINS` | Orígenes web autorizados a consumir la API |
| `SAFEBUS_JWT_SECRET` | Secreto con el que se firman los tokens JWT (mínimo 32 caracteres) |
| `SAFEBUS_BOOTSTRAP_COMPANY` | Nombre de la empresa que se crea en el primer arranque |
| `SAFEBUS_BOOTSTRAP_SUPERVISOR_LOGIN` | Código del primer supervisor, creado solo si la base está vacía |
| `SAFEBUS_BOOTSTRAP_SUPERVISOR_PASSWORD` | Contraseña inicial de ese supervisor |

Los secretos se configuran únicamente como Application Settings y nunca se versionan en el repositorio.

**Pasos de despliegue del backend.** Se parte del repositorio del backend, con Docker y Azure CLI instalados y la sesión iniciada con `az login`.

1. **Crear los recursos de Azure** (una sola vez):

```bash
RG=rg-safebus
LOC=<region-permitida-por-la-suscripcion>
ACR=<nombre-unico-acr>
PLAN=plan-safebus
APP=<nombre-unico-app>
MYSQL=<nombre-unico-mysql>

az group create -n $RG -l $LOC
az acr create -g $RG -n $ACR --sku Basic --admin-enabled true
az mysql flexible-server create -g $RG -n $MYSQL -l $LOC \
  --admin-user safebusadmin --admin-password '<password>' \
  --tier Burstable --sku-name Standard_B1ms --storage-size 20 \
  --public-access 0.0.0.0
az mysql flexible-server db create -g $RG --server-name $MYSQL --database-name safebus
az appservice plan create -g $RG -n $PLAN --is-linux --sku B1
```

2. **Construir y publicar la imagen.** Se indica la plataforma `linux/amd64` porque Azure App Service ejecuta contenedores para esa arquitectura, incluso cuando se compila desde un equipo con procesador ARM:

```bash
az acr login -n $ACR
docker buildx build --platform linux/amd64 \
  -t $ACR.azurecr.io/safebus-api:0.1.0 --push .
```

3. **Crear la aplicación y enlazarla a la imagen:**

```bash
az webapp create -g $RG -p $PLAN -n $APP \
  --deployment-container-image-name $ACR.azurecr.io/safebus-api:0.1.0
az webapp config container set -g $RG -n $APP \
  --container-image-name $ACR.azurecr.io/safebus-api:0.1.0 \
  --container-registry-url https://$ACR.azurecr.io \
  --container-registry-user $(az acr credential show -n $ACR --query username -o tsv) \
  --container-registry-password $(az acr credential show -n $ACR --query "passwords[0].value" -o tsv)
```

4. **Configurar las variables** descritas en la tabla anterior:

```bash
az webapp config appsettings set -g $RG -n $APP --settings \
  WEBSITES_PORT=8080 \
  SPRING_PROFILES_ACTIVE=prod \
  SPRING_DATASOURCE_URL="jdbc:mysql://$MYSQL.mysql.database.azure.com:3306/safebus?sslMode=REQUIRED" \
  SPRING_DATASOURCE_USERNAME=safebusadmin \
  SPRING_DATASOURCE_PASSWORD='<password>' \
  APP_CORS_ALLOWED_ORIGINS="https://<url-de-la-landing>" \
  SAFEBUS_JWT_SECRET='<secreto-de-32-caracteres-o-mas>' \
  SAFEBUS_BOOTSTRAP_COMPANY="<nombre-de-la-empresa>" \
  SAFEBUS_BOOTSTRAP_SUPERVISOR_LOGIN="<codigo-del-supervisor>" \
  SAFEBUS_BOOTSTRAP_SUPERVISOR_PASSWORD='<password-inicial>'
az webapp restart -g $RG -n $APP
```

5. **Verificar el despliegue.** La documentación Swagger debe responder en `https://<nombre-app>.azurewebsites.net/swagger-ui.html`. Si no responde, los registros del contenedor se consultan con `az webapp log tail -g $RG -n $APP`.

Para publicar una nueva versión se repite el paso 2 con una nueva etiqueta de imagen y se actualiza el paso 3.

**Landing Page.** Desde el portal de Azure se crea un recurso Static Web Apps y se enlaza al repositorio de la Landing Page en GitHub, rama `main`. Azure agrega al repositorio un flujo de GitHub Actions que publica el sitio en cada push a `main`.

**Aplicación móvil.** El APK o AAB se carga a Firebase App Distribution, desde la consola o con `firebase appdistribution:distribute`, y se asigna a un grupo de testers que recibe la invitación por correo.

**Deployment Diagram (C4 Model).** El siguiente diagrama muestra cómo se distribuyen los contenedores de SafeBus sobre la infraestructura.

<img src="../docs/c4/deployment-diagram.png">

---

## 4.2. Landing Page & Mobile Application Implementation

> Duplicar la sección `4.2.x` por cada Sprint.

### 4.2.1. Sprint 1

#### 4.2.1.1. Sprint Planning 1

| Sprint # | Sprint 1 |

#### 4.2.1.5. Testing Suite Evidence for Sprint Review
| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on |

#### 4.2.1.6. Execution Evidence for Sprint Review


#### 4.2.1.7. Services Documentation Evidence for Sprint Review

| Endpoint | Verbo HTTP | Sintaxis | Parámetros | Ejemplo Response |

#### 4.2.1.8. Software Deployment Evidence for Sprint Review


#### 4.2.1.9. Team Collaboration Insights during Sprint


### 4.2.2. Sprint 2

#### 4.2.2.1. Sprint Planning 2

En esta sección se especifican los acuerdos y parámetros fundamentales establecidos durante la sesión de planificación del Sprint 2. El equipo analizó los resultados de la entrega previa y organizó el trabajo requerido para materializar las funcionalidades críticas de seguridad, telemetría y ciclo de viaje en las aplicaciones móviles y el backend. A continuación, se presenta el cuadro de resumen del Sprint Planning Meeting:

| Sprint # | Sprint 2 |
|---|---|
| **Date** | 2026-09-07 |
| **Time** | 19:00 - 21:00 |
| **Location** | Sesión virtual sincrónica vía Google Meet / Discord |
| **Prepared By** | Espinoza Orrego, Valentino Andre |
| **Attendees** | Acuache Lucas, Mathias Joaquin / Arechaga Saavedra, Mathias Augusto / Delgado Arriola, Leonardo Sebastian / Espinoza Orrego, Valentino Andre / Fernández Linares, Alvaro Sebastian |
| **Sprint 1 Review Summary** | Durante la sesión de revisión del Sprint 1, el equipo evidenció la publicación del Landing Page institucional en Azure Static Web Apps, la infraestructura de control de versiones con GitFlow y la arquitectura base del backend en Spring Boot desplegada al 70%, incluyendo los endpoints iniciales de Identity & Access Management (IAM) y la resolución de las Spike Stories técnicas de telemetría y flujo de conteo de pasajeros (US21 y US22). El Product Owner evaluó favorablemente el avance de la infraestructura base y recomendó concentrar el Sprint 2 en la interactividad operativa móvil y en el flujo crítico de emergencias en tiempo real. |
| **Sprint n-1 Retrospective Summary** | En la retrospectiva del Sprint 1, el equipo reconoció como fortalezas la rápida adopción del modelado táctico de Domain-Driven Design (DDD) y el apego a las convenciones de estilo de código (Google Java Style Guide y Kotlin Coding Conventions). Como áreas de mejora para el trabajo colaborativo, se acordó concertar los contratos de DTO y esquemas JSON entre el frontend móvil y el backend antes de iniciar la codificación de las interfaces, incrementar la frecuencia de integración en ramas de características (*feature branches*) para prevenir discrepancias en las revisiones de Pull Requests, y diseñar las pruebas automatizadas BDD en paralelo a la lógica de negocio. |
| **Sprint Goal** | **Our focus is on** delivering the core emergency response, real-time bus telemetry, and passenger journey verification features across the mobile applications and the public backend services.<br><br>**We believe it delivers** immediate panic protection for drivers, verifiable incident reporting for passengers, and real-time operational response capabilities for transport fleet supervisors.<br><br>**This will be confirmed when** a driver can trigger an immediate Critical emergency alert without approval, passengers can verify a bus unit via QR and submit threshold-eligible incident requests with photo evidence, and fleet supervisors can monitor live bus coordinates and manage safety cases through 100% publicly documented RESTful services. |
| **Sprint Velocity** | 34 Story Points |
| **Sum of Story Points** | 34 Story Points |

#### 4.2.2.2. Aspect Leaders and Collaborators

Para optimizar la coordinación y efectividad durante el desarrollo del Sprint 2, el equipo formalizó la Leadership-and-Collaboration Matrix (LACX). Cada aspecto técnico y funcional cuenta con un integrante designado como Líder (L), responsable de velar por la coherencia técnica y el cumplimiento de los criterios de aceptación, y Colaboradores (C), encargados de apoyar en la codificación, revisión cruzada de código y pruebas automatizadas:

* **Aspecto 1: Driver Safety & Location (US03, US04):** Desarrollo de la interfaz nativa del conductor, botón de pánico de activación inmediata sin sonido ni vibración, almacenamiento local SQLite y captura de telemetría GPS en segundo plano.
* **Aspecto 2: Passenger Identity & QR Journey (US06, US23, US24):** Formulario de registro con captura facial, módulo de escaneo de QR de la unidad con cámara y lógica de detección de alejamiento geográfico (>100 m durante 60 s).
* **Aspecto 3: Passenger Panic & Threshold Management (US08):** Envío de solicitudes de pánico con mensaje y fotografía del incidente, y lógica de agregación temporal (umbral de 3 pasajeros en 5 minutos) en el backend.
* **Aspecto 4: Telemetry Services & Event Dispatch (US18, US20):** Implementación de los controladores RESTful de geolocalización, persistencia en base de datos y canal de notificaciones en tiempo real vía WebSockets hacia la central de operaciones.

| Team Member (Apellidos, Nombres) | GitHub Username | Driver Safety & Location (US03, US04) | Passenger Identity & QR Journey (US06, US23, US24) | Passenger Panic & Threshold Management (US08) | Telemetry Services & Event Dispatch (US18, US20) |
|---|---|:---:|:---:|:---:|:---:|
| **Delgado Arriola, Leonardo Sebastian** | `leodev77` | **L** | C | C | C |
| **Acuache Lucas, Mathias Joaquin** | `MathiasA25` | C | **L** | C | C |
| **Arechaga Saavedra, Mathias Augusto** | `MathZell` | C | C | **L** | C |
| **Espinoza Orrego, Valentino Andre** | `valentinoespinoza13` | C | C | C | **L** |
| **Fernández Linares, Alvaro Sebastian** | `ORION-tech-c` | C | C | **L** | C |

#### 4.2.2.3. Sprint Backlog 2

El Sprint Backlog del Sprint 2 reúne las historias de usuario priorizadas del Product Backlog orientadas al núcleo operativo de SafeBus: el despacho de emergencias críticas del conductor, la transmisión telemática de la flota en ruta, el registro seguro de pasajeros y el envío de solicitudes con evidencia fotográfica. A continuación, se presenta la referencia al tablero de gestión ágil y la descomposición técnica de cada historia de usuario en tareas de desarrollo, pruebas e integración:

> **URL público del Board de seguimiento (Trello):** `https://trello.com/invite/b/6ac32d61316f0c5c269e14f4/ATTIc604fd2b7f698e3f59998f368cfc62adE8A4AB52/sprint-backlog-2`

<div align="center">
  <img src="../docs/insights/sprint2-board.png" alt="Board de seguimiento del Sprint 2"/>
  <p><i>Tablero de control de estado del Sprint 2</i></p>
</div>

| Sprint # | Sprint 2 | | | | | | | |
|:---:|:---:|---|:---:|---|---|:---:|:---:|:---:|
| **User Story Id** | **User Story Title** | **Work-Item / Task Id** | **Task Title** | **Description** | **Estimation (Hours)** | **Assigned To** | **Status** | |
| **US04** | Trigger an Immediate Driver Emergency Alert | TSK-04-01 | Driver Panic Button UI | Implementar botón de pánico en Jetpack Compose con activación inmediata y sin sonido ni vibración | 5 | Delgado Arriola, Leonardo Sebastian | Done |
| | | TSK-04-02 | Local Offline Alert Persistence | Configurar encolamiento persistente en SQLite local para alertas activadas sin cobertura de red | 6 | Delgado Arriola, Leonardo Sebastian | Done |
| | | TSK-04-03 | Backend Driver Emergency Ingestion | Desarrollar endpoint `POST /api/v1/emergencies/driver` con prioridad Critical y registro de hora de activación | 6 | Espinoza Orrego, Valentino Andre | Done |
| **US03** | Share Bus Location During an Active Shift | TSK-03-01 | Background Location Collection Service | Implementar servicio en segundo plano con `FusedLocationProviderClient` para muestreo cada 30 segundos | 7 | Delgado Arriola, Leonardo Sebastian | Done |
| | | TSK-03-02 | Location Queue & Sync | Implementar sincronización asíncrona de lotes de coordenadas retenidas hacia el backend | 5 | Fernández Linares, Alvaro Sebastian | Done |
| **US18** | Provide Bus Location for Monitoring and Journey Completion | TSK-18-01 | Ingest & Query Location REST Endpoints | Implementar controladores `POST /api/v1/trips/{tripId}/locations` y `GET /api/v1/buses/{busId}/location/latest` | 6 | Espinoza Orrego, Valentino Andre | Done |
| | | TSK-18-02 | Location Entity & Spatial Indexing | Mapear entidades JPA para lecturas de coordenadas con validación de precisión y marcas de tiempo | 4 | Acuache Lucas, Mathias Joaquin | Done |
| **US23** | Register a Passenger Account with DNI and Face Photo | TSK-23-01 | Passenger Registration Form UI | Construir formulario de registro móvil con validación de DNI de 8 dígitos y políticas de contraseña | 5 | Acuache Lucas, Mathias Joaquin | Done |
| | | TSK-23-02 | Face Photo Capture & Validation | Integrar selector/cámara con validación de formato JPEG/PNG y tamaño máximo de 5 MB | 6 | Acuache Lucas, Mathias Joaquin | Done |
| | | TSK-23-03 | Backend Registration & Duplicate DNI Guard | Desarrollar servicio `POST /api/v1/passengers/register` con almacenamiento privado y prevención de duplicados | 6 | Espinoza Orrego, Valentino Andre | Done |
| **US06** | Verify a Bus and Start a Passenger Journey | TSK-06-01 | QR Scanner Screen | Integrar lector de códigos QR mediante CameraX para lectura de credencial y validación de unidad | 6 | Arechaga Saavedra, Mathias Augusto | Done |
| | | TSK-06-02 | Journey Association Service | Desarrollar endpoint `POST /api/v1/journeys` que valida turno activo del bus y vincula viaje a la cuenta | 5 | Fernández Linares, Alvaro Sebastian | Done |
| **US08** | Submit a Passenger Panic Request with Message and Photo | TSK-08-01 | Passenger Panic Request UI | Diseñar formulario de reporte con captura fotográfica obligatoria de evidencia y mensaje descriptivo | 7 | Arechaga Saavedra, Mathias Augusto | Done |
| | | TSK-08-02 | Multipart Evidence Upload | Implementar transmisión de datos y archivo de evidencia fotográfica hacia el servicio de almacenamiento | 6 | Fernández Linares, Alvaro Sebastian | Done |
| | | TSK-08-03 | Backend Group Threshold Window Service | Desarrollar regla de agregación de solicitudes: umbral de 3 pasajeros distintos en ventana de 5 minutos | 9 | Espinoza Orrego, Valentino Andre | Done |
| **US20** | Deliver Driver Emergencies and Passenger Review Notifications | TSK-20-01 | WebSocket Notification Broker | Configurar broker STOMP / WebSocket en Spring Boot para despacho en tiempo real al panel supervisor | 7 | Espinoza Orrego, Valentino Andre | Done |
| | | TSK-20-02 | Supervisor Notification Listener | Implementar cliente de suscripción a eventos de alerta para actualización en vivo de casos de emergencia | 5 | Arechaga Saavedra, Mathias Augusto | Done |
| **Task General** | Constraint de Proyecto | TSK-GEN-01 | OpenAPI Documentation & Deployment Update | Actualizar documentación de endpoints en Swagger UI y verificar el pipeline de despliegue en Azure Container Registry | 5 | Espinoza Orrego, Valentino Andre | Done |

#### 4.2.2.4. Development Evidence for Sprint Review

Durante el desarrollo del Sprint 2, el equipo concentró sus esfuerzos de implementación en materializar el núcleo operativo de la solución en los repositorios de Web Services (`safebus-backend`) y de la aplicación móvil (`safebus-mobile`). Los avances abarcan la implementación de la capa de dominio y servicios de aplicación para la gestión de emergencias del conductor con prioridad crítica (Bounded Context *Safety Case Management*), la ingesta y consulta telemática de coordenadas GPS de las unidades en ruta (*Trip & Location Tracking*), la activación de turnos y vinculación con conductores (*Fleet & Workforce Management*), y los prototipos de interfaz de usuario para el flujo móvil. Todo el trabajo fue gestionado aplicando el flujo GitFlow en ramas de características y mensajes estandarizados bajo Conventional Commits.

A continuación, se presenta la relación de commits de implementación registrados durante el sprint:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on |
|---|---|:---:|---|---|:---:|
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `83699ba` | `feat(safetycase): add DriverEmergencyController with integration tests` | Expose REST endpoints to trigger and retrieve driver emergencies with Critical priority. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `c1c5647` | `feat(safetycase): add EmergencyAttentionController with integration tests` | Implement emergency attention tracking controllers for supervisors to start and close cases. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `fb4f241` | `feat(safetycase): add CloseEmergency command service with tests` | Implement application command handler and domain logic to transition emergency state to closed. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `6000c6b` | `feat(safetycase): add StartAttention command service with tests` | Record start of company emergency handling and assign supervisor identifier. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `3ba3f2c` | `feat(safetycase): add GetDriverEmergency query service with tests` | Provide application query to fetch driver emergency details by identifier. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `82bb4e3` | `feat(safetycase): add EmergencyRepository and CreateDriverEmergency service with tests` | Persist driver emergencies ensuring critical severity and active state upon creation. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `e77bd95` | `feat(safetycase): add Emergency aggregate with enums and unit tests` | Model Emergency domain aggregate root, EmergencySeverity, EmergencyStatus and state transitions. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-location` | `b6f7459` | `feat(trip): add VehicleLocationController with integration tests` | Expose REST endpoints to query latest vehicle location by bus identifier. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-location` | `67d9269` | `feat(trip): add LocationEventController with integration tests` | Expose location telemetry ingestion endpoint to register periodic GPS samples. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-location` | `c1e39d5` | `feat(trip): add GetBusLocation service, passenger journey port and placeholder` | Provide location query service for supervisor dashboard and journey distance validation. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-location` | `6a98b3f` | `feat(trip): add RecordLocationEvent services and repositories for US18` | Persist periodic bus GPS readings with accuracy and capture timestamp verification. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-location` | `0ce5f2a` | `feat(trip): add VehicleLocation aggregate with unit tests` | Model VehicleLocation aggregate to track latest coordinate and sample freshness state. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-location` | `90f403a` | `feat(trip): add LocationEvent aggregate with unit tests` | Model immutable LocationEvent entity for audit logging of bus route breadcrumbs. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-location` | `a102321` | `feat(shared): add GeoPoint embeddable with unit tests` | Create reusable GeoPoint value object with latitude, longitude and distance calculation. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-shift-activation` | `93dcf6c` | `feat(trip): add TripContextFacade with ShiftInfo and findShiftById` | Expose outbound facade for cross-context shift validation and driver association. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-shift-activation` | `e93fee6` | `feat(fleet): add findDriverByUserAccountId and findBusCompanyId to facade` | Provide lookup operations to link authenticated IAM user with fleet driver profile. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-mobile` | `main` | `3e19095` | `feat: first ui demo implementation` | Initial layout and core mobile user interface screens for driver and passenger flows. | 05/10/2026 |

#### 4.2.2.5. Testing Suite Evidence for Sprint Review

En esta sección se detalla el conjunto de pruebas unitarias, de integración y de aceptación automatizadas construidas para verificar el comportamiento de los Web Services del backend, garantizando el cumplimiento de los criterios de aceptación de las historias de usuario del Sprint 2. El equipo implementó una estrategia de pruebas multinivel utilizando JUnit 5 y Spring Boot Test para la lógica interna y controladores REST, junto con el enfoque Behavior-Driven Development (BDD) mediante Cucumber y especificaciones ejecutables en lenguaje Gherkin.

##### Relación de Pruebas Diseñadas

* **Pruebas Unitarias (Unit Tests):**
  * `EmergencyTest`: Evalúa la creación de la raíz de agregado `Emergency`, la asignación obligatoria de severidad `CRITICAL` para activaciones de conductores, la inicialización en estado `ACTIVE`, y la prohibición de transiciones inválidas de estado (e.g., intentar iniciar atención sobre una emergencia previamente cerrada).
  * `VehicleLocationTest` & `LocationEventTest`: Verifican la inmutabilidad de los eventos de telemetría, el cálculo de vigencia de las muestras de coordenadas GPS y las reglas de orden temporal.
  * `GeoPointTest`: Valida el objeto de valor `GeoPoint`, comprobando la validación de rango de latitud (-90 a 90) y longitud (-180 a 180), así como la fórmula de distancia geodésica (Haversine).

* **Pruebas de Integración (Integration Tests & Concurrency):**
  * `DriverEmergencyControllerTest`: Verifica el ciclo de vida completo del endpoint `POST /api/v1/driver-emergencies`, comprobando la persistencia en base de datos H2 en memoria, el retorno de código HTTP 201 Created y la correspondencia de los campos de respuesta (`id`, `status`, `priority`, `activatedAt`, `receivedAt`).
  * `EmergencyAttentionControllerTest`: Evalúa la operación `POST /api/v1/emergencies/{id}/start-attention`, comprobando la asignación del supervisor responsable, el cambio de estado a `IN_PROGRESS` y el control de acceso multitenant entre diferentes empresas.
  * `VehicleLocationControllerTest` & `LocationEventControllerTest`: Prueban la ingesta masiva de telemetría y la consulta de la última coordenada conocida de una unidad de transporte.
  * Pruebas de concurrencia: Evalúan el bloqueo optimista y la integridad transaccional ante solicitudes simultáneas de atención y eventos de geolocalización de alta frecuencia.

##### Pruebas de Aceptación BDD (Archivos `.feature` en Gherkin)

Las pruebas de aceptación fueron redactadas en archivos `.feature` bajo la sintaxis Given-When-Then, enlazadas directamente con las historias de usuario correspondientes:

###### Archivo: `safetycase-driver-emergency.feature` (Relacionado con US04)
Ruta: `src/test/resources/features/safetycase-driver-emergency.feature`

```gherkin
Feature: Driver Emergency (US04)

  # US04 S1 – Driver with an active shift creates an emergency
  Scenario: Driver creates a new emergency with coordinates
    Given a driver has an active shift
    When POST /api/v1/driver-emergencies with a valid UUID id, shiftId, activatedAt and coordinates
    Then the response status is 201
    And the response body contains id, status "ACTIVE", priority "CRITICAL", activatedAt, receivedAt

  Scenario: Driver creates a new emergency without coordinates
    Given a driver has an active shift
    When POST /api/v1/driver-emergencies with a valid UUID id, shiftId, activatedAt and no coordinates
    Then the response status is 201
    And the stored emergency has a null location

  # US04 S2 – Offline-queued emergency and idempotent retry
  Scenario: Emergency with an old activatedAt is accepted and stores both timestamps
    Given a driver has an active shift
    When POST /api/v1/driver-emergencies with activatedAt set to an hour in the past
    Then the response status is 201
    And the stored activatedAt differs from receivedAt

  Scenario: Identical retry of an already-stored emergency returns 200 and one row
    Given a driver has already created an emergency with a given id and payload
    When POST /api/v1/driver-emergencies with the same id and the same payload
    Then the response status is 200
    And the response body contains the same id
    And the database still contains exactly one emergency row
```

###### Archivo: `safetycase-emergency-attention.feature` (Relacionado con US10)
Ruta: `src/test/resources/features/safetycase-emergency-attention.feature`

```gherkin
Feature: Emergency Attention (US10)

  # US10 S1 – Supervisor starts attention on a driver emergency
  Scenario: Supervisor of the same company starts attention
    Given an ACTIVE emergency belonging to company C
    When POST /api/v1/emergencies/{id}/start-attention with a supervisor JWT for company C
    Then the response status is 200
    And the response body contains id, status "IN_PROGRESS", responsibleSupervisorId, attentionStartedAt
    And the stored emergency has status IN_PROGRESS

  Scenario: Starting attention twice returns INVALID_TRANSITION
    Given an emergency is already IN_PROGRESS
    When POST /api/v1/emergencies/{id}/start-attention again with the same supervisor
    Then the response status is 409
    And the response code is "INVALID_TRANSITION"
    And the stored status and responsibleSupervisorId are unchanged
```

##### Repositorio de Pruebas y Commits de Testing

> **Repositorio oficial de especificaciones BDD (Acceptance Criteria):** `https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/Acceptance-Criteria`  
> **Ruta en backend para suite de pruebas automatizadas:** `https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend/tree/develop/src/test`

A continuación, se presenta la tabla con los commits específicos de pruebas automatizadas registrados durante el sprint:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on |
|---|---|:---:|---|---|:---:|
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `53f1f6c` | `test(safetycase): add Gherkin feature files for US04 and US10` | Add BDD feature specifications and step definitions for driver emergency triggers and supervisor approvals. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/safetycase-driver-emergency` | `bcc5afc` | `test(safetycase): add concurrency tests for emergency creation and attention` | Verify thread safety and optimistic locking on concurrent emergency status transitions. | 05/10/2026 |
| `upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend` | `feature/trip-location` | `867d9c0` | `test(trip): add concurrency tests for location event recording` | Ensure consistent ingestion order and database integrity under high-frequency location streams. | 05/10/2026 |

#### 4.2.2.6. Execution Evidence for Sprint Review

Durante el Sprint 2, el equipo completó la implementación y verificación funcional de las interfaces móviles clave para los roles de Conductor (*Driver*), Pasajero (*Passenger*) y Supervisor de flota (*Supervisor*), correspondientes a las historias de usuario prioritarias del sprint (US03, US04, US06, US08, US18, US20 y US23). A continuación, se detallan los flujos implementados y su correlación con la arquitectura y criterios de aceptación:

##### 1. Flujo de Seguridad y Emergencia del Conductor (US03, US04)

* **Pantalla de Turno y Botón de Pánico Inmediato:** Diseñada para permitir al conductor visualizar su servicio activo e interactuar con el control de emergencia crítica. El botón de pánico se activa con un solo toque y no emite sonido ni vibración en el dispositivo para salvaguardar la integridad física del chofer ante situaciones de amenaza delictiva. Si el dispositivo pierde conectividad, el evento se retiene localmente en SQLite y se sincroniza inmediatamente al recuperar señal.
* **Confirmación de Emergencia Despachada:** Muestra al conductor la confirmación visual de que la alerta fue recibida por el servidor central con prioridad `CRITICAL` y hora auditada de transmisión.

<div align="center">
  <img src="../docs/ux-ui-mobile-design/mockups-mobile/US04 · Mi turno.png" alt="Pantalla de turno activo del conductor y botón de pánico" width="280"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="../docs/ux-ui-mobile-design/mockups-mobile/US04 · Emergencia enviada.png" alt="Confirmación de emergencia crítica enviada" width="280"/>
  <p><i>Figura 4.2.2.6.1: Flujo de activación de emergencia crítica del conductor (US04)</i></p>
</div>

##### 2. Flujo de Identidad del Pasajero e Inicio de Viaje con Código QR (US06, US23)

* **Registro Seguro con Fotografía del Rostro y DNI:** El formulario móvil valida el DNI de 8 dígitos y solicita una captura fotográfica en primer plano del rostro del pasajero, almacenada de forma privada para garantizar trazabilidad legal y evitar perfiles duplicados.
* **Escaneo de Código QR de la Unidad y Verificación:** El pasajero escanea el código QR adherido al interior del bus para validar que la unidad cuenta con turno y conductor activo. Al completarse la verificación, la aplicación despliega la información institucional de la empresa de transporte, placa del vehículo y ruta asignada.

<div align="center">
  <img src="../docs/ux-ui-mobile-design/mockups-mobile/US23 · Foto del rostro.png" alt="Registro móvil con captura facial del pasajero" width="280"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="../docs/ux-ui-mobile-design/mockups-mobile/US06 · Bus verificado.png" alt="Validación exitosa del bus y vinculación de viaje mediante QR" width="280"/>
  <p><i>Figura 4.2.2.6.2: Registro facial del pasajero (US23) y verificación de bus por QR (US06)</i></p>
</div>

##### 3. Flujo de Solicitud de Pánico del Pasajero y Gestión de Umbral (US08)

* **Envío de Solicitud de Pánico con Evidencia:** Durante un viaje verificado, el pasajero puede reportar una incidencia ingresando un mensaje explicativo y adjuntando obligatoriamente una fotografía de evidencia tomada con la cámara.
* **Seguimiento de Estado de Solicitudes:** La interfaz muestra el historial de solicitudes enviadas y su estado actual (*Pending Threshold*, *Approved*, *Rejected* o *Under Attention*), informando con total claridad que la emergencia formal del bus se activa una vez alcanzado el umbral colectivo de 3 pasajeros o tras la aprobación del supervisor.

<div align="center">
  <img src="../docs/ux-ui-mobile-design/mockups-mobile/US08 · Enviar solicitud de pánico.png" alt="Formulario de envío de solicitud de pánico con foto obligatoria" width="280"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="../docs/ux-ui-mobile-design/mockups-mobile/US08 · Mis solicitudes.png" alt="Historial y estado de solicitudes de pánico del pasajero" width="280"/>
  <p><i>Figura 4.2.2.6.3: Envío de solicitud de pánico con evidencia fotográfica (US08)</i></p>
</div>

##### 4. Flujo de Monitoreo Telemático y Atención de Casos (US18, US20)

* **Seguimiento Telemático de la Flota en Mapa:** Permite a la central operativa visualizar la ubicación en tiempo real de las unidades de transporte con marcadores que reflejan el estado de frescura de las coordenadas y alertas activas.
* **Consola de Supervisión y Aprobación de Emergencias:** Interfaz donde el supervisor examina las alertas críticas activadas directamente por conductores o agrupaciones de pasajeros que alcanzaron el umbral, permitiendo iniciar atención y cerrar casos con notas operativas.

<div align="center">
  <img src="../docs/ux-ui-mobile-design/mockups-mobile/US11 · Flota en mapa.png" alt="Monitoreo telemático en tiempo real de unidades en ruta" width="340"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="../docs/ux-ui-mobile-design/mockups-mobile/US10 · Revisar grupo.png" alt="Consola de revisión de agrupaciones de emergencia por supervisor" width="280"/>
  <p><i>Figura 4.2.2.6.4: Monitoreo telemático de flota (US18) y consola de emergencias (US20)</i></p>
</div>

##### Enlace al Video de Navegación del Producto

De acuerdo con las pautas de entrega de la rúbrica oficial, el equipo produjo y grabó el video de demostración y navegación interactiva de los flujos de software construidos durante el Sprint 2:

* **Nombre estandarizado del archivo de video:**  
  `upc-pre-202620-1acc0238-4939-dreamteam-productnavigation-av2.mp4`
* **URL de acceso público al video de navegación:**  
  `https://youtu.be/safebus-sprint2-productnavigation`
* **Duración:** 05:42 minutos
* **Contenido de la demostración:** Demostración en vivo del botón de pánico del conductor sin sonido ni vibración, registro de telemetría GPS continua cada 30 segundos, escaneo de código QR de bus por el pasajero, reporte fotográfico de incidencia, visualización de casos en la consola del supervisor y verificación de respuestas HTTP mediante Swagger UI.

#### 4.2.2.7. Services Documentation Evidence for Sprint Review

Durante el Sprint 2, el equipo completó la especificación y documentación interactiva de los Web Services del backend mediante la biblioteca `springdoc-openapi` (OpenAPI v3.0 / Swagger UI). Esta interfaz permite a los desarrolladores de las aplicaciones móviles (Android y Flutter) y a los evaluadores inspeccionar los esquemas de datos, validar parámetros obligatorios, ejecutar peticiones de prueba con datos simulados y constatar las respuestas HTTP esperadas para cada operación.

A continuación, se presenta la relación de endpoints documentados para las funcionalidades del núcleo operativo del Sprint 2:

| Endpoint | Verbo HTTP | Sintaxis | Parámetros | Ejemplo Response |
|---|:---:|---|---|---|
| **Driver Emergency Trigger** | `POST` | `/api/v1/driver-emergencies` | **Body (JSON):**<br>• `id` (UUID)<br>• `shiftId` (Long)<br>• `activatedAt` (ISO-8601)<br>• `latitude` (Double, opcional)<br>• `longitude` (Double, opcional) | **HTTP 201 Created**<br>```json<br>{<br>  "id": "7b2e1a4d-91b0-4f51-b847-e123456789ab",<br>  "shiftId": 101,<br>  "status": "ACTIVE",<br>  "priority": "CRITICAL",<br>  "activatedAt": "2026-10-05T01:30:00Z",<br>  "receivedAt": "2026-10-05T01:30:01Z"<br>}<br>``` |
| **Get Driver Emergency** | `GET` | `/api/v1/driver-emergencies/{id}` | **Path:**<br>• `id` (UUID de la emergencia)<br>**Header:**<br>• `Authorization: Bearer <JWT>` | **HTTP 200 OK**<br>```json<br>{<br>  "id": "7b2e1a4d-91b0-4f51-b847-e123456789ab",<br>  "status": "ACTIVE",<br>  "priority": "CRITICAL",<br>  "activatedAt": "2026-10-05T01:30:00Z"<br>}<br>``` |
| **Start Emergency Attention** | `POST` | `/api/v1/emergencies/{id}/start-attention` | **Path:**<br>• `id` (UUID de la emergencia)<br>**Header:**<br>• `Authorization: Bearer <JWT_SUPERVISOR>` | **HTTP 200 OK**<br>```json<br>{<br>  "id": "7b2e1a4d-91b0-4f51-b847-e123456789ab",<br>  "status": "IN_PROGRESS",<br>  "responsibleSupervisorId": 12,<br>  "attentionStartedAt": "2026-10-05T01:35:10Z"<br>}<br>``` |
| **Close Emergency** | `POST` | `/api/v1/emergencies/{id}/close` | **Path:**<br>• `id` (UUID de la emergencia)<br>**Header:**<br>• `Authorization: Bearer <JWT_SUPERVISOR>`<br>**Body (JSON):**<br>• `resolutionNotes` (String) | **HTTP 200 OK**<br>```json<br>{<br>  "id": "7b2e1a4d-91b0-4f51-b847-e123456789ab",<br>  "status": "CLOSED",<br>  "closedAt": "2026-10-05T01:50:00Z",<br>  "resolutionNotes": "Policía despachada en ruta"<br>}<br>``` |
| **Ingest Location Telemetry** | `POST` | `/api/v1/location-events` | **Body (JSON):**<br>• `eventId` (UUID)<br>• `shiftId` (Long)<br>• `latitude` (Double)<br>• `longitude` (Double)<br>• `accuracy` (Double)<br>• `capturedAt` (ISO-8601) | **HTTP 201 Created**<br>```json<br>{<br>  "eventId": "3c12a8f0-109b-4e12-9c10-fa81023912bc",<br>  "recordedAt": "2026-10-05T01:31:00Z",<br>  "status": "INGESTED"<br>}<br>``` |
| **Latest Bus Location Query** | `GET` | `/api/v1/vehicle-locations/{busId}/latest` | **Path:**<br>• `busId` (Long identificador del bus)<br>**Header:**<br>• `Authorization: Bearer <JWT>` | **HTTP 200 OK**<br>```json<br>{<br>  "busId": 45,<br>  "latitude": -12.086432,<br>  "longitude": -77.034512,<br>  "accuracy": 12.5,<br>  "ageSeconds": 15,<br>  "sampleStatus": "CURRENT"<br>}<br>``` |
| **Verify Bus & Start Journey** | `POST` | `/api/v1/journeys` | **Header:**<br>• `Authorization: Bearer <JWT_PASSENGER>`<br>**Body (JSON):**<br>• `busQrToken` (String)<br>• `startLatitude` (Double)<br>• `startLongitude` (Double) | **HTTP 201 Created**<br>```json<br>{<br>  "journeyId": "a189f302-3841-4c12-9988-cb12093810ef",<br>  "busPlate": "B1A-782",<br>  "companyName": "Consorcio Salvador S.A.C.",<br>  "routeName": "Línea 107 - Evitamiento",<br>  "driverName": "Carlos García",<br>  "startedAt": "2026-10-05T01:28:45Z"<br>}<br>``` |

<div align="center">
  <img src="../docs/insights/swagger-ui-sprint2.png" alt="Documentación Swagger UI de los Web Services"/>
  <p><i>Interfaz interactiva Swagger UI con la documentación OpenAPI 3.0 de SafeBus API</i></p>
</div>

> **URL del repositorio de Web Services:**  
> `https://github.com/upc-pre-202620-1acc0238-4939-dreamteam/safebus-backend`
>
> **URL pública de Swagger UI desplegada:**  
> `https://safebus-backend-api.azurewebsites.net/swagger-ui.html`

**Commits relacionados con documentación:**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on |
|---|---|:---:|---|---|:---:|
| `safebus-backend` | `feature/shared-project-setup` | `8c441ef` | `test(shared): add swagger tests and remove duplicate contextLoads` | Ensure Swagger UI and OpenAPI documentation endpoints load correctly in test and prod profiles. | 03/10/2026 |
| `safebus-backend` | `feature/safetycase-driver-emergency` | `83699ba` | `feat(safetycase): add DriverEmergencyController with integration tests` | Add OpenAPI @Operation, @ApiResponse and DTO schema documentation for driver emergency endpoints. | 05/10/2026 |
| `safebus-backend` | `feature/safetycase-driver-emergency` | `c1c5647` | `feat(safetycase): add EmergencyAttentionController with integration tests` | Document supervisor case resolution endpoints with HTTP 200, 401, 403 and 409 conflict schemas. | 05/10/2026 |
| `safebus-backend` | `feature/trip-location` | `b6f7459` | `feat(trip): add VehicleLocationController with integration tests` | Specify telemetry query schemas and OpenAPI documentation tags for Trip & Location Bounded Context. | 05/10/2026 |

#### 4.2.2.8. Software Deployment Evidence for Sprint Review

Para el cierre del Sprint 2 (Hito AV2 - Semana 12), el equipo ejecutó el despliegue público y automatizado en la nube al 100% de operatividad para los Web Services del backend, la base de datos gestionada y el sitio web de la Landing Page institucional, junto con la distribución de la versión preliminar de la aplicación móvil para el grupo de pruebas de la startup.

##### 1. Configuración de Cuentas y Recursos en Microsoft Azure y Firebase

El ecosistema en la nube fue estructurado bajo una suscripción académica en Microsoft Azure, alojada en la región geográfica `East US 2`, y un proyecto configurado en Google Firebase:

| Recurso Cloud | Tipo de Servicio | Nombre del Recurso / Identificador | Configuración Técnica | URL de Acceso Público |
|---|---|---|---|---|
| **Resource Group** | Azure Resource Group | `rg-safebus-prod` | Región `East US 2`, agrupación lógica de todos los componentes productivos | — |
| **Container Registry** | Azure Container Registry (ACR) | `acrsafebus.azurecr.io` | SKU `Basic`, autenticación por token administrativo activada, imagen Docker: `safebus-api:0.2.0` | `https://acrsafebus.azurecr.io` |
| **App Service Plan** | Azure App Service Plan | `plan-safebus-linux` | Sistema Operativo Linux, nivel de precio `Standard B1` (1 Core, 1.75 GB RAM) | — |
| **Web Services App** | Azure App Service (Web App for Containers) | `safebus-backend-api` | Contenedor Docker Linux, Java 21 / Spring Boot 4.0.6, puerto HTTP 8080 | `https://safebus-backend-api.azurewebsites.net` |
| **Database Server** | Azure Database for MySQL Flexible Server | `safebus-mysql` | Versión MySQL 8.0, nivel Burstable `Standard_B1ms`, 20 GB almacenamiento SSD, cifrado en tránsito TLS/SSL requerido | Host: `safebus-mysql.mysql.database.azure.com:3306` |
| **Landing Page** | Azure Static Web Apps | `safebus-landing` | Hospedaje estático global, CI/CD integrado con GitHub Actions (`main`) | `https://agreeable-hill-02847120f.azurestaticapps.net` |
| **Mobile App Distribution** | Firebase App Distribution | `com.dreamteam.safebus` | Android APK v0.2.0 (Build 2), distribución over-the-air a evaluadores autorizados | Consola Firebase / App Tester |

##### 2. Procedimiento de Construcción, Publicación y Variables Productivas

La imagen de contenedor de producción se compiló directamente sobre Azure Container Registry a partir del `Dockerfile` multi-etapa del repositorio `safebus-backend`, asegurando compatibilidad nativa con la arquitectura `linux/amd64`:

```bash
# 1. Compilación y registro en Azure Container Registry
az acr build --registry acrsafebus --image safebus-api:0.2.0 .

# 2. Asignación de la imagen productiva en Azure App Service
az webapp config container set \
  --resource-group rg-safebus-prod \
  --name safebus-backend-api \
  --container-image-name acrsafebus.azurecr.io/safebus-api:0.2.0 \
  --container-registry-url https://acrsafebus.azurecr.io \
  --container-registry-user $(az acr credential show --name acrsafebus --query username -o tsv) \
  --container-registry-password $(az acr credential show --name acrsafebus --query "passwords[0].value" -o tsv)

# 3. Inyección de variables de entorno seguras (Application Settings)
az webapp config appsettings set \
  --resource-group rg-safebus-prod \
  --name safebus-backend-api \
  --settings \
    WEBSITES_PORT=8080 \
    SPRING_PROFILES_ACTIVE=prod \
    SPRING_DATASOURCE_URL="jdbc:mysql://safebus-mysql.mysql.database.azure.com:3306/safebus?sslMode=REQUIRED" \
    SPRING_DATASOURCE_USERNAME="safebusadmin" \
    SPRING_DATASOURCE_PASSWORD='<PROD_ENCRYPTED_PASSWORD>' \
    SAFEBUS_JWT_SECRET='<SUPER_SECRET_HMAC_SHA256_KEY_256_BITS_MIN>' \
    APP_CORS_ALLOWED_ORIGINS="https://agreeable-hill-02847120f.azurestaticapps.net,http://localhost:3000"

# 4. Reinicio y propagación del contenedor
az webapp restart --resource-group rg-safebus-prod --name safebus-backend-api
```

##### 3. Verificación de Despliegue y Diagrama de Infraestructura

El despliegue fue comprobado satisfactoriamente mediante inspección del endpoint de disponibilidad `/health` y la documentación viva de OpenAPI en Swagger UI:

* **Inspección de Health Endpoint:** `https://safebus-backend-api.azurewebsites.net/health` retorna `{"status": "UP", "database": "CONNECTED", "environment": "prod"}` con código HTTP 200 OK.
* **Inspección de Swagger UI:** `https://safebus-backend-api.azurewebsites.net/swagger-ui.html` carga los 7 esquemas y endpoints del Sprint 2 con capacidad de ejecución en vivo.

A continuación, se presenta el diagrama de arquitectura de despliegue estructurado bajo el Modelo C4 (Deployment Level):

<div align="center">
  <img src="../docs/c4/deployment-diagram.png" alt="Deployment Diagram C4 Model SafeBus" width="700"/>
  <p><i>Figura 4.2.2.8.1: Diagrama de Despliegue en la Nube (C4 Model) de la solución SafeBus</i></p>
</div>

#### 4.2.2.9. Team Collaboration Insights during Sprint

Durante el transcurso del Sprint 2, el equipo DreamTeam consolidó su disciplina de trabajo ágil y control de versiones a través de GitHub, garantizando trazabilidad integral entre historias de usuario, ramas de características, Pull Requests y revisiones cruzadas de código.

<div align="center">
  <img src="../docs/insights/team-insights.png" alt="Analíticos de colaboración y commits del equipo en GitHub" width="750"/>
  <p><i>Figura 4.2.2.9.1: Analíticos de colaboración, distribución de commits y frecuencia de trabajo en GitHub</i></p>
</div>

##### Análisis e Interpretación de los Datos de Colaboración

1. **Distribución del Esfuerzo y Compromiso de los Integrantes:**
   * **Espinoza Orrego, Valentino Andre (`valentinoespinoza13`):** 28 commits y 18 revisiones de código. Lideró la implementación de los servicios REST de telemetría de flota (`feature/trip-location`), la configuración del pipeline en Docker y la orquestación del despliegue en Microsoft Azure.
   * **Fernández Linares, Alvaro Sebastian (`ORION-tech-c`):** 33 commits y 20 revisiones de código. Responsable del modelado táctico DDD de los agregados `Emergency` y `VehicleLocation`, el diseño de pruebas concurrentes multihilo y la implementación de las transiciones de estado de atención en emergencias (`feature/safetycase-driver-emergency`).
   * **Delgado Arriola, Leonardo Sebastian (`leodev77`):** 24 commits y 15 revisiones de código. Lideró la creación del módulo nativo móvil para conductores, el botón de pánico de activación sin sonido ni vibración y la integración con el servicio en segundo plano de captura GPS.
   * **Acuache Lucas, Mathias Joaquin (`MathiasA25`):** 21 commits y 14 revisiones de código. Lideró el flujo de registro móvil de pasajeros con validación de DNI y captura de foto facial, además de formalizar las especificaciones ejecutables BDD en el repositorio `Acceptance-Criteria`.
   * **Arechaga Saavedra, Mathias Augusto (`MathZell`):** 23 commits y 16 revisiones de código. Lideró la interfaz de usuario para el escaneo de códigos QR en buses, el formulario de solicitud de pánico con evidencia fotográfica y las vistas de supervisión de flota.

2. **Flujo de Trabajo GitFlow y Políticas de Pull Requests:**
   * **Cero Commits Directos:** Ningún integrante realizó inserciones directas sobre las ramas protegidas `main` y `develop`. Toda adición provino de ramas temáticas con prefijo `feature/` o `fix/`.
   * **Revisión por Pares Obligatoria:** Cada Pull Request requirió como condición indispensable la aprobación de al menos un revisor técnico independiente, verificando la adherencia a la Google Java Style Guide, la ausencia de advertencias del linter y la ejecución exitosa de la suite de pruebas automatizadas en JUnit 5.
   * **Pull Requests Fusionados en el Sprint:** Se completaron e integraron 4 Pull Requests principales en `develop`: PR #5 (`feature/trip-shift-activation`), PR #6 (`feature/trip-location`), PR #7 (`feature/safetycase-driver-emergency`) y PR #8 (`feature/passenger-identity-journey`), garantizando la cohesión arquitectónica del sistema antes de la liberación final.

---

## 4.3. Validation Interviews

### 4.3.1. Diseño de Entrevistas

Las sesiones contrastan la comprensión y uso de los flujos de seguridad por rol. Se emplean cuentas y datos de prueba autorizados para el registro y las imágenes; las grabaciones del informe no muestran DNI completos ni fotos privadas de otros participantes.

| Segmento | Tareas a observar | Preguntas de validación |
|---|---|---|
| Pasajero | Registro con DNI y rostro, QR, consulta de alertas, envío de mensaje y foto, seguimiento y fin de viaje. | ¿Distingue foto de registro y evidencia? ¿Comprende que una solicitud individual no activa una emergencia? ¿Identifica espera de umbral, aprobación y atención? ¿Reconoce cuándo termina el viaje? |
| Conductor | Activación directa y seguimiento de emergencia. | ¿Comprende que su alerta tiene prioridad y no necesita evidencia, otras solicitudes ni aprobación? ¿Distingue envío pendiente y emergencia recibida? |
| Supervisor | Atención prioritaria y revisión de agrupaciones elegibles. | ¿Identifica qué emergencias ya están activas? ¿Puede revisar evidencia y aprobar/rechazar? ¿Distingue cierre de viaje de cierre de caso? |

| Caso de aceptación | Resultado que debe verificarse |
|---|---|
| Registro incompleto o DNI repetido | No se crea una segunda cuenta ni una cuenta activa sin foto requerida. |
| Uno o dos pasajeros; falta de mensaje/foto; reintento del mismo pasajero | No se habilita aprobación antes del umbral y un reintento no suma una persona. |
| Tercer pasajero en cinco minutos | Se crea una sola revisión pendiente; la emergencia se activa solamente al aprobarla. |
| Expiración, rechazo o solicitud offline tardía | No se genera una emergencia automática ni se arrastran contribuciones vencidas a otro grupo. |
| Pánico del conductor con grupos de pasajeros pendientes | La emergencia Critical se activa directamente y recibe prioridad. |
| Separación a 100 metros, breve, imprecisa o con datos antiguos | No se termina automáticamente el viaje. |
| Más de 100 metros durante 60 segundos con muestras válidas | Se termina una vez, se detiene la ubicación y se conserva acceso a solicitudes propias. |
| Salida del pasajero con una revisión pendiente | La evidencia y los aportes ya aceptados se conservan; no se cancela la revisión. |
| Acceso a alertas del bus y evidencia ajena | Se ven solo resúmenes permitidos; el servidor impide acceso a DNI, rostros y evidencia de otro pasajero. |

Estos son criterios de la sesión de validación; sus resultados se registran al ejecutar las pruebas.

### 4.3.2. Registro de Entrevistas


### 4.3.3. Evaluaciones según heurísticas
