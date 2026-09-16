[← Volver al índice](00-chapter0.md#contenido)

# Capítulo III: Solution UI/UX Design

## 3.1. Product design

### 3.1.1. Style Guidelines

#### 3.1.1.1. General Style Guidelines

[Branding, Typography, Colors, Spacing, tono de comunicación
(Divertido/Serio, Formal/Casual, Respetuoso/Irreverente, Entusiasta/Sereno)]

### 3.1.2. Information Architecture

#### 3.1.2.1. Organization Systems

La navegación se organiza por rol y por estado del viaje o emergencia.

| Rol | Recorrido principal |
|---|---|
| Pasajero | Registro con DNI, foto de rostro y contraseña → acceso → QR e inicio de viaje → alertas del bus / solicitud con mensaje y foto / mis solicitudes → cierre automático o manual. |
| Conductor | Acceso → asignación y validación QR → turno activo → botón de emergencia inmediata → estado de la emergencia → cierre de turno. |
| Supervisor | Acceso → flota con ubicación y aforo → emergencias del conductor / revisión de grupos de pasajeros → aprobar o rechazar → atención y cierre. |

#### 3.1.2.2. Labelling Systems

Las etiquetas distinguen la acción y su efecto: **Emergency** para la activación inmediata del conductor y **Send panic request** para el envío con evidencia del pasajero. La consulta del pasajero se denomina **Bus alerts** y el seguimiento privado **My requests**. El registro solicita **DNI**, **Face photo** y **Password**; la evidencia de US08 usa **Incident message** e **Incident photo**.

Los estados visibles separan Pending transmission, Collecting requests, Awaiting company approval, Expired, Late y Not approved de una emergencia Active, In progress o Closed. Los textos cuentan con sus equivalentes en español; el inglés es el idioma inicial.

#### 3.1.2.3. SEO Tags and Meta Tags

**Landing Page / Web Application**

| Página | Title | Description | Keywords | Author |
|--------|-------|--------------|----------|--------|
| | | | | |

**Mobile App (ASO)**

| App Title | App Keywords | App Subtitle | App Description |
|-----------|----------------|----------------|--------------------|
| | | | |

#### 3.1.2.4. Searching Systems

La consulta Bus alerts se limita al bus y turno del viaje activo. My requests permite consultar registros propios incluso después de terminar el viaje. La empresa filtra su flota y distingue emergencias del conductor, emergencias de pasajeros aprobadas y agrupaciones pendientes de revisión.

#### 3.1.2.5. Navigation Systems

El pasajero recibe confirmación del cierre automático y conserva acceso a My requests. La falta de permisos, GPS o precisión informa que la finalización automática está indisponible y mantiene End journey como alternativa. El mensaje y la foto son obligatorios para enviar solicitudes de pasajeros; el botón del conductor activa su emergencia sin ese formulario. Las notificaciones se ajustan al rol y no revelan fotos o DNI de otros pasajeros.

---

## 3.1.3. Landing Page UI Design

### 3.1.3.1. Landing Page Wireframe

[Wireframes Desktop y Mobile Web Browser — Figma]

### 3.1.3.2. Landing Page Mock-up

[Mock-ups Desktop y Mobile Web Browser]

---

## 3.1.4. Mobile Applications UX/UI Design

### 3.1.4.1. Mobile Applications Wireframes

Los wireframes deben representar los siguientes flujos y estados del alcance, con las mismas funciones en las implementaciones móviles nativa y cross-platform.

| Flujo | Elementos y estados | Historias |
|---|---|---|
| Registro y acceso del pasajero | DNI, captura de rostro, contraseña, aceptación del uso de datos, errores de formato/duplicado y acceso. | US23, US16 |
| Inicio de viaje | QR, datos de unidad, viaje activo y permiso de ubicación con alternativa manual. | US06 |
| Alertas del bus | Lista de resúmenes por bus y turno, origen, fecha, conteo y estado; sin DNI, fotos ni mensajes de terceros. | US07 |
| Solicitud con evidencia | Mensaje, foto del incidente, validación y estados de envío, umbral, aprobación y atención. | US08, US09 |
| Emergencia del conductor | Activación inmediata, prioridad máxima, envío sin conexión y seguimiento. | US04 |
| Revisión de la empresa | Evidencia autorizada, umbral alcanzado, aprobar/rechazar y resultado de atención. | US10, US11 |
| Fin de viaje | Detección de alejamiento, cierre confirmado, falta de precisión o permisos y opción manual. | US24 |

### 3.1.4.2. Mobile Applications Wireflow Diagrams

Un Wireflow por cada User Goal.

**User Goal:** [completar]

[Diagrama + explicación del flujo]

### 3.1.4.3. Mobile Applications Mock-ups

[Mock-ups de la aplicación]

### 3.1.4.4. Mobile Applications User Flow Diagrams

Un User Flow por cada User Goal (happy path + unhappy paths).

**User Goal:** [completar]

[Diagrama + explicación]

### 3.1.4.5. Mobile Applications Prototyping

[Prototipos con simulación de interacción — 1 screenshot + enlace a video de Microsoft
Stream por aplicación]
