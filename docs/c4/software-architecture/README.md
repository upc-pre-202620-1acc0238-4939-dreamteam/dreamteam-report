# SafeBus — Software Architecture

`workspace.dsl` contiene un solo modelo y cuatro vistas:

| Sección | Clave en Structurizr | Imagen |
|---|---|---|
| 2.5.3.1 Context | `Context` | `context.svg` |
| 2.5.3.2 Containers | `Containers` | `containers.svg` |
| 2.5.3.3 Components | `Components` | `components.svg` |
| 2.5.3.4 Deployment | `Deployment` | `deployment.svg` |

## Uso en Structurizr

1. Abre [Structurizr Playground](https://playground.structurizr.com/).
2. Sustituye el contenido del editor por **todo** `workspace.dsl`. No necesita otros archivos ni credenciales.
3. Renderiza el modelo y selecciona cada una de las cuatro vistas por su clave.
4. Exporta cada vista como SVG o PNG. Si usas PNG, ajusta las extensiones de los enlaces de imágenes de la sección 2.5.3.
5. Conserva el DSL como fuente. Los diagramas comparten elementos y no requieren copiar cuatro modelos separados.

Las imágenes se generan con el modelo de Structurizr. Las posiciones de un nuevo render en Playground pueden variar por el motor de distribución automática.

## Fundamento de las decisiones

- **Alcance:** las 24 historias US01–US24. El usuario confirmó que la arquitectura no debe incorporar escalamiento a autoridades ni zonas de riesgo. Sus contextos candidatos no aparecen como servicios activos.
- **Sílabo:** Unidad 2, páginas 6–7: Android, Kotlin, Firebase y bibliografía de Jetpack Compose. Unidad 3, páginas 8–9: Flutter, Dart, REST, SQFLite y Drift. Se elige Drift para el almacenamiento Flutter. SQLite está embebido en los clientes; no es la base central.
- **Enunciado:** páginas 18–19 describen contexto, contenedores, componentes y despliegue; la página 33 indica Structurizr para C4, Kotlin para Android y alternativas para backend y multiplataforma. Se incluyen las cuatro vistas aunque el índice abreviado y el ejemplo no enumeren exactamente las mismas.
- **Elecciones de esta propuesta:** Spring Boot/Java, PostgreSQL, RabbitMQ, archivos privados y Nginx sobre un host Linux. Spring Boot está permitido por el enunciado; el sílabo no impone PostgreSQL, RabbitMQ ni un proveedor cloud. No se declara infraestructura ya implementada.
- **Simplicidad:** una API modular compartida, con cinco responsabilidades de dominio y dos componentes de soporte. Los Bounded Contexts no se convierten automáticamente en microservicios.
- **Reglas preservadas:** emergencia directa Critical del conductor; solicitudes con mensaje y foto, tres pasajeros en cinco minutos y aprobación antes de emergencia High; fin del viaje a más de 100 metros durante 60 segundos; aforo empresarial; ubicación continua del pasajero únicamente en el dispositivo.
- **Fuente de conteo:** integración externa según US19 y US22. No se inventan un microcontrolador, firmware o protocolo MQTT obligatorio.
- **Fotos:** volumen persistente privado accesible por la API; foto del rostro y evidencia del incidente mantienen finalidades y permisos diferentes.
- **Eventos:** el broker sirve para integración interna. WSS informa a supervisores conectados; REST permite recuperar el estado. No se promete recepción de notificaciones con la aplicación cerrada.
- **Despliegue:** las flechas cliente–API representan comunicación lógica a través de la entrada Nginx; no autorizan acceso directo a los servicios privados. El piloto no incluye alta disponibilidad.

## Relación con el documento integrado

La edición se limita a 2.5.3. Se conserva el contenido aportado por otros integrantes. En otras secciones del documento sincronizado aún existen diferencias con US01–US24: consulta de aforo por pasajeros en 2.5.1, escalamiento externo/zonas de riesgo en 2.5–2.6, y un resumen de tres contextos junto a siete subsecciones en 2.6. Además, algunas listas de clases de User Management y Alert Management conservan contenido anterior bajo títulos de Fleet y Trip. Estas diferencias no se trasladan al nuevo modelo y no se afirma que todo el DDD del informe haya quedado corregido.

## Referencias técnicas

- [Structurizr DSL: referencia del lenguaje](https://docs.structurizr.com/dsl/language).
- [Vista de componentes](https://docs.structurizr.com/dsl/cookbook/component-view/).
- [Vista de despliegue](https://docs.structurizr.com/dsl/cookbook/deployment-view/).
- [Validación de un workspace](https://docs.structurizr.com/cli/validate).
- [Exportación de imágenes](https://docs.structurizr.com/export/png-and-svg).
