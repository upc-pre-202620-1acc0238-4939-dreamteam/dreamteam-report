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
