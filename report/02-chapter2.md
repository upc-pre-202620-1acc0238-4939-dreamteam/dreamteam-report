[← Volver al índice](00-chapter0.md#contenido)

# Capítulo II: Requirements Development and Software Solution Design

## 2.1. Competidores

### 2.1.1. Análisis competitivo

Identificación de mínimo 3 competidores directos (o indirectos si no aplica).

#### Competitive analysis landscape

|                          | Su startup | Competidor 1 | Competidor 2 | Competidor 3 |
|--------------------------|------------|---------------|---------------|---------------|
| Overview                 |            |               |               |               |
| Ventaja competitiva      |            |               |               |               |
| Mercado objetivo         |            |               |               |               |
| Estrategias de marketing |            |               |               |               |
| Productos & Servicios    |            |               |               |               |
| Precios & Costos         |            |               |               |               |
| Canales de distribución  |            |               |               |               |

#### Análisis SWOT

| | Fortalezas | Debilidades | Oportunidades | Amenazas |
|---|---|---|---|---|
| Su startup | | | | |
| Competidor 1 | | | | |

### 2.1.2. Estrategias y tácticas frente a competidores

[Estrategias y tácticas]

---

## 2.2. Entrevistas

### 2.2.1. Diseño de entrevistas

[Preguntas principales y complementarias por segmento]

### 2.2.2. Registro de entrevistas

Video consolidado: `upc-pre-<periodo>-1acc0238-<NRC>-<startup>-needfinding-<avn/tbn>.mp4`

| # | Nombres y apellidos | Edad | Distrito | Timing en video | Screenshot |
|---|----------------------|------|----------|------------------|------------|
| 1 | | | | | |

**Resumen entrevista 1:** [descriptivo]

### 2.2.3. Análisis de entrevistas

[Análisis con sustento estadístico por segmento]

---

## 2.3. Needfinding

Para identificar las necesidades de nuestros usuarios, es importante interactuar con ellos y recopilar información valiosa de las entrevistas previamente realizadas.

#### 2.3.1 User Personas

Con el User Persona, buscamos representar imaginariamente a un usuario actual ideal.

**Segmento #1: Conductores (operarios) de transporte público**

<img src="../assets/Segmento1Persona.png">

**Segmento #2: Empresas o consorcios de transporte público**

<img src="../assets/Segmento2Persona.png">

---

### 2.3.2. User Task Matrix

| Task | [User Persona 1] Frecuencia | [User Persona 1] Importancia | [User Persona 2] Frecuencia | [User Persona 2] Importancia |
|------|---|---|---|---|
| | | | | |

### 2.3.3. User Journey Mapping

[Journey Maps As-Is por User Persona]

### 2.3.4. Empathy Mapping

[Empathy Maps por User Persona]

### 2.3.5. Big Picture EventStorming

[Capturas y explicación del proceso — guía: https://bit.ly/bpes-guide]

### 2.3.6. Ubiquitous Language

| Term (English) | Término (Español) | Definición |
|-----------------|--------------------|------------|
| | | |

---

## 2.4. Requirements specification

### 2.4.1. User Stories

#### Epics

- [Epic 1]

#### User Stories

| Story ID | User | Priority | Epic |
|----------|------|----------|------|
| **Title** | | | |
| **Description** | | | |
| **Acceptance Criteria** | Given... When... Then... | | |

#### Technical Stories

[Redactadas con rol "Developer", AC en formato Gherkin]

#### Spike Stories

[Ver Anexo D del enunciado como referencia de estructura]

### 2.4.2. Impact Mapping

[Business Goals SMART, Actors/Personas, Impacts, Deliverables, User Stories]

### 2.4.3. Product Backlog

> URL público del Product Backlog: [completar]

| # Orden | User Story Id | Título | Story Points | Sprint |
|---------|----------------|--------|----------------|--------|
| 1 | US01 | | | |

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
