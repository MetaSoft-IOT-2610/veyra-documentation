## Conclusiones

### Conclusiones y recomendaciones

#### Conclusiones

**Sobre la problemática y el mercado**

El proyecto confirmó que el problema planteado desde el inicio es real. Las entrevistas de needfinding mostraron que los administradores siguen trabajando con papel y Excel, y que las familias solo se enteran de lo que pasa con su familiar cuando alguien les llama. Esa brecha de información genera desconfianza y ansiedad, y es exactamente lo que Veyra busca resolver.

La mayoría de los supuestos Lean UX se validaron: los administradores necesitan una solución simple que no complique el día a día, y los familiares quieren notificaciones inmediatas desde el celular. También se confirmó el riesgo de resistencia al cambio en perfiles con más años en el sector, por lo que la adopción debe ser gradual y acompañada de capacitación y soporte.

De las cuatro hipótesis planteadas, la de alertas y notificaciones fue la más respaldada por ambos segmentos. El portal familiar y la centralización de información también tuvieron buena recepción, lo que orientó la priorización del Product Backlog y de los tres sprints de implementación.

**Sobre la solución desarrollada**

A lo largo del ciclo académico, el equipo Metasoft evolucionó Veyra desde la investigación y el diseño estratégico (DDD, C4 Model, UI/UX) hasta un ecosistema digital desplegado en producción. La plataforma integra landing page, aplicación web, aplicación móvil, backend modular, Edge API, firmware embebido en dispositivos IoT y servicios de notificación en tiempo real.

La arquitectura por bounded contexts (Nursing, Health, Tracking, Communication, IAM, Profiles, Subscriptions & Payments, Analytics, entre otros) permitió escalar el desarrollo en paralelo entre siete integrantes, mantener responsabilidades claras y desplegar componentes de forma independiente en Cloudflare Pages, Azure y Firebase App Distribution.

**Sobre la implementación y el despliegue**

Los tres sprints cubrieron de forma incremental el núcleo operativo del producto: gestión de residentes y personal en el Sprint 1; integración backend, Edge API, embedded application y segunda versión del frontend en el Sprint 2; y telemetría end-to-end, alertas clínicas, aplicación móvil, notificaciones push y suscripciones en el Sprint 3.

El uso de GitFlow, convenciones de código, pruebas automatizadas (Selenium, JUnit, pruebas de dominio) y pipelines de despliegue contribuyó a mantener calidad y trazabilidad durante la integración de múltiples capas (web, móvil, cloud e IoT).

**Sobre la validación con usuarios**

Las entrevistas de validación del Capítulo VI, junto con las evaluaciones heurísticas de Nielsen, confirmaron que el prototipo es usable y alineado con las expectativas de administradores y familiares. Los administradores entrevistados calificaron la probabilidad de recomendar Veyra entre 8 y 9 sobre 10, destacando el diseño visual, el orden de la información y el potencial del sistema para el sector.

Los familiares valoraron el acceso remoto al estado del residente, aunque expresaron preocupaciones legítimas sobre la puntualidad del registro operativo, la precisión de los signos vitales y la necesidad de alertas inmediatas ante valores fuera de rango. Estas observaciones no invalidan la propuesta, sino que definen con claridad el camino de mejora hacia una versión lista para operación diaria.

**Sobre el trabajo en equipo**

El desarrollo del informe y del producto demostró liderazgo distribuido, planificación por sprints y colaboración sostenida entre especialidades (arquitectura, backend, frontend, IoT, UX y calidad). Cada integrante asumió la responsabilidad de un componente crítico del ecosistema, lo que permitió cumplir las entregas AV1, TB1, AV2 y TB2 con un producto coherente y documentación alineada con la implementación real.

#### Recomendaciones

**Producto y adopción**

1. Priorizar el módulo de alertas y el portal familiar como punto de entrada comercial, ya que concentran el valor percibido por ambos segmentos.
2. Implementar un flujo de confirmación o doble verificación en tareas críticas (por ejemplo, administración de medicamentos), para reducir falsas alarmas y aumentar la confianza operativa.
3. Incorporar trazabilidad clínica más rigurosa en el historial del residente (prescriptor, modificaciones de tratamiento y registro auditable), según lo solicitado en las entrevistas de validación.
4. Diseñar un plan de adopción gradual para residencias con baja madurez digital: capacitación, migración asistida desde Excel o papel y soporte en los primeros 90 días.

**Tecnología y evolución del sistema**

5. Consolidar la telemetría IoT con calibración periódica de sensores y validación de umbrales por residente, reforzando la precisión de las alertas clínicas.
6. Ampliar la cobertura de pruebas de integración entre capas (dispositivo → Edge → backend → web/móvil) para reducir regresiones en despliegues continuos.
7. Evaluar la incorporación de analítica avanzada y reportes exportables para administradores, aprovechando el bounded context Analytics ya modelado.
8. Mantener la documentación de arquitectura (C4, context mapping) sincronizada con el código en cada release, dado que el dominio evolucionó respecto al diseño inicial de EventStorming.

**Negocio y escalamiento**

9. Explorar un modelo freemium o por planes (Family Plan y Nursing Home Plan) como puerta de entrada al mercado latinoamericano, coherente con la landing page y el módulo de suscripciones con Stripe.
10. Realizar un piloto controlado en una residencia real durante al menos un trimestre, midiendo adopción del personal, reducción de llamadas de familiares y tiempo de respuesta ante alertas.

**Investigación y validación continua**

11. Repetir entrevistas de validación tras cada release mayor, incorporando métricas cuantitativas (SUS, tasa de finalización de tareas y tiempo de respuesta percibido).
12. Extender la validación a enfermeras y médicos de turno, segmento aún poco representado en las entrevistas finales pero clave para la operación diaria del sistema.

En conjunto, Veyra demuestra que es viable digitalizar la gestión geriátrica con un enfoque IoT integrado, centrado en la comunicación oportuna entre institución y familia. Las conclusiones del needfinding se mantienen vigentes; la implementación y la validación confirman que la propuesta tiene aceptación en el mercado objetivo, siempre que el equipo priorice confiabilidad operativa, trazabilidad clínica y una adopción acompañada en las residencias.
