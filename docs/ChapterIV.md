# Capítulo IV: Solution Software Design

Este capítulo describe el diseño de la solución de software para la plataforma Veyra, abordando tanto el nivel estratégico como el nivel táctico del diseño orientado al dominio (DDD). Se presentan las decisiones de arquitectura, la organización de los contextos delimitados y los modelos que guían la implementación de un sistema de monitoreo de signos vitales en tiempo real —frecuencia cardíaca, temperatura corporal, saturación de oxígeno y presión arterial— orientado a casas de reposo para adultos mayores. 

## 4.1. Strategic-Level Domain-Driven Design

El diseño estratégico establece los límites y responsabilidades de cada área del sistema a partir del lenguaje del negocio. En el contexto de Veyra, esto implica delimitar áreas funcionales como la captura y transmisión de datos desde dispositivos IoT, el monitoreo de signos vitales y la gestión de alertas clínicas, la administración de residentes y personal, el control de acceso de usuarios, y la gestión de suscripciones institucionales. En esta sección se identifican los contextos delimitados, se modela el flujo de mensajes entre ellos y se define cómo se relacionan entre sí, sentando las bases para una arquitectura modular, mantenible y alineada con las necesidades reales de la plataforma.

### 4.1.1. Design-Level EventStorming

El EventStorming es una técnica colaborativa de modelado de dominio que permite comprender de manera integral los procesos, eventos relevantes, actores involucrados y relaciones existentes dentro de un sistema. En el caso de la plataforma Veyra, esta técnica permitió explorar el funcionamiento del dominio del cuidado geriátrico y la gestión de casas de reposo, identificando situaciones clave como la admisión de residentes, el monitoreo de signos vitales, la administración de medicamentos, la asignación de personal, la interacción con familiares y la gestión de suscripciones. Para desarrollar este proceso, el equipo realizó sesiones colaborativas utilizando la herramienta Miro, lo que facilitó la visualización de eventos, flujos, dependencias y puntos críticos del sistema.

Paso 1: Brainstorming (Unstructured Exploration)

El primer paso consistió en realizar una exploración sin estructura para identificar todos los posibles eventos del dominio. Durante esta etapa, el equipo analizó criterios como la frecuencia y relevancia de eventos, identificando una variedad de situaciones que los diferentes actores del sistema pueden experimentar, tales como "Resident Admitted", "Vital Signs Taken", "Medication Administered", "Visit Authorized", "Care Plan Created", "Shift Started", "User Signed In", "Subscription Purchased", "Admission Request Received" y "Role Assigned", entre otros. Esta exploración libre permitió capturar el dominio en su totalidad sin restricciones previas.

![Step 1 - Brainstorming](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/design-level-event-storming-step-1.png)


Paso 2: Timelines

Posteriormente, organizamos los eventos en líneas de tiempo para visualizar el flujo de interacciones y secuencias entre eventos. Se identificaron los siguientes flujos principales:

- **IAM Flow:** gestión de identidad, roles, sign in y sign up de usuarios.
- **Profiles Flow:** creación y gestión de perfiles de persona y negocio.
- **Subscription Flow:** selección, contratación y cancelación de planes de suscripción.
- **Pre-admission and Application Flow:** solicitud de admisión, verificación de documentos y emisión de cotización.
- **Resident Registration and Formal Admission Flow:** registro formal del residente, admisión, facturación y asignación de habitación.
- **Initial Clinical Assessment Flow:** evaluación médica inicial del residente.
- **Care and Treatment Plan Flow:** creación y gestión del plan de cuidado.
- **Staff Allocation and Operation Flow:** contratación, asignación y gestión de turnos del personal.
- **Medication Management Workflow:** gestión del ciclo completo de medicamentos.
- **Resident's Daily Care Flow:** registro de actividades diarias de cuidado.
- **Continuous Monitoring Flow:** monitoreo continuo de signos vitales.
- **Interaction Flow with Family Members:** gestión de visitas de familiares.

Esta organización temporal facilitó la comprensión de dependencias y secuencias críticas entre eventos, permitiendo un diseño más coherente del sistema.

![Step 2 - Timelines](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/design-level-event-storming-step-2.png)


Paso 3: Commands

En este paso definimos los comandos que los diferentes actores pueden ejecutar en el sistema. Los comandos representan las intenciones o acciones que desencadenan eventos en el dominio.

| Actor | Comandos |
|-------|----------|
| **Admin** | Assign Roles, Sign In, Sign Up, Create Person Profile, Create Business Profile, Update Person Profile, Change Password, Disable Person Profile, Hire Staff Member, Verify Credentials, Assign Nurse, Assign Care Task, Assign Replacement, Approve Admission, Reject Admission, Waitlist Admission, Cancel Admission, Submit Admission Request, Register Personal Information, Assign Relative, Assign Room, Admit Resident |
| **Doctor** | Create Care Plan, Evaluate Care Plan, Record Diagnosis, Adjust Dosage, Prescribe Medication, Create Medical History |
| **Healthcare Staff** | Take Vital Signs, Record Vital Signs, Administer Medication, Start Shift, Report Absence, Log Meal, Log Bath, Log Hygiene Care, Complete Care Task, End Shift, Log Observation |
| **Relative** | Submit Resident Documents, Schedule Visit, Process Payment |

![Step 3 - Commands](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/design-level-event-storming-step-3.png)


Paso 4: Policies and Actors

En este paso identificamos las políticas de negocio (reglas WHEN/THEN) y los actores responsables de cada flujo. Las políticas representan las reglas automáticas que el sistema ejecuta en respuesta a ciertos eventos.

Las políticas identificadas fueron:

- **WHEN** admin signs in for the first time **THEN** register nursing home.
- **WHEN** admin deactivates a person profile **THEN** it shows as inactive in the platform.
- **WHEN** relative wants to pay **THEN** generate payment order.
- **WHEN** abnormal vital signs are detected **THEN** trigger critical notification.
- **WHEN** medication stock is ending soon **THEN** send a notification to the resident's relative.
- **WHEN** medication is used **THEN** subtract automatically from the inventory.
- **WHEN** fall prevention is provided **THEN** check if resident's mobility risk is high.
- **WHEN** hydration is recorded **THEN** check if daily minimum threshold is met.
- **WHEN** visit status changes (Authorized/Denied) **THEN** notify the relative.
- **WHEN** one relative can have more than one resident in the nursing home **THEN** link accordingly.

Estas políticas permiten automatizar procesos críticos del sistema, reduciendo la intervención manual y asegurando respuestas oportunas ante situaciones de riesgo.

![Step 4 - Policies and Actors](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/design-level-event-storming-step-4.png)

#### 4.1.1.1. Candidate Context Discovery

Una vez identificados los eventos, flujos, comandos y políticas del dominio, se procedió al descubrimiento de contextos candidatos. Esta etapa permitió agrupar elementos relacionados según su cohesión funcional y sus reglas de negocio compartidas, facilitando la identificación de futuros Bounded Contexts. El análisis se centró en reconocer eventos pivote, dependencias funcionales y agrupaciones naturales dentro del sistema, permitiendo delimitar áreas específicas como gestión de identidad, perfiles, suscripciones, admisión, evaluación clínica, monitoreo de salud, gestión de medicamentos y visitas. De esta manera, el equipo logró estructurar el dominio de Veyra en contextos con responsabilidades claramente diferenciadas.

Paso 5: Read Models

Los Read Models representan las vistas de consulta que los actores utilizan para tomar decisiones dentro del sistema. Fueron identificadas las siguientes vistas:

- **Subscription Plans:** permite al usuario consultar los planes de suscripción disponibles antes de seleccionar uno.
- **Profile Settings:** permite al Admin consultar y gestionar la configuración del perfil.
- **Registration Form for Residents:** permite al Admin consultar el formulario de registro de residentes durante el proceso de admisión.
- **Care Plan View:** permite al Doctor consultar el estado actual del plan de cuidado del residente.
- **Resident Status View:** permite al Healthcare Staff consultar el estado general del residente antes de iniciar las actividades diarias.
- **Health Monitoring View:** permite al Healthcare Staff visualizar el historial de signos vitales del residente.
- **Tasks Assigned View:** permite al Healthcare Staff consultar las tareas asignadas para su turno.
- **Visit Schedule View:** permite al Admin consultar la agenda de visitas programadas.
- **Medication Inventory:** permite al Healthcare Staff consultar el stock disponible de medicamentos.

![Step 5 - Read Models](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/design-level-event-storming-step-5.png)


Paso 6: External Systems

En este paso identificamos los sistemas externos que interactúan con el dominio, pero que están fuera del control directo del sistema.

- **Cloudinary:** sistema externo de gestión de imágenes utilizado para almacenar y gestionar las fotos de perfil de los usuarios y residentes.
- **Stripe:** sistema externo de procesamiento de pagos utilizado para gestionar las transacciones de suscripciones y pagos de admisión.
- **Notification Service:** sistema encargado de enviar notificaciones automáticas a familiares y personal médico ante cambios en el estado de visitas, condiciones críticas del residente o alertas de medicación.

![Step 6 - External Systems](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/design-level-event-storming-step-6.png)

 
Paso 7: Add Aggregates

En este paso identificamos los Aggregates, que representan los objetos de dominio centrales que agrupan entidades relacionadas y se tratan como una sola unidad. Cada aggregate actúa como el punto central alrededor del cual giran los eventos y comandos de cada flujo.


![Step 7 - Add Aggregates](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/design-level-event-storming-step-7.png)


Paso 8: Bounded Contexts

Finalmente, definimos los Bounded Contexts que agrupan los flujos relacionados en contextos delimitados con responsabilidades claras. Cada Bounded Context representa un subdominio independiente con su propio lenguaje ubicuo.

| Bounded Context   |Descripción                                                                 |
|-------------------|-----------------------------------------------------------------------------|
| **BC: IAM**      | Gestiona la identidad, autenticación y asignación de roles de los usuarios. |
| **BC: Profiles**| Gestiona la creación, actualización y desactivación de perfiles.         |
| **BC: Payments**  | Gestiona planes de suscripción, pagos y cancelaciones.              |
| **BC: Tracking**   | Gestiona la evaluación clínica inicial del residente.                       |
| **BC: Nursing** | Gestiona el plan de cuidado y tratamiento del residente.                    |
| **BC: HCM**    | Gestiona la contratación y asignación del personal.                         |
| **BC: Activities**| Gestiona las actividades diarias del residente.                             |
| **BC: Health**    | Gestiona monitoreo de signos vitales y alertas críticas.                    |

