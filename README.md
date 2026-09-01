# [Nombre del Producto] — Informe de Trabajo Final

**Startup:** [Nombre de la Startup]
**Curso:** 1ACC0238 Aplicaciones para Dispositivos Móviles
**NRC:** [NRC]
**Periodo académico:** 202620

Este repositorio contiene el Informe de Trabajo Final elaborado de forma colaborativa
durante el ciclo de vida del proyecto, siguiendo GitFlow y Conventional Commits.

## Contenido del informe

- [Capítulo 0 — Portada, Registro de Versiones, Student Outcome, Objetivos SMART](report/00-chapter0.md)
- [Capítulo I — Presentación](report/01-chapter1.md)
- [Capítulo II — Requirements Development and Software Solution Design](report/02-chapter2.md)
- [Capítulo III — Solution UI/UX Design](report/03-chapter3.md)
- [Capítulo IV — Product Implementation & Validation](report/04-chapter4.md)
- [Capítulo V — Conclusiones, Videos, Glosario, Bibliografía y Anexos](report/05-chapter5.md)

## Estructura del repositorio

```
.
├── docs/
│   ├── c4/                        # Context & Container diagrams (C4 Model, nivel solución)
│   ├── c4-backend/                # Component & Code diagrams por Bounded Context (backend)
│   ├── c4-frontend/                # Component & Code diagrams (frontend / mobile)
│   ├── class-diagrams-backend/    # Diagramas UML de clases (Domain Layer) por BC
│   ├── class-diagrams-frontend/   # Diagramas de clases del lado cliente, si aplica
│   └── database/                  # Database diagrams por producto
└── report/
    ├── 00-chapter0.md
    ├── 01-chapter1.md
    ├── 02-chapter2.md
    ├── 03-chapter3.md
    ├── 04-chapter4.md
    └── 05-chapter5.md
```

## Convenciones de control de versiones

Ver [docs/git-conventions.md](docs/git-conventions.md) para el detalle de GitFlow,
Conventional Commits y Semantic Versioning aplicados en este repositorio.

## Exportación a PDF

Para cada entrega (AV1, TB1, AV2, TB2) se genera la exportación en PDF a partir de este
repositorio, siguiendo la nomenclatura:
`upc-pre-<periodo>-1acc0238-<NRC>-<startup>-report-<avn/tbn>.pdf`
