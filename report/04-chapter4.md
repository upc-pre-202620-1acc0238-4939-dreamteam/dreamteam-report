[← Volver al índice](00-chapter0.md#contenido)

# Capítulo IV: Product Implementation & Validation

## 4.1. Software Configuration Management

### 4.1.1. Software Development Environment Configuration

| Producto de software | Propósito | Ruta (SaaS) / Descarga |
|------------------------|-----------|---------------------------|
| | | |

### 4.1.2. Source Code Management

| Producto | URL del repositorio |
|----------|-----------------------|
| Landing Page | |
| Web Services | |
| Frontend Web / Mobile Application | |

**GitFlow:** ver [docs/git-conventions.md](../docs/git-conventions.md)

**Conventional Commits:** ver [docs/git-conventions.md](../docs/git-conventions.md)

**Semantic Versioning:** ver [docs/git-conventions.md](../docs/git-conventions.md)

### 4.1.3. Source Code Style Guide & Conventions

[Referencias adoptadas por lenguaje: HTML/CSS, JavaScript/TypeScript, Java, C#,
Kotlin, Swift, Gherkin — nomenclatura en inglés]

### 4.1.4. Software Deployment Configuration

[Pasos de despliegue por producto + Deployment Diagram C4 Model]

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