![Step 8 - Bounded Contexts](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/design-level-event-storming-step-8.jpg)


## Enlace al tablero de Miro

El tablero completo del Event Storming puede ser consultado en el siguiente enlace:

**Ver tablero en Miro:** [https://miro.com/app/board/uXjVHfIKGvE=/?share_link_id=903651467736](https://miro.com/app/board/uXjVHfIKGvE=/?share_link_id=903651467736)


#### 4.1.1.2. Domain Message Flows Modeling

El modelado de flujos de mensajes describe cómo los distintos contextos delimitados se comunican entre sí a través de eventos y comandos. En Veyra, estos flujos incluyen la propagación de lecturas de signos vitales desde el contexto de dispositivos IoT hacia el contexto de monitoreo, la emisión de alertas clínicas hacia el contexto de notificaciones cuando se detecta una anomalía, y la sincronización del estado de suscripción entre el contexto de pagos y el de control de acceso. Este modelo permite visualizar las dependencias entre contextos, los puntos de integración y el flujo de información a lo largo de los procesos clave de la plataforma.

#### 4.1.1.3. Bounded Context Canvases

En esta sección se detallan los bounded contexts siguiendo un proceso iterativo recomendado para el Bounded Context Canvas. A continuación se describe el proceso de diseño de cada contexto, incluyendo la definición del contexto, las reglas de negocio, el lenguaje ubicuo, y el análisis de capacidades.

#### Nursing Context - Canvas

Gestiona el ciclo de vida clínico completo de un residente dentro del hogar de reposo, incluyendo la creación, aprobación y ejecución de planes de cuidado, la prescripción, programación y administración de medicamentos, el control de stock de medicación, la asignación de habitaciones y familiares, y el manejo de reacciones adversas y dosis perdidas, garantizando que cada residente reciba la atención clínica adecuada en todo momento.

![bc1_nursing.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc1_nursing.png)

El bounded context de Nursing representa un **Core Domain**, ya que su funcionalidad es fundamental para el éxito del negocio principal de la plataforma. Este contexto se enfoca en la gestión clínica operativa del residente, lo cual es crucial para garantizar la calidad del cuidado y la seguridad del paciente. La administración de planes de cuidado y medicamentos es una parte esencial de las operaciones diarias del hogar de reposo y tiene un impacto directo en la continuidad del servicio, la satisfacción de las familias y el cumplimiento de estándares clínicos. Por ello, este contexto actúa como **Execution Context** y **Enforcer**, siendo el núcleo alrededor del cual giran los demás bounded contexts del sistema Veyra.

#### Tracking Context - Canvas

Gestiona la evaluación clínica inicial y continua de los residentes realizada por el Doctor, cubriendo la creación y registro del historial médico, el diagnóstico, la medición de signos vitales y la evaluación del nivel de riesgo y dependencia, proporcionando la línea base clínica que alimenta los bounded contexts de Nursing y Health.

![bc2_tracking.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc2_tracking.png)

El bounded context de Tracking representa un **Core Domain**, ya que establece el punto de partida clínico indispensable para que el resto del sistema pueda operar correctamente. Sin una evaluación médica completa, no es posible crear un Plan de Cuidado en Nursing ni iniciar el monitoreo continuo en Health. Este contexto actúa como **Execution Context** y **Analysis Context**, siendo responsable de transformar la información clínica recolectada por el Doctor en eventos de dominio concretos — como `Risk Level Assessed` y `Medical History Created` — que otros bounded contexts consumen para tomar decisiones de negocio críticas sobre el cuidado del residente.

#### Health Context - Canvas

Gestiona el monitoreo continuo en tiempo real del estado de salud de los residentes admitidos, cubriendo la toma y registro de signos vitales, detección de anomalías, identificación de condiciones críticas, seguimiento de cambios en la condición del residente, reporte de alergias con clasificación de severidad, y notificación al personal de enfermería a través de un servicio externo de notificaciones.

![bc3_health.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc3_health.png)

El bounded context de Health representa un **Core Domain**, ya que su funcionalidad es crítica para garantizar la seguridad y bienestar de los residentes en todo momento. Este contexto actúa como centinela de salud en tiempo real, detectando anomalías y condiciones críticas que requieren intervención inmediata. Al operar como **Analysis Context**, **Gateway Context** y **Enforcer**, asegura que cualquier cambio relevante en el estado de salud de un residente sea comunicado oportunamente tanto al personal interno como a familiares a través del servicio externo de notificaciones, siendo indispensable para el cumplimiento de estándares clínicos y la confianza de las familias en la plataforma Veyra.

#### HCM Context - Canvas

Gestiona el ciclo de vida completo del personal de salud dentro del hogar de reposo, cubriendo la contratación, verificación de credenciales, gestión de turnos, asignación de enfermeras y tareas de cuidado a residentes, reporte de ausencias, asignación de reemplazos y cierre de turnos con handover formal, garantizando que el personal correcto esté verificado, disponible y asignado en todo momento.

![bc4_hcm.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc4_hcm.png)

El bounded context de HCM representa un **Core Domain**, ya que la disponibilidad y correcta asignación del personal de salud es fundamental para la operación continua del hogar de reposo. Sin este contexto, ningún residente podría recibir atención clínica ni actividades diarias de cuidado. Actúa como **Execution Context** y **Enforcer**, asegurando que ningún staff no verificado pueda ser asignado a un turno, y que toda ausencia tenga una respuesta operativa inmediata mediante la asignación de un reemplazo, siendo un pilar indispensable para la continuidad del servicio en la plataforma Veyra.

#### Activities Context - Canvas

Registra las actividades diarias de cuidado del residente realizadas por el personal de salud como parte del Resident's Daily Care Flow, cubriendo el registro de comidas, baño, higiene, asistencia de alimentación, asistencia de movilidad, prevención de caídas, hidratación y actividades recreacionales, proporcionando una línea de tiempo completa en tiempo real por residente y disparando reasignaciones médicas cuando se superan umbrales configurados.

![bc5_activities.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc5_activities.png)

El bounded context de Activities representa un **Core Domain**, ya que el seguimiento en tiempo real de las actividades diarias de cada residente es esencial para garantizar la calidad del cuidado y el cumplimiento de los planes de atención. Este contexto actúa como **Execution Context** y **Analysis Context**, siendo responsable de capturar cada acción de cuidado realizada por el personal y de detectar situaciones que requieren intervención, como el incumplimiento del umbral de hidratación o el alto riesgo de caídas, comunicándolas oportunamente a los bounded contexts de Health y Tracking para mantener la seguridad y bienestar del residente en la plataforma Veyra.

#### Communication Context - Canvas

Gestiona todas las interacciones entre el hogar de reposo y los familiares de los residentes, controlando el ciclo de vida completo de las visitas: autorización, aplicación de restricciones, denegación, programación, inicio, fin y registro. Notifica a los familiares cuando el estado de una visita cambia o cuando se producen alertas críticas de salud, a través de un servicio externo de notificaciones.

![bc6_communication.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc6_communication.png)

El bounded context de Communication representa un **Core Domain** con enfoque en **engagement**, ya que la conexión continua entre los familiares y el hogar de reposo es fundamental para la confianza en la plataforma y la satisfacción de los usuarios. Actúa como **Execution Context** y **Gateway Context**, siendo el punto de salida hacia el Notification Service externo para comunicar cambios de estado de visitas y alertas críticas de salud. Sin este contexto, las familias no tendrían visibilidad del estado de sus residentes ni podrían coordinar visitas de manera controlada y segura en la plataforma Veyra.

#### IAM Context - Canvas

Gestiona la autenticación, autorización y asignación de roles para todos los usuarios de la plataforma, manejando el Sign In, Sign Up, registro de información personal y asignación de roles. Aplica un flujo especial: cuando un Admin inicia sesión por primera vez, el sistema lo redirige al flujo de registro del hogar de reposo. Es el guardián de seguridad y punto de entrada para todos los demás bounded contexts de la plataforma Veyra.

![bc7_iam.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc7_iam.png)

El bounded context de IAM representa un **Supporting Domain** con enfoque en **compliance**, ya que garantizar que solo usuarios autenticados y correctamente autorizados puedan acceder a la plataforma es un requisito fundamental de seguridad y no diferenciador del negocio principal. Actúa como **Gateway Context** y **Enforcer**, siendo el primer punto de control que todos los usuarios deben atravesar antes de interactuar con cualquier otro bounded context. Sin este contexto, ningún flujo de negocio de la plataforma Veyra podría operar de forma segura y controlada.

#### Profiles Context - Canvas

Gestiona los perfiles personales y de negocio de todos los usuarios de la plataforma, permitiendo crear, actualizar y deshabilitar perfiles de persona, cambiar contraseñas, gestionar fotos de perfil mediante Cloudinary (servicio externo), autorizar visitantes y crear perfiles de negocio vinculados al hogar de reposo, garantizando que cada usuario tenga una identidad completamente configurada más allá de la autenticación.

![bc8_profiles.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc8_profiles.png)

El bounded context de Profiles representa un **Supporting Domain** con enfoque en **engagement**, ya que una identidad completa y personalizada para cada usuario mejora la experiencia en la plataforma y facilita la gestión operativa del hogar de reposo. Actúa como **Execution Context** y **Gateway Context**, siendo el responsable de enriquecer la identidad creada en IAM con información personal y de negocio, y de publicar eventos relevantes hacia Communication y Nursing cuando el estado de un perfil cambia. La integración con Cloudinary como servicio externo permite una gestión eficiente de imágenes sin sobrecargar la infraestructura interna de la plataforma Veyra.

#### Subscriptions & Payments Context - Canvas

Gestiona el ciclo de vida de las suscripciones SaaS y el procesamiento de pagos para los hogares de reposo en la plataforma, manejando la selección y cancelación de planes de suscripción, y el procesamiento de pagos a través de Stripe (pasarela externa). El estado de la suscripción actúa como la puerta que habilita o deshabilita el acceso a todos los demás bounded contexts, y genera órdenes de pago cuando un familiar desea pagar por los servicios de un residente.

![bc9_subscriptions.png](../assets/img/chapter-IV/design-level-event-storming/design-level-event-storming/boumded-context-canvases/bc9_subscriptions.png)

El bounded context de Subscriptions & Payments representa un **Supporting Domain** con enfoque en **revenue**, ya que el modelo de negocio de la plataforma Veyra depende directamente de la suscripción activa de los hogares de reposo para generar ingresos. Actúa como **Execution Context**, **Gateway Context** y **Enforcer**, siendo el único contexto autorizado para gestionar el acceso económico a la plataforma. La integración con Stripe mediante un Anti-Corruption Layer garantiza que los cambios en la API externa no afecten la lógica interna del dominio, manteniendo la independencia y resiliencia del sistema Veyra ante variaciones del proveedor de pagos.

### 4.1.2. Context Mapping

Durante la fase de modelado basada en el dominio, hemos logrado identificar los siguientes contextos limitados: Identity and Access Management (IAM), Profiles, Subscriptions and Payments, Tracking, HCM (Human Capital Management), Nursing, Communication, Activities y Health. A continuación, explicaremos qué tipo de relación existe entre estos contextos y cómo se comunican entre ellos.

### Análisis de Bounded Contexts

#### Subscriptions and Payments ↔ IAM
- **Relación:** Upstream (Subscriptions) / Downstream (IAM)
- **Patrón:** Customer/Supplier — IAM depende de Subscriptions para validar que un usuario cuenta con un plan activo antes de concederle acceso al sistema. Subscriptions actúa como proveedor de la información del plan, y IAM como cliente que la consume para sus decisiones de autorización.

#### IAM ↔ Profiles
- **Relación:** Upstream (IAM) / Downstream (Profiles)
- **Patrón:** Conformist — Profiles adopta directamente el modelo de identidad definido por IAM sin transformación propia. IAM es la fuente de verdad de autenticación, y Profiles se conforma a ese modelo para construir el perfil de la persona (residente, familiar, staff).

#### IAM ↔ Tracking
- **Relación:** Upstream (IAM) / Downstream (Tracking)
- **Patrón:** Conformist — Tracking adopta el modelo de usuario de IAM para asociar evaluaciones clínicas e historiales médicos a la identidad de un residente concreto, sin necesidad de reinterpretar el modelo de identidad.

#### Profiles ↔ Subscriptions and Payments
- **Relación:** Upstream (Profiles) / Downstream (Subscriptions)
- **Patrón:** Customer/Supplier — Subscriptions necesita datos del perfil del familiar o responsable para generar órdenes de pago correctamente asociadas a la persona. Profiles provee esos datos bajo los términos que Subscriptions negocia.

#### Tracking ↔ Nursing
- **Relación:** Upstream (Tracking) / Downstream (Nursing)
- **Patrón:** Customer/Supplier — Nursing consume la información del historial clínico y la evaluación de riesgo del residente que Tracking gestiona, para fundamentar las decisiones del Care Plan. Tracking es el proveedor del contexto clínico longitudinal que Nursing necesita.

#### Tracking ↔ Communication
- **Relación:** Upstream (Tracking) / Downstream (Communication)
- **Patrón:** Published Language — Tracking emite eventos como `MedicalNeedNotified` o `RiskLevelAssessed` que Communication consume directamente para notificar al personal médico o a los familiares del residente sin alterar el modelo de Tracking.

#### HCM ↔ Nursing
- **Relación:** Upstream (HCM) / Downstream (Nursing)
- **Patrón:** Customer/Supplier — Nursing necesita saber qué enfermera está asignada a un residente y en qué turno está activa antes de ejecutar tareas de cuidado. HCM provee esta información operativa del personal bajo los términos que Nursing solicita como cliente.

#### Communication ↔ Activities
- **Relación:** Upstream (Communication) / Downstream (Activities)
- **Patrón:** Published Language — Communication emite eventos como `VisitScheduled` o `VisitAuthorized` que Activities consume para adaptar la rutina diaria del residente (por ejemplo, pausar actividades durante una visita), sin que Activities conozca la lógica interna de Communication.

#### Activities ↔ Health
- **Relación:** Upstream (Activities) / Downstream (Health)
- **Patrón:** ACL (Anti-Corruption Layer) — Cuando Activities registra eventos como una caída durante movilidad o un nivel de hidratación crítico, Health los consume pero los traduce a su propio modelo clínico a través de un ACL. Esto protege al dominio de salud de ser contaminado con el lenguaje propio de las actividades cotidianas.

#### Health ↔ Nursing
- **Relación:** Upstream (Health) / Downstream (Nursing)
- **Patrón:** Published Language — Health emite eventos como `AbnormalVitalSignsDetected` o `CriticalConditionIdentified` que Nursing consume para ajustar el Care Plan o la medicación del residente. Nursing no conoce los detalles internos de cómo Health detecta las anomalías.

Con base en el análisis, se implementaron los siguientes patrones de relación entre contextos:

- **Customer/Supplier** entre Subscriptions → IAM, Profiles → Subscriptions, Tracking → Nursing y HCM → Nursing.
- **Conformist** entre IAM → Profiles e IAM → Tracking.
- **Published Language** entre Tracking → Communication, Communication → Activities y Health → Nursing.
- **Anti-Corruption Layer** entre Activities y Health, para proteger el modelo clínico del lenguaje propio de las actividades cotidianas.

![Context Mapping diagram](/assets/img/chapter-IV/context-mapping/context-map.jpg)

### 4.1.3. Software Architecture

En esta sección se presenta la arquitectura de software de la plataforma Veyra mediante una serie de diagramas que muestran progresivamente el sistema desde una vista general hasta el nivel de despliegue. Cada diagrama sigue el modelo C4 y permite comprender la estructura del sistema, sus componentes y cómo se despliegan en la infraestructura en la nube.

#### 4.1.3.1. Software Architecture System Landscape Diagram

El diagrama de paisaje del sistema muestra la plataforma Veyra en el contexto de su ecosistema más amplio, incluyendo los usuarios, los sistemas externos y los servicios de terceros con los que interactúa. Permite obtener una visión global del sistema y sus fronteras antes de profundizar en los detalles internos.

![Landscape diagram](/assets/img/chapter-IV/software-architecture/Veyra_landscape_diagram.svg)

#### 4.1.3.2. Software Architecture Context Level Diagrams

El diagrama de contexto muestra una vista de alto nivel de las relaciones entre los diferentes contextos delimitados y otros sistemas externos. Este diagrama ayuda a comprender cómo los diferentes contextos interactúan entre sí y con el mundo exterior, proporcionando una visión general de la arquitectura del sistema.

![Diagrama de Contexto](/assets/img/chapter-IV/software-architecture/Veyra_context_diagram.svg)

#### 4.1.3.2. Software Architecture Container Level Diagrams

El diagrama de contenedores muestra los principales contenedores de software dentro de cada contexto delimitado, como aplicaciones, servicios, bases de datos, etc. Este diagrama ayuda a visualizar la estructura interna de cada contexto y cómo los diferentes contenedores interactúan entre sí.

![Diagrama de Contenedores](/assets/img/chapter-IV/software-architecture/Veyra_container_diagram.svg)

#### 4.1.3.3. Software Architecture Deployment Diagrams

El diagrama de despliegue describe cómo los contenedores de software se distribuyen en la infraestructura física y en la nube. Muestra los entornos de ejecución, los servicios de Azure utilizados y las relaciones de red entre los componentes desplegados, permitiendo comprender las decisiones de infraestructura adoptadas para la plataforma Veyra.

![Deployment diagram](/assets/img/chapter-IV/software-architecture/Veyra-Platform-Production-Deployment.svg)

## 4.2. Tactical-Level Domain-Driven Design

El diseño táctico traduce el modelo estratégico en estructuras concretas de código dentro de cada contexto delimitado. En esta sección se detallan las capas de cada contexto de Veyra, sus entidades, agregados, servicios de dominio y repositorios, así como los diagramas de componentes y de base de datos que guían la implementación del sistema de monitoreo IoT. Cada subsección corresponde a un contexto delimitado identificado durante el diseño estratégico.

### 4.2.1. Bounded Context: Nursing

En esta sección, el equipo presenta las clases identificadas y las detalla a manera de
diccionario, explicando para cada una su nombre, propósito y la documentación de
atributos y métodos considerados, junto con las relaciones entre ellas.

#### 4.2.1.1. Domain Layer

Esta capa contiene el núcleo del negocio del contexto Nursing, incluyendo las
entidades, objetos de valor y abstracciones de repositorios que definen las reglas
clínicas de cuidado, administración de medicamentos y gestión del residente,
manteniéndose agnóstica de frameworks externos.

**`CarePlan`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa el plan de cuidado clínico de un residente. Es el agregado
  raíz que garantiza la consistencia del ciclo de vida del plan (creación, aprobación,
  ejecución, suspensión y cierre), asegurando que ninguna fase pueda ejecutarse sin
  haber cumplido las precondiciones de negocio establecidas.
* **Atributos:**
  * `id`: Long
  * `residentId`: Long
  * `doctorId`: Long
  * `status`: CarePlanStatus (Value Object / Enum)
  * `description`: String
  * `startDate`: LocalDate
  * `endDate`: LocalDate
  * `createdAt`: LocalDateTime
  * `updatedAt`: LocalDateTime
* **Métodos principales:**
  * `approve(): CarePlan`
  * `suspend(): CarePlan`
  * `complete(): CarePlan`
  * `reassess(): CarePlan`
  * `cancel(): CarePlan`
* **Relaciones:** Referencia a `Resident` y a `Doctor` por identificador. Administrado
  a través de `ICarePlanRepository`.

**`Medication`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa el ciclo de vida completo de un medicamento dentro del
  hogar de reposo: desde su prescripción y programación, hasta su administración,
  confirmación y control de stock. Garantiza que ningún medicamento pueda ser
  administrado sin una orden programada válida.
* **Atributos:**
  * `id`: Long
  * `name`: String
  * `carePlanId`: Long
  * `dosage`: Dosage (Value Object)
  * `schedule`: MedicationSchedule (Value Object)
  * `stock`: Integer
  * `status`: MedicationStatus (Value Object / Enum)
  * `prescribedAt`: LocalDateTime
* **Métodos principales:**
  * `schedule(MedicationSchedule schedule): Medication`
  * `administer(): Medication`
  * `confirmAdministration(): Medication`
  * `registerMissedDose(): Medication`
  * `adjustDosage(Dosage newDosage): Medication`
  * `discontinue(): Medication`
  * `decrementStock(): Medication`
  * `isStockLow(): boolean`
* **Relaciones:** Pertenece a un `CarePlan`. Administrado a través de
  `IMedicationRepository`.

**`Resident`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa al residente admitido en el hogar de reposo. Centraliza
  la información de su estado de admisión, condición registrada y asignación de
  habitación y familiar, asegurando la consistencia de todos los datos que otros
  contextos consumen sobre el residente.
* **Atributos:**
  * `id`: Long
  * `fullName`: String
  * `admissionDate`: LocalDate
  * `roomId`: Long
  * `relativeId`: Long
  * `condition`: String
  * `status`: ResidentStatus (Value Object / Enum)
* **Métodos principales:**
  * `assignRoom(Long roomId): Resident`
  * `assignRelative(Long relativeId): Resident`
  * `registerCondition(String condition): Resident`
  * `accept(MedicationAdministration administration): Resident`
  * `refuse(MedicationAdministration administration): Resident`
* **Relaciones:** Referenciado por `CarePlan` y `Medication`. Administrado a través
  de `IResidentRepository`.

**`Relative`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa al familiar vinculado a uno o más residentes. Permite
  gestionar la relación de responsabilidad económica y de visita, y recibir
  notificaciones de stock bajo o de eventos críticos de salud.
* **Atributos:**
  * `id`: Long
  * `fullName`: String
  * `email`: String
  * `phone`: String
  * `residentIds`: List<Long>
* **Métodos principales:**
  * `linkResident(Long residentId): Relative`
  * `unlinkResident(Long residentId): Relative`
* **Relaciones:** Referenciado por `Resident`. Administrado a través de
  `IRelativeRepository`.

**`NursingHome`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa la entidad del hogar de reposo como organización.
  Centraliza la asignación de habitaciones y la capacidad operativa del establecimiento.
* **Atributos:**
  * `id`: Long
  * `name`: String
  * `address`: String
  * `totalRooms`: Integer
  * `availableRooms`: Integer
* **Métodos principales:**
  * `assignRoom(Long residentId): NursingHome`
  * `releaseRoom(Long roomId): NursingHome`
  * `hasAvailableRooms(): boolean`
* **Relaciones:** Referenciado por `Resident`. Administrado a través de
  `INursingHomeRepository`.

**`CarePlanStatus`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define los estados válidos del ciclo de vida de un plan de cuidado:
  `DRAFT`, `APPROVED`, `ACTIVE`, `SUSPENDED`, `COMPLETED`, `CANCELLED`,
  `REASSESSED`. Garantiza que no existan transiciones de estado inválidas en
  tiempo de ejecución.

**`MedicationStatus`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define los estados válidos de un medicamento: `PRESCRIBED`,
  `SCHEDULED`, `ADMINISTERED`, `MISSED`, `DISCONTINUED`. Asegura la
  trazabilidad completa del ciclo de administración.

**`Dosage`**
* **Tipo DDD:** Value Object
* **Propósito:** Encapsula la cantidad y unidad de medida de una dosis de
  medicamento de forma inmutable, evitando errores por dosificación incorrecta.
* **Atributos:**
  * `amount`: Double
  * `unit`: String (ej. `mg`, `ml`)

**`MedicationSchedule`**
* **Tipo DDD:** Value Object
* **Propósito:** Encapsula la frecuencia y horarios en que debe administrarse un
  medicamento, garantizando que la programación sea consistente y no modificable
  una vez establecida sin emitir un nuevo comando.
* **Atributos:**
  * `frequency`: String (ej. `every 8 hours`)
  * `times`: List<LocalTime>
  * `startDate`: LocalDate

**`ResidentStatus`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define los estados válidos de un residente: `ADMITTED`,
  `DISCHARGED`, `WAITLISTED`. Garantiza la consistencia del estado de admisión
  en todos los contextos que lo consumen.

**`ICarePlanRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción que define las operaciones de persistencia
  y recuperación del agregado `CarePlan`, aislando el dominio de la base de datos.
* **Métodos representativos:**
  * `findById(Long id): Optional<CarePlan>`
  * `findByResidentId(Long residentId): List<CarePlan>`
  * `findByStatus(CarePlanStatus status): List<CarePlan>`
  * `save(CarePlan carePlan): CarePlan`

**`IMedicationRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción para la persistencia del agregado
  `Medication`.
* **Métodos representativos:**
  * `findById(Long id): Optional<Medication>`
  * `findByCarePlanId(Long carePlanId): List<Medication>`
  * `findLowStock(): List<Medication>`
  * `save(Medication medication): Medication`

**`IResidentRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción para la persistencia del agregado
  `Resident`.
* **Métodos representativos:**
  * `findById(Long id): Optional<Resident>`
  * `findByStatus(ResidentStatus status): List<Resident>`
  * `save(Resident resident): Resident`

**`IRelativeRepository`** & **`INursingHomeRepository`**
* **Tipo DDD:** Repository Interfaces
* **Propósito:** Contratos de abstracción para la persistencia de los agregados
  `Relative` y `NursingHome` respectivamente.
* **Métodos representativos:**
  * `findById(Long id): Optional<T>`
  * `save(T entity): T`

---

#### 4.2.1.2. Interface Layer

Esta capa expone los capabilities del Bounded Context Nursing hacia clientes externos,
actuando como la frontera del sistema y traduciendo las peticiones HTTP en comandos
de aplicación mediante el uso de Resources.

**`CarePlanController`**
* **Tipo:** REST API Controller
* **Propósito:** Proveer los endpoints HTTP para la gestión del ciclo de vida de los
  planes de cuidado. Recibe las peticiones, deserializa el JSON en Resources y los
  mapea a Commands mediante clases Assembler.
* **Endpoints expuestos:**
  * `POST /api/v1/care-plans` — Crear plan de cuidado
  * `PUT /api/v1/care-plans/{id}/approve` — Aprobar plan
  * `PUT /api/v1/care-plans/{id}/suspend` — Suspender plan
  * `PUT /api/v1/care-plans/{id}/complete` — Completar plan
  * `PUT /api/v1/care-plans/{id}/cancel` — Cancelar plan
  * `PUT /api/v1/care-plans/{id}/reassess` — Reasignar plan
  * `GET /api/v1/care-plans/{id}` — Consultar plan por ID
  * `GET /api/v1/care-plans/resident/{residentId}` — Planes por residente
* **Relaciones:** Interactúa con `CarePlanCommandService` y `CarePlanQueryService`.
  Utiliza clases Assembler para aislar los Resources de presentación de los
  Commands de aplicación.
  **`MedicationController`**
* **Tipo:** REST API Controller
* **Propósito:** Proveer los endpoints HTTP para la gestión del ciclo de administración
  de medicamentos. Recibe las peticiones, deserializa el JSON en Resources y los
  mapea a Commands.
* **Endpoints expuestos:**
  * `POST /api/v1/medications` — Prescribir medicamento
  * `PUT /api/v1/medications/{id}/schedule` — Programar medicamento
  * `PUT /api/v1/medications/{id}/administer` — Administrar medicamento
  * `PUT /api/v1/medications/{id}/confirm` — Confirmar administración
  * `PUT /api/v1/medications/{id}/missed-dose` — Registrar dosis perdida
  * `PUT /api/v1/medications/{id}/adjust-dosage` — Ajustar dosis
  * `PUT /api/v1/medications/{id}/discontinue` — Discontinuar medicamento
  * `GET /api/v1/medications/care-plan/{carePlanId}` — Medicamentos por plan
  * `GET /api/v1/medications/low-stock` — Medicamentos con stock bajo
* **Relaciones:** Interactúa con `MedicationCommandService` y
  `MedicationQueryService`.
  **`ResidentController`**
* **Tipo:** REST API Controller
* **Propósito:** Proveer los endpoints HTTP para la gestión de los residentes y sus
  asignaciones de habitación y familiar. Recibe las peticiones, deserializa el JSON
  en Resources y los mapea a Commands.
* **Endpoints expuestos:**
  * `POST /api/v1/residents` — Registrar residente
  * `PUT /api/v1/residents/{id}/assign-room` — Asignar habitación
  * `PUT /api/v1/residents/{id}/assign-relative` — Asignar familiar
  * `PUT /api/v1/residents/{id}/condition` — Registrar condición
  * `GET /api/v1/residents/{id}` — Consultar residente por ID
  * `GET /api/v1/residents` — Listar residentes
* **Relaciones:** Interactúa con `ResidentCommandService` y
  `ResidentQueryService`.
---

#### 4.2.1.3. Application Layer

Esta capa orquesta los casos de uso del negocio del contexto Nursing. Maneja el
flujo del proceso utilizando un patrón CQRS implícito, separando las intenciones de
modificación (Commands) de las de lectura (Queries).

**`CreateCarePlanCommand`**, **`ApproveCarePlanCommand`**,
**`SuspendCarePlanCommand`**, **`CompleteCarePlanCommand`**,
**`CancelCarePlanCommand`**, **`ReassessCarePlanCommand`**
* **Tipo:** Command
* **Propósito:** Objetos inmutables que encapsulan la intención de modificar el
  estado de un plan de cuidado, transportando los datos necesarios hacia los
  manejadores de comandos.
  **`PrescribeMedicationCommand`**, **`ScheduleMedicationCommand`**,
  **`AdministerMedicationCommand`**, **`ConfirmAdministrationCommand`**,
  **`RegisterMissedDoseCommand`**, **`AdjustDosageCommand`**,
  **`DiscontinueMedicationCommand`**
* **Tipo:** Command
* **Propósito:** Objetos inmutables que encapsulan cada intención de modificación
  sobre el ciclo de vida de un medicamento.
  **`RegisterResidentCommand`**, **`AssignRoomCommand`**,
  **`AssignRelativeCommand`**, **`RegisterConditionCommand`**
* **Tipo:** Command
* **Propósito:** Objetos inmutables que encapsulan las intenciones de creación y
  actualización sobre el agregado `Resident`.
  **`CarePlanCommandServiceImpl`**
* **Tipo:** Command Handler (Application Service)
* **Propósito:** Orquesta los casos de uso de mutación de estado del agregado
  `CarePlan`. Valida reglas de negocio de aplicación y coordina la persistencia
  a través del repositorio.
* **Atributos inyectados:**
  * `carePlanRepository`: ICarePlanRepository
  * `residentRepository`: IResidentRepository
* **Métodos principales:**
  * `handle(CreateCarePlanCommand command): Optional<CarePlan>`
  * `handle(ApproveCarePlanCommand command): Optional<CarePlan>`
  * `handle(SuspendCarePlanCommand command): Optional<CarePlan>`
  * `handle(CompleteCarePlanCommand command): Optional<CarePlan>`
  * `handle(CancelCarePlanCommand command): Optional<CarePlan>`
  * `handle(ReassessCarePlanCommand command): Optional<CarePlan>`
    **`MedicationCommandServiceImpl`**
* **Tipo:** Command Handler (Application Service)
* **Propósito:** Orquesta los casos de uso de mutación del agregado `Medication`,
  incluyendo la validación de stock y la generación de alertas cuando el stock
  es bajo.
* **Atributos inyectados:**
  * `medicationRepository`: IMedicationRepository
  * `carePlanRepository`: ICarePlanRepository
  * `notificationService`: NotificationService
* **Métodos principales:**
  * `handle(PrescribeMedicationCommand command): Optional<Medication>`
  * `handle(ScheduleMedicationCommand command): Optional<Medication>`
  * `handle(AdministerMedicationCommand command): Optional<Medication>`
  * `handle(ConfirmAdministrationCommand command): Optional<Medication>`
  * `handle(RegisterMissedDoseCommand command): Optional<Medication>`
  * `handle(AdjustDosageCommand command): Optional<Medication>`
  * `handle(DiscontinueMedicationCommand command): Optional<Medication>`
    **`ResidentCommandServiceImpl`**
* **Tipo:** Command Handler (Application Service)
* **Propósito:** Orquesta los casos de uso de mutación del agregado `Resident`.
* **Atributos inyectados:**
  * `residentRepository`: IResidentRepository
  * `nursingHomeRepository`: INursingHomeRepository
  * `relativeRepository`: IRelativeRepository
* **Métodos principales:**
  * `handle(RegisterResidentCommand command): Optional<Resident>`
  * `handle(AssignRoomCommand command): Optional<Resident>`
  * `handle(AssignRelativeCommand command): Optional<Resident>`
  * `handle(RegisterConditionCommand command): Optional<Resident>`
    **`CarePlanQueryServiceImpl`**
* **Tipo:** Query Handler (Application Service)
* **Propósito:** Maneja las consultas de lectura sobre planes de cuidado, garantizando
  que estas operaciones no produzcan efectos secundarios en el dominio.
* **Métodos principales:**
  * `handle(GetCarePlanByIdQuery query): Optional<CarePlan>`
  * `handle(GetCarePlansByResidentIdQuery query): List<CarePlan>`
  * `handle(GetCarePlansByStatusQuery query): List<CarePlan>`
    **`MedicationQueryServiceImpl`**
* **Tipo:** Query Handler (Application Service)
* **Propósito:** Maneja las consultas de lectura sobre medicamentos y stock.
* **Métodos principales:**
  * `handle(GetMedicationByIdQuery query): Optional<Medication>`
  * `handle(GetMedicationsByCarePlanIdQuery query): List<Medication>`
  * `handle(GetLowStockMedicationsQuery query): List<Medication>`
    **`ResidentQueryServiceImpl`**
* **Tipo:** Query Handler (Application Service)
* **Propósito:** Maneja las consultas de lectura sobre residentes.
* **Métodos principales:**
  * `handle(GetResidentByIdQuery query): Optional<Resident>`
  * `handle(GetAllResidentsQuery query): List<Resident>`
  * `handle(GetResidentsByStatusQuery query): List<Resident>`
---

#### 4.2.1.4. Infrastructure Layer

Esta capa proporciona las implementaciones técnicas de los contratos definidos en
las capas superiores del contexto Nursing.

**`CarePlanRepository`**
* **Tipo:** Repository Implementation
* **Propósito:** Implementación concreta de `ICarePlanRepository` utilizando
  Spring Data JPA para el acceso a la base de datos relacional.
* **Atributos:** Extiende de `JpaRepository<CarePlan, Long>`.
* **Relaciones:** Mapea la entidad de dominio `CarePlan` a la tabla `care_plans`
  mediante anotaciones ORM.
  **`MedicationRepository`**
* **Tipo:** Repository Implementation
* **Propósito:** Implementación concreta de `IMedicationRepository` utilizando
  Spring Data JPA.
* **Atributos:** Extiende de `JpaRepository<Medication, Long>`.
* **Relaciones:** Mapea la entidad de dominio `Medication` a la tabla `medications`.
  **`ResidentRepository`**, **`RelativeRepository`**, **`NursingHomeRepository`**
* **Tipo:** Repository Implementations
* **Propósito:** Implementaciones concretas de sus respectivas interfaces de
  repositorio utilizando Spring Data JPA.
* **Atributos:** Extienden de `JpaRepository<T, Long>`.
* **Relaciones:** Mapean las entidades del dominio a sus tablas correspondientes
  (`residents`, `relatives`, `nursing_homes`) mediante anotaciones ORM.
  **`NotificationServiceImpl`**
* **Tipo:** Infrastructure Service (External)
* **Propósito:** Implementa la interfaz de notificación para enviar alertas externas
  cuando el stock de un medicamento está por agotarse o cuando se registra una
  reacción adversa. Se integra con el Notification Service externo de la plataforma.
* **Relaciones:** Utilizado por `MedicationCommandServiceImpl` para disparar
  alertas de stock bajo hacia los familiares del residente.
---

#### 4.2.1.5. Bounded Context Software Architecture Component Level Diagrams

El diagrama de componentes muestra la estructura interna del Bounded Context
Nursing, detallando los principales componentes de software que lo conforman y las
relaciones entre ellos. Permite visualizar cómo se organizan las responsabilidades
dentro del contexto y cómo se comunican con otros contextos o servicios externos.

#### 4.2.1.6. Bounded Context Software Architecture Code Level Diagrams

Los diagramas de nivel de código ofrecen una vista detallada de las estructuras
internas del Bounded Context Nursing, mostrando las clases, sus relaciones y el
esquema de base de datos que soporta el modelo del dominio.

##### 4.2.1.6.1. Bounded Context Domain Layer Class Diagrams

El diagrama de clases de la capa de dominio representa las entidades, objetos de
valor, agregados e interfaces que conforman el modelo del negocio del contexto
Nursing. Muestra las relaciones de composición, herencia y dependencia entre los
elementos del dominio.

##### 4.2.1.6.2. Bounded Context Database Design Diagram

El diagrama de diseño de base de datos muestra el esquema de persistencia del
Bounded Context Nursing, incluyendo las tablas, columnas, claves primarias, claves
foráneas y relaciones entre entidades. Refleja las decisiones de modelado de datos
adoptadas para soportar el dominio.

### 4.2.2. Bounded Context: Tracking

En esta sección, el equipo presenta las clases identificadas y las detalla a manera de
diccionario, explicando para cada una su nombre, propósito y la documentación de
atributos y métodos considerados, junto con las relaciones entre ellas.

#### 4.2.2.1. Domain Layer

Esta capa contiene el núcleo del negocio del contexto Tracking, incluyendo las
entidades, objetos de valor y abstracciones de repositorios que definen las reglas
de evaluación clínica inicial y continua del residente, manteniéndose agnóstica de
frameworks externos.

**`ClinicalAssessment`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa la evaluación clínica formal realizada por un Doctor sobre
  un residente. Es el agregado raíz que garantiza la consistencia del proceso de
  evaluación inicial, asegurando que ninguna fase (registro de historial, diagnóstico,
  signos vitales, nivel de riesgo) pueda completarse sin haber iniciado formalmente
  la evaluación.
* **Atributos:**
  * `id`: Long
  * `residentId`: Long
  * `doctorId`: Long
  * `status`: AssessmentStatus (Value Object / Enum)
  * `startedAt`: LocalDateTime
  * `completedAt`: LocalDateTime
  * `medicalNeedNotified`: boolean
* **Métodos principales:**
  * `complete(): ClinicalAssessment`
  * `notifyMedicalNeed(): ClinicalAssessment`
* **Relaciones:** Referencia a `MedicalHistory`, `VitalSigns` y `RiskProfile` por
  identificador. Administrado a través de `IClinicalAssessmentRepository`.
  **`MedicalHistory`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa el historial médico acumulativo de un residente. Es creado
  una única vez durante la evaluación inicial y enriquecido iterativamente con
  diagnósticos y condiciones registradas. Garantiza la trazabilidad clínica completa
  del residente a lo largo del tiempo.
* **Atributos:**
  * `id`: Long
  * `residentId`: Long
  * `assessmentId`: Long
  * `diagnoses`: List<Diagnosis> (Value Object)
  * `conditions`: List<String>
  * `createdAt`: LocalDateTime
  * `updatedAt`: LocalDateTime
* **Métodos principales:**
  * `addDiagnosis(Diagnosis diagnosis): MedicalHistory`
  * `recordCondition(String condition): MedicalHistory`
  * `evaluateResidentCondition(String condition): MedicalHistory`
* **Relaciones:** Pertenece a un `ClinicalAssessment`. Administrado a través de
  `IMedicalHistoryRepository`.
  **`VitalSigns`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa el registro de signos vitales de un residente durante una
  evaluación clínica. Detecta automáticamente anomalías al momento del registro
  y emite la señal correspondiente para escalar al contexto Health.
* **Atributos:**
  * `id`: Long
  * `assessmentId`: Long
  * `residentId`: Long
  * `bloodPressure`: BloodPressure (Value Object)
  * `heartRate`: Integer
  * `temperature`: Double
  * `oxygenSaturation`: Double
  * `recordedAt`: LocalDateTime
  * `isAbnormal`: boolean
* **Métodos principales:**
  * `record(BloodPressure bp, Integer heartRate, Double temp, Double oxygen): VitalSigns`
  * `detectAnomaly(): VitalSigns`
  * `isAbnormal(): boolean`
* **Relaciones:** Pertenece a un `ClinicalAssessment`. Administrado a través de
  `IVitalSignsRepository`.
  **`RiskProfile`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa la evaluación del nivel de riesgo clínico y dependencia
  de un residente. Provee la información base que el contexto Nursing necesita para
  crear el plan de cuidado adecuado.
* **Atributos:**
  * `id`: Long
  * `assessmentId`: Long
  * `residentId`: Long
  * `riskLevel`: RiskLevel (Value Object / Enum)
  * `dependencyLevel`: DependencyLevel (Value Object / Enum)
  * `assessedAt`: LocalDateTime
* **Métodos principales:**
  * `assessRisk(RiskLevel level): RiskProfile`
  * `assessDependency(DependencyLevel level): RiskProfile`
* **Relaciones:** Pertenece a un `ClinicalAssessment`. Administrado a través de
  `IRiskProfileRepository`.
  **`AssessmentStatus`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define los estados válidos del ciclo de vida de una evaluación clínica:
  `STARTED`, `IN_PROGRESS`, `COMPLETED`. Garantiza que no existan transiciones
  de estado inválidas en tiempo de ejecución.
  **`Diagnosis`**
* **Tipo DDD:** Value Object
* **Propósito:** Encapsula un diagnóstico clínico de forma inmutable, incluyendo
  el código de diagnóstico y su descripción, garantizando consistencia en el registro
  del historial médico.
* **Atributos:**
  * `code`: String (ej. `ICD-10`)
  * `description`: String
  * `diagnosedAt`: LocalDate
    **`BloodPressure`**
* **Tipo DDD:** Value Object
* **Propósito:** Encapsula los valores de presión arterial sistólica y diastólica de
  forma inmutable, permitiendo la validación de rangos normales en el momento
  del registro.
* **Atributos:**
  * `systolic`: Integer
  * `diastolic`: Integer
    **`RiskLevel`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define los niveles de riesgo clínico válidos: `LOW`, `MEDIUM`,
  `HIGH`, `CRITICAL`. Garantiza que el nivel de riesgo asignado sea siempre un
  valor reconocido por el sistema.
  **`DependencyLevel`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define los niveles de dependencia válidos para un residente:
  `INDEPENDENT`, `PARTIAL`, `TOTAL`. Permite al contexto Nursing determinar
  el tipo de cuidado necesario.
  **`IClinicalAssessmentRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción que define las operaciones de persistencia
  y recuperación del agregado `ClinicalAssessment`.
* **Métodos representativos:**
  * `findById(Long id): Optional<ClinicalAssessment>`
  * `findByResidentId(Long residentId): Optional<ClinicalAssessment>`
  * `findByStatus(AssessmentStatus status): List<ClinicalAssessment>`
  * `save(ClinicalAssessment assessment): ClinicalAssessment`
    **`IMedicalHistoryRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción para la persistencia del agregado
  `MedicalHistory`.
* **Métodos representativos:**
  * `findById(Long id): Optional<MedicalHistory>`
  * `findByResidentId(Long residentId): Optional<MedicalHistory>`
  * `save(MedicalHistory history): MedicalHistory`
    **`IVitalSignsRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción para la persistencia del agregado
  `VitalSigns`.
* **Métodos representativos:**
  * `findById(Long id): Optional<VitalSigns>`
  * `findByAssessmentId(Long assessmentId): List<VitalSigns>`
  * `findAbnormalByResidentId(Long residentId): List<VitalSigns>`
  * `save(VitalSigns vitalSigns): VitalSigns`
    **`IRiskProfileRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción para la persistencia del agregado
  `RiskProfile`.
* **Métodos representativos:**
  * `findById(Long id): Optional<RiskProfile>`
  * `findByResidentId(Long residentId): Optional<RiskProfile>`
  * `save(RiskProfile riskProfile): RiskProfile`
---

#### 4.2.2.2. Interface Layer

Esta capa expone los capabilities del Bounded Context Tracking hacia clientes externos,
actuando como la frontera del sistema y traduciendo las peticiones HTTP en comandos
de aplicación mediante el uso de Resources.

**`ClinicalAssessmentController`**
* **Tipo:** REST API Controller
* **Propósito:** Proveer los endpoints HTTP para la gestión del ciclo de vida de las
  evaluaciones clínicas. Recibe las peticiones, deserializa el JSON en Resources y
  los mapea a Commands mediante clases Assembler.
* **Endpoints expuestos:**
  * `POST /api/v1/clinical-assessments` — Iniciar evaluación clínica
  * `PUT /api/v1/clinical-assessments/{id}/complete` — Completar evaluación
  * `PUT /api/v1/clinical-assessments/{id}/notify-medical-need` — Notificar necesidad médica
  * `GET /api/v1/clinical-assessments/{id}` — Consultar evaluación por ID
  * `GET /api/v1/clinical-assessments/resident/{residentId}` — Evaluación por residente
* **Relaciones:** Interactúa con `ClinicalAssessmentCommandService` y
  `ClinicalAssessmentQueryService`.
  **`MedicalHistoryController`**
* **Tipo:** REST API Controller
* **Propósito:** Proveer los endpoints HTTP para la gestión del historial médico
  de un residente. Recibe las peticiones, deserializa el JSON en Resources y los
  mapea a Commands.
* **Endpoints expuestos:**
  * `POST /api/v1/medical-histories` — Crear historial médico
  * `PUT /api/v1/medical-histories/{id}/diagnosis` — Registrar diagnóstico
  * `PUT /api/v1/medical-histories/{id}/condition` — Registrar condición
  * `GET /api/v1/medical-histories/{id}` — Consultar historial por ID
  * `GET /api/v1/medical-histories/resident/{residentId}` — Historial por residente
* **Relaciones:** Interactúa con `MedicalHistoryCommandService` y
  `MedicalHistoryQueryService`.
  **`VitalSignsController`**
* **Tipo:** REST API Controller
* **Propósito:** Proveer los endpoints HTTP para el registro y consulta de signos
  vitales durante una evaluación clínica.
* **Endpoints expuestos:**
  * `POST /api/v1/vital-signs` — Registrar signos vitales
  * `GET /api/v1/vital-signs/assessment/{assessmentId}` — Signos por evaluación
  * `GET /api/v1/vital-signs/resident/{residentId}/abnormal` — Signos anómalos por residente
* **Relaciones:** Interactúa con `VitalSignsCommandService` y
  `VitalSignsQueryService`.
  **`RiskProfileController`**
* **Tipo:** REST API Controller
* **Propósito:** Proveer los endpoints HTTP para la evaluación y consulta del perfil
  de riesgo y dependencia de un residente.
* **Endpoints expuestos:**
  * `POST /api/v1/risk-profiles` — Crear perfil de riesgo
  * `PUT /api/v1/risk-profiles/{id}/risk-level` — Evaluar nivel de riesgo
  * `PUT /api/v1/risk-profiles/{id}/dependency-level` — Evaluar nivel de dependencia
  * `GET /api/v1/risk-profiles/resident/{residentId}` — Perfil por residente
* **Relaciones:** Interactúa con `RiskProfileCommandService` y
  `RiskProfileQueryService`.
---

#### 4.2.2.3. Application Layer

Esta capa orquesta los casos de uso del negocio del contexto Tracking. Maneja el
flujo del proceso utilizando un patrón CQRS implícito, separando las intenciones de
modificación (Commands) de las de lectura (Queries).

**`StartClinicalAssessmentCommand`**, **`CompleteClinicalAssessmentCommand`**,
**`NotifyMedicalNeedCommand`**
* **Tipo:** Command
* **Propósito:** Objetos inmutables que encapsulan la intención de modificar el
  estado de una evaluación clínica, transportando los datos necesarios hacia los
  manejadores de comandos.
  **`CreateMedicalHistoryCommand`**, **`RecordDiagnosisCommand`**,
  **`RecordConditionCommand`**, **`EvaluateResidentConditionCommand`**
* **Tipo:** Command
* **Propósito:** Objetos inmutables que encapsulan las intenciones de creación y
  enriquecimiento del historial médico de un residente.
  **`RecordVitalSignsCommand`**
* **Tipo:** Command
* **Propósito:** Objeto inmutable que encapsula la intención de registrar los signos
  vitales de un residente durante una evaluación clínica, incluyendo presión arterial,
  frecuencia cardíaca, temperatura y saturación de oxígeno.
  **`AssessRiskLevelCommand`**, **`AssessDependencyLevelCommand`**
* **Tipo:** Command
* **Propósito:** Objetos inmutables que encapsulan la intención de evaluar el nivel
  de riesgo y dependencia de un residente, respectivamente.
  **`ClinicalAssessmentCommandServiceImpl`**
* **Tipo:** Command Handler (Application Service)
* **Propósito:** Orquesta los casos de uso de mutación de estado del agregado
  `ClinicalAssessment`. Valida las precondiciones de negocio y coordina la
  persistencia a través del repositorio.
* **Atributos inyectados:**
  * `clinicalAssessmentRepository`: IClinicalAssessmentRepository
  * `residentRepository`: IResidentRepository (referencia al BC Nursing via ACL)
* **Métodos principales:**
  * `handle(StartClinicalAssessmentCommand command): Optional<ClinicalAssessment>`
  * `handle(CompleteClinicalAssessmentCommand command): Optional<ClinicalAssessment>`
  * `handle(NotifyMedicalNeedCommand command): Optional<ClinicalAssessment>`
    **`MedicalHistoryCommandServiceImpl`**
* **Tipo:** Command Handler (Application Service)
* **Propósito:** Orquesta los casos de uso de creación y enriquecimiento del
  agregado `MedicalHistory`.
* **Atributos inyectados:**
  * `medicalHistoryRepository`: IMedicalHistoryRepository
  * `clinicalAssessmentRepository`: IClinicalAssessmentRepository
* **Métodos principales:**
  * `handle(CreateMedicalHistoryCommand command): Optional<MedicalHistory>`
  * `handle(RecordDiagnosisCommand command): Optional<MedicalHistory>`
  * `handle(RecordConditionCommand command): Optional<MedicalHistory>`
  * `handle(EvaluateResidentConditionCommand command): Optional<MedicalHistory>`
    **`VitalSignsCommandServiceImpl`**
* **Tipo:** Command Handler (Application Service)
* **Propósito:** Orquesta el registro de signos vitales y delega la detección de
  anomalías al agregado, publicando el resultado hacia el contexto Health cuando
  se detectan valores anómalos.
* **Atributos inyectados:**
  * `vitalSignsRepository`: IVitalSignsRepository
  * `clinicalAssessmentRepository`: IClinicalAssessmentRepository
* **Métodos principales:**
  * `handle(RecordVitalSignsCommand command): Optional<VitalSigns>`
    **`RiskProfileCommandServiceImpl`**
* **Tipo:** Command Handler (Application Service)
* **Propósito:** Orquesta la evaluación del nivel de riesgo y dependencia del
  residente, coordinando la persistencia y publicando los eventos resultantes
  hacia el contexto Nursing.
* **Atributos inyectados:**
  * `riskProfileRepository`: IRiskProfileRepository
  * `clinicalAssessmentRepository`: IClinicalAssessmentRepository
* **Métodos principales:**
  * `handle(AssessRiskLevelCommand command): Optional<RiskProfile>`
  * `handle(AssessDependencyLevelCommand command): Optional<RiskProfile>`
    **`ClinicalAssessmentQueryServiceImpl`**
* **Tipo:** Query Handler (Application Service)
* **Propósito:** Maneja las consultas de lectura sobre evaluaciones clínicas,
  garantizando que estas operaciones no produzcan efectos secundarios en el dominio.
* **Métodos principales:**
  * `handle(GetClinicalAssessmentByIdQuery query): Optional<ClinicalAssessment>`
  * `handle(GetClinicalAssessmentByResidentIdQuery query): Optional<ClinicalAssessment>`
  * `handle(GetAssessmentsByStatusQuery query): List<ClinicalAssessment>`
    **`MedicalHistoryQueryServiceImpl`**
* **Tipo:** Query Handler (Application Service)
* **Propósito:** Maneja las consultas de lectura sobre historiales médicos.
* **Métodos principales:**
  * `handle(GetMedicalHistoryByIdQuery query): Optional<MedicalHistory>`
  * `handle(GetMedicalHistoryByResidentIdQuery query): Optional<MedicalHistory>`
    **`VitalSignsQueryServiceImpl`**
* **Tipo:** Query Handler (Application Service)
* **Propósito:** Maneja las consultas de lectura sobre signos vitales registrados.
* **Métodos principales:**
  * `handle(GetVitalSignsByAssessmentIdQuery query): List<VitalSigns>`
  * `handle(GetAbnormalVitalSignsByResidentIdQuery query): List<VitalSigns>`
    **`RiskProfileQueryServiceImpl`**
* **Tipo:** Query Handler (Application Service)
* **Propósito:** Maneja las consultas de lectura sobre perfiles de riesgo.
* **Métodos principales:**
  * `handle(GetRiskProfileByResidentIdQuery query): Optional<RiskProfile>`
---

#### 4.2.2.4. Infrastructure Layer

Esta capa proporciona las implementaciones técnicas de los contratos definidos en
las capas superiores del contexto Tracking.

**`ClinicalAssessmentRepository`**
* **Tipo:** Repository Implementation
* **Propósito:** Implementación concreta de `IClinicalAssessmentRepository`
  utilizando Spring Data JPA para el acceso a la base de datos relacional.
* **Atributos:** Extiende de `JpaRepository<ClinicalAssessment, Long>`.
* **Relaciones:** Mapea la entidad de dominio `ClinicalAssessment` a la tabla
  `clinical_assessments` mediante anotaciones ORM.
  **`MedicalHistoryRepository`**
* **Tipo:** Repository Implementation
* **Propósito:** Implementación concreta de `IMedicalHistoryRepository` utilizando
  Spring Data JPA.
* **Atributos:** Extiende de `JpaRepository<MedicalHistory, Long>`.
* **Relaciones:** Mapea la entidad de dominio `MedicalHistory` a la tabla
  `medical_histories` mediante anotaciones ORM.
  **`VitalSignsRepository`**
* **Tipo:** Repository Implementation
* **Propósito:** Implementación concreta de `IVitalSignsRepository` utilizando
  Spring Data JPA.
* **Atributos:** Extiende de `JpaRepository<VitalSigns, Long>`.
* **Relaciones:** Mapea la entidad de dominio `VitalSigns` a la tabla `vital_signs`
  mediante anotaciones ORM.
  **`RiskProfileRepository`**
* **Tipo:** Repository Implementation
* **Propósito:** Implementación concreta de `IRiskProfileRepository` utilizando
  Spring Data JPA.
* **Atributos:** Extiende de `JpaRepository<RiskProfile, Long>`.
* **Relaciones:** Mapea la entidad de dominio `RiskProfile` a la tabla `risk_profiles`
  mediante anotaciones ORM.
---

#### 4.2.2.5. Bounded Context Software Architecture Component Level Diagrams

El diagrama de componentes muestra la estructura interna del Bounded Context
Tracking, detallando los principales componentes de software que lo conforman y las
relaciones entre ellos. Permite visualizar cómo se organizan las responsabilidades
dentro del contexto y cómo se comunican con otros contextos o servicios externos.

#### 4.2.2.6. Bounded Context Software Architecture Code Level Diagrams

Los diagramas de nivel de código ofrecen una vista detallada de las estructuras
internas del Bounded Context Tracking, mostrando las clases, sus relaciones y el
esquema de base de datos que soporta el modelo del dominio.

##### 4.2.2.6.1. Bounded Context Domain Layer Class Diagrams

El diagrama de clases de la capa de dominio representa las entidades, objetos de
valor, agregados e interfaces que conforman el modelo del negocio del contexto
Tracking. Muestra las relaciones de composición, herencia y dependencia entre los
elementos del dominio.

##### 4.2.2.6.2. Bounded Context Database Design Diagram

El diagrama de diseño de base de datos muestra el esquema de persistencia del
Bounded Context Tracking, incluyendo las tablas, columnas, claves primarias, claves
foráneas y relaciones entre entidades. Refleja las decisiones de modelado de datos
adoptadas para soportar el dominio.

### 4.2.3. Bounded Context: Health

En esta sección, el equipo presenta las clases identificadas y las detalla a manera de
diccionario, explicando para cada una su nombre, propósito y la documentación de
atributos y métodos considerados, junto con las relaciones entre ellas.

#### 4.2.3.1. Domain Layer

Esta capa contiene el núcleo del negocio del contexto Health, incluyendo las
entidades, objetos de valor y abstracciones de repositorios que definen las reglas
de monitoreo continuo de salud del residente, manteniéndose agnóstica de
frameworks externos.

**`VitalSigns`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa el monitoreo continuo de signos vitales de un residente
  admitido, realizado por el personal de salud. Es el agregado raíz que garantiza
  la consistencia del registro, la detección de anomalías y la trazabilidad de
  cambios en la condición del residente a lo largo del tiempo.
* **Atributos:**
  * `id`: Long
  * `residentId`: Long
  * `healthcareStaffId`: Long
  * `bloodPressure`: BloodPressure (Value Object)
  * `heartRate`: Integer
  * `temperature`: Double
  * `oxygenSaturation`: Double
  * `isAbnormal`: boolean
  * `conditionStatus`: ConditionStatus (Value Object / Enum)
  * `recordedAt`: LocalDateTime
  * `observationLog`: String
* **Métodos principales:**
  * `take(): VitalSigns`
  * `record(): VitalSigns`
  * `detectAnomaly(): VitalSigns`
  * `triggerNotification(): VitalSigns`
  * `updateCondition(ConditionStatus status): VitalSigns`
  * `identifyCriticalState(): VitalSigns`
  * `logObservation(String observation): VitalSigns`
* **Relaciones:** Referencia a `Allergy` por residentId. Administrado a través de
  `IVitalSignsRepository`.
  **`Allergy`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa una alergia reportada para un residente, incluyendo
  la clasificación de severidad. Garantiza que toda alergia registrada cuente
  siempre con un nivel de severidad válido, permitiendo al personal de salud
  tomar decisiones clínicas informadas.
* **Atributos:**
  * `id`: Long
  * `residentId`: Long
  * `healthcareStaffId`: Long
  * `allergen`: String
  * `severity`: AllergySeverity (Value Object / Enum)
  * `reportedAt`: LocalDateTime
* **Métodos principales:**
  * `report(String allergen, AllergySeverity severity): Allergy`
  * `updateSeverity(AllergySeverity severity): Allergy`
* **Relaciones:** Pertenece a un residente identificado por `residentId`.
  Administrado a través de `IAllergyRepository`.
  **`BloodPressure`**
* **Tipo DDD:** Value Object
* **Propósito:** Encapsula los valores de presión arterial sistólica y diastólica
  de forma inmutable, permitiendo la validación de rangos normales en el momento
  del registro continuo.
* **Atributos:**
  * `systolic`: Integer
  * `diastolic`: Integer
    **`ConditionStatus`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define los estados válidos de la condición de salud de un residente:
  `STABLE`, `WORSENED`, `IMPROVED`, `CRITICAL`. Garantiza que cualquier cambio
  de condición sea trazable y reconocido por el sistema.
  **`AllergySeverity`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define los niveles de severidad válidos para una alergia:
  `MILD`, `MODERATE`, `SEVERE`, `LIFE_THREATENING`. Asegura que toda alergia
  registrada tenga siempre un nivel de riesgo clasificado.
  **`IVitalSignsRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción que define las operaciones de persistencia
  y recuperación del agregado `VitalSigns` en el contexto Health.
* **Métodos representativos:**
  * `findById(Long id): Optional<VitalSigns>`
  * `findByResidentId(Long residentId): List<VitalSigns>`
  * `findAbnormalByResidentId(Long residentId): List<VitalSigns>`
  * `findByConditionStatus(ConditionStatus status): List<VitalSigns>`
  * `save(VitalSigns vitalSigns): VitalSigns`
    **`IAllergyRepository`**
* **Tipo DDD:** Repository Interface
* **Propósito:** Contrato de abstracción para la persistencia del agregado
  `Allergy`.
* **Métodos representativos:**
  * `findById(Long id): Optional<Allergy>`
  * `findByResidentId(Long residentId): List<Allergy>`
  * `findBySeverity(AllergySeverity severity): List<Allergy>`
  * `save(Allergy allergy): Allergy`
---

#### 4.2.3.2. Interface Layer

La capa de interfaz expone los puntos de entrada al contexto delimitado hacia el exterior, ya sea mediante controladores REST, consumidores de mensajes u otros mecanismos de comunicación. Su responsabilidad es transformar las solicitudes entrantes en comandos o consultas comprensibles por las capas internas.

#### 4.2.3.3. Application Layer

La capa de aplicación orquesta los casos de uso del contexto delimitado. Coordina la interacción entre la capa de dominio y la capa de infraestructura, ejecutando los flujos de negocios sin contener lógica de dominio propia. Aquí se implementan los manejadores de comandos y las consultas de la aplicación.

#### 4.2.3.4. Infrastructure Layer

La capa de infraestructura provee las implementaciones concretas de las interfaces definidas en el dominio, incluyendo repositorios, adaptadores de servicios externos, clientes de mensajería y configuraciones de persistencia. Esta capa gestiona los detalles técnicos que permiten que el sistema funcione sobre la infraestructura elegida.

#### 4.2.3.5. Bounded Context Software Architecture Component Level Diagrams

El diagrama de componentes muestra la estructura interna del contexto delimitado, detallando los principales componentes de software que lo conforman y las relaciones entre ellos. Permite visualizar cómo se organizan las responsabilidades dentro del contexto y cómo se comunican con otros contextos o servicios externos.

#### 4.2.3.6. Bounded Context Software Architecture Code Level Diagrams

Los diagramas de nivel de código ofrecen una vista detallada de las estructuras internas del contexto delimitado, mostrando las clases, sus relaciones y el esquema de base de datos que soporta el modelo del dominio.

##### 4.2.3.6.1. Bounded Context Domain Layer Class Diagrams

El diagrama de clases de la capa de dominio representa las entidades, objetos de valor, agregados e interfaces que conforman el modelo del negocio de contexto delimitado. Muestra las relaciones de composición, herencia y dependencia entre los elementos del dominio.

##### 4.2.3.6.2. Bounded Context Database Design Diagram

El diagrama de diseño de base de datos muestra el esquema de persistencia del contexto delimitado, incluyendo las tablas, columnas, claves primarias, claves foráneas y relaciones entre entidades. Refleja las decisiones de modelado de datos adoptadas para soportar el dominio.

### 4.2.7 Bounded Context: Identity and Access Management (IAM)

En esta sección, el equipo presenta las clases identificadas y las detalla a manera de diccionario, explicando para cada una su nombre, propósito y la documentación de atributos y métodos considerados, junto con las relaciones entre ellas.

#### 4.2.7.1 Domain Layer

Esta capa contiene el núcleo del negocio, incluyendo las entidades, objetos de valor y abstracciones de repositorios que definen las reglas de identidad y acceso, manteniéndose agnóstica de frameworks externos.

**`User`**
* **Tipo DDD:** Aggregate Root
* **Propósito:** Representa la identidad principal de un usuario en el sistema. Es el agregado raíz que asegura la consistencia de las credenciales y la asignación de roles antes de permitir el acceso a otros contextos de la plataforma Veyra.
* **Atributos:**
  * `Id`: Long
  * `Username`: String
  * `Password`: String (Encapsulado conceptualmente como credencial segura)
  * `Roles`: Set<Role>
* **Métodos principales:**
  * `addRole(Role role): User`
  * `addRoles(List<Role> roles): User`
* **Relaciones:** Contiene una colección de la entidad `Role`. Es administrado a través de la abstracción `IUserRepository`.

**`Role`**
* **Tipo DDD:** Entity
* **Propósito:** Representa un nivel de acceso o grupo de permisos asignado a un usuario (ej. Doctor, Nurse, Admin, Relative).
* **Atributos:**
  * `Id`: Long
  * `Name`: Roles (Value Object / Enum)
* **Métodos principales:**
  * `getStringName(): String`
  * `getDefaultRole(): Role` (Estático)
* **Relaciones:** Asociado bidireccional o unidireccionalmente al `User`.

**`Roles`**
* **Tipo DDD:** Value Object (Enum)
* **Propósito:** Define estrictamente los valores de rol permitidos en el sistema (ej. `ROLE_USER`, `ROLE_ADMIN`, `ROLE_FAMILIAR`). Al ser inmutable, garantiza que no existan roles inválidos en tiempo de ejecución.

**`IUserRepository` & `IRoleRepository`**
* **Tipo DDD:** Repository Interfaces
* **Propósito:** Contratos de abstracción que definen las operaciones de persistencia y recuperación de agregados, aislando el dominio de la base de datos.
* **Métodos representativos (`IUserRepository`):**
  * `findByUsername(String username): Optional<User>`
  * `existsByUsername(String username): boolean`
  * `save(User user): User`

#### 4.2.7.2. Application Layer
Esta capa orquesta los casos de uso del negocio. Maneja el flujo del proceso utilizando un patrón CQRS (Command Query Responsibility Segregation) implícito, separando las intenciones de modificación (Commands) de las de lectura (Queries).

**`SignUpCommand` & `SignInCommand`**
* **Propósito:** Objetos inmutables que encapsulan la intención del usuario de registrarse o iniciar sesión, transportando los datos necesarios (Username, Password, Roles) hacia los manejadores.

**`UserCommandServiceImpl`**
* **Tipo:** Command Handler (Application Service)
* **Propósito:** Orquesta los casos de uso de mutación de estado. Valida reglas de negocio de aplicación (ej. verificar si el usuario ya existe vía el repositorio) y delega la creación del token de infraestructura.
* **Atributos inyectados:**
  * `userRepository`: IUserRepository
  * `hashingService`: HashingService
  * `tokenService`: TokenService
* **Métodos principales:**
  * `handle(SignUpCommand command): Optional<User>`
  * `handle(SignInCommand command): Optional<ImmutablePair<User, String>>`

**`UserQueryServiceImpl`**
* **Tipo:** Query Handler (Application Service)
* **Propósito:** Maneja las consultas de lectura sobre el estado de los usuarios, garantizando que estas operaciones no produzcan efectos secundarios (side-effects) en el dominio.
* **Métodos principales:**
  * `handle(GetAllUsersQuery query): List<User>`
  * `handle(GetUserByIdQuery query): Optional<User>`
#### 4.2.7.3. Interface Layer
Esta capa expone los *capabilities* del Bounded Context hacia clientes externos, actuando como la frontera del sistema.

**`AuthenticationController`**
* **Tipo:** REST API Controller
* **Propósito:** Proveer los puntos finales (endpoints) HTTP, recibir las peticiones, des-serializar el JSON en *Resources* y mapearlos a *Commands*.
* **Endpoints expuestos:**
  * `POST /api/v1/authentication/sign-up`
  * `POST /api/v1/authentication/sign-in`
* **Relaciones:** Interactúa con `UserCommandService`. Utiliza clases `Assembler` o `Mapper` para aislar los *Resources* de presentación (`SignUpResource`, `SignInResource`) de los comandos de aplicación.

#### 4.2.7.4. Infrastructure Layer

Esta capa proporciona las implementaciones técnicas de los contratos definidos en las capas superiores.

**`UserRepository` & `RoleRepository`**
* **Tipo:** Repository Implementations
* **Propósito:** Implementaciones concretas utilizando Spring Data JPA para el acceso a la base de datos relacional.
* **Atributos:** Extienden de `JpaRepository<T, ID>`.
* **Relaciones:** Mapean las entidades del dominio a tablas de la base de datos a través de anotaciones ORM.

**`HashingServiceImpl`**
* **Tipo:** Infrastructure Service
* **Propósito:** Implementa la interfaz de dominio/aplicación para la seguridad de contraseñas utilizando un algoritmo criptográfico robusto (`BCryptPasswordEncoder`).

**`TokenServiceImpl`**
* **Tipo:** Infrastructure Service (External)
* **Propósito:** Encargado de la generación, firma y validación de los JSON Web Tokens (JWT) para mantener la sesión *stateless* del sistema tras un inicio de sesión exitoso.
* **Relaciones:** Utilizado por `UserCommandServiceImpl` para empaquetar la identidad confirmada en un token retornable.

#### 4.2.7.5. Bounded Context Software Architecture Component Level Diagrams

El diagrama de componentes muestra la estructura interna del contexto delimitado, detallando los principales componentes de software que lo conforman y las relaciones entre ellos. Permite visualizar cómo se organizan las responsabilidades dentro del contexto y cómo se comunican con otros contextos o servicios externos.

#### 4.2.7.6. Bounded Context Software Architecture Code Level Diagrams

Los diagramas de nivel de código ofrecen una vista detallada de las estructuras internas del contexto delimitado, mostrando las clases, sus relaciones y el esquema de base de datos que soporta el modelo del dominio.

##### 4.2.7.6.1. Bounded Context Domain Layer Class Diagrams

El diagrama de clases de la capa de dominio representa las entidades, objetos de valor, agregados e interfaces que conforman el modelo del negocio de contexto delimitado. Muestra las relaciones de composición, herencia y dependencia entre los elementos del dominio.

##### 4.2.7.6.2. Bounded Context Database Design Diagram

El diagrama de diseño de base de datos muestra el esquema de persistencia del contexto delimitado, incluyendo las tablas, columnas, claves primarias, claves foráneas y relaciones entre entidades. Refleja las decisiones de modelado de datos adoptadas para soportar el dominio.

