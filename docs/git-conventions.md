# Convenciones de Control de Versiones

## GitFlow

- `main` — rama principal, siempre desplegable/exportable.
- `develop` — rama de integración de features.
- `feature/<nombre-corto>` — una rama por feature, creada desde `develop`.
- `release/<version>` — preparación de una entrega (AV1, TB1, AV2, TB2).
- `hotfix/<nombre-corto>` — correcciones urgentes sobre `main`.

Ejemplo de nombres de feature branch: `feature/chapter2-ddd-strategic`,
`feature/chapter4-sprint1-evidence`.

## Conventional Commits

Formato: `<tipo>(<alcance opcional>): <descripción en minúsculas>`

Tipos usados en este repo:

| Tipo       | Uso                                                              |
|------------|-------------------------------------------------------------------|
| `feat`     | Nueva sección o contenido sustantivo del informe                 |
| `fix`      | Corrección de contenido existente                                 |
| `docs`     | Cambios en README u otra documentación de apoyo                   |
| `style`    | Formato, tipografía, maquetado (sin cambio de contenido)          |
| `refactor` | Reorganización de secciones sin cambiar el contenido              |
| `chore`    | Tareas de mantenimiento del repo (estructura, gitignore, etc.)    |

Ejemplos:

```
feat(chapter1): agregar Lean UX Canvas y Problem Statement
feat(chapter2): agregar Bounded Context Canvases
fix(chapter0): corregir tabla de registro de versiones
chore: estructura inicial del repositorio
```

## Semantic Versioning

Los releases del informe se etiquetan como `vX.Y.Z` alineados a cada entrega:

- `v1.0.0` → AV1
- `v2.0.0` → TB1
- `v3.0.0` → AV2
- `v4.0.0` → TB2

## Reglas del equipo

- Todos los integrantes deben tener participación evidenciada mediante commits (ver
  sección *Project Report Collaboration Insights* en cada capítulo correspondiente).
- No se hace commit directo a `main`; se integra vía Pull Request desde `develop` o
  `release/*`.
