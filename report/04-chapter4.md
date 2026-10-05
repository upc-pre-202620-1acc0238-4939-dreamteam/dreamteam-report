[← Volver al índice](00-chapter0.md#contenido)

# Capítulo IV: Product Implementation & Validation

### 4.1. Software Configuration Management

Esta sección establece las decisiones y convenciones que mantienen la consistencia durante el ciclo de vida de los productos: las herramientas de trabajo del equipo, la organización del código fuente, las guías de estilo y la configuración de despliegue.

#### 4.1.1. Software Development Environment Configuration

| Actividad | Producto | Propósito en el proyecto | Ruta de referencia |
|---|---|---|---|
| Gestión de proyecto | [completar: Trello / Jira / YouTrack] | Product Backlog y tablero de Sprint | [URL] |
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
| Landing Page | [URL del repositorio] |
| Web Services (backend) | [URL del repositorio] |
| Aplicación móvil | [URL del repositorio] |

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
|----------|----------|
| **Date** | |
| **Time** | |
| **Location** | |
| **Prepared By** | |
| **Attendees** | |
| **Sprint n-1 Review Summary** | N/A (primer sprint) |
| **Sprint n-1 Retrospective Summary** | N/A (primer sprint) |
| **Sprint Goal** | Our focus is on... We believe it delivers... to... This will be confirmed when... |
| **Sprint Velocity** | |
| **Sum of Story Points** | |

#### 4.2.1.2. Aspect Leaders and Collaborators

| Team Member (Apellidos, Nombres) | GitHub Username | [Aspecto 1] | [Aspecto 2] |
|-------------------------------------|--------------------|----------------|----------------|
| | | | |

#### 4.2.1.3. Sprint Backlog 1

> URL público del Board: [completar]

| Sprint | US Id | US Title | Work-Item Id | Task Title | Description | Estimation (h) | Assigned To | Status |
|--------|-------|----------|----------------|-------------|--------------|------------------|---------------|--------|
| 1 | | | | | | | | |

#### 4.2.1.4. Development Evidence for Sprint Review

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on |
|------------|--------|-----------|-------------------|------------------------|-----------------|
| | | | | | |

#### 4.2.1.5. Testing Suite Evidence for Sprint Review

[Unit / Integration / Acceptance tests — archivos .feature en Gherkin]

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on |
|------------|--------|-----------|-------------------|------------------------|-----------------|
| | | | | | |

#### 4.2.1.6. Execution Evidence for Sprint Review

[Resumen + screenshots de vistas implementadas + video de navegación]

#### 4.2.1.7. Services Documentation Evidence for Sprint Review

| Endpoint | Verbo HTTP | Sintaxis | Parámetros | Ejemplo Response |
|----------|-------------|----------|--------------|----------------------|
| | | | | |

URL del repositorio de Web Services: [completar]
Commits relacionados con documentación: [completar]

#### 4.2.1.8. Software Deployment Evidence for Sprint Review

[Cuentas, configuración de recursos cloud, capturas del proceso]

#### 4.2.1.9. Team Collaboration Insights during Sprint

[Capturas de analíticos de colaboración/commits de GitHub + interpretación]

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

[Resumen + screenshots de vistas implementadas + video de navegación]

#### 4.2.2.7. Services Documentation Evidence for Sprint Review

| Endpoint | Verbo HTTP | Sintaxis | Parámetros | Ejemplo Response |
|----------|-------------|----------|--------------|----------------------|
| | | | | |

URL del repositorio de Web Services: [completar]
Commits relacionados con documentación: [completar]

#### 4.2.2.8. Software Deployment Evidence for Sprint Review

[Cuentas, configuración de recursos cloud, capturas del proceso]

#### 4.2.2.9. Team Collaboration Insights during Sprint

[Capturas de analíticos de colaboración/commits de GitHub + interpretación]

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

Video consolidado: `upc-pre-<periodo>-1acc0238-<NRC>-<startup>-validation-<avn/tbn>.mp4`

| # | Nombres y apellidos | Edad | Distrito | Timing | Duración | Screenshot |
|---|----------------------|------|----------|--------|----------|------------|
| 1 | | | | | | |

**Resumen entrevista 1:** [descriptivo]

### 4.3.3. Evaluaciones según heurísticas

[Aplicar el formato del Anexo E del enunciado — ver 05-chapter5.md]
