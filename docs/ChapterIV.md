# Capítulo IV: Solution Software Design

Este capítulo describe el diseño de la solución de software para la plataforma Veyra, abordando tanto el nivel estratégico como el nivel táctico del diseño orientado al dominio (DDD). Se presentan las decisiones de arquitectura, la organización de los contextos delimitados y los modelos que guían la implementación de un sistema de monitoreo de signos vitales en tiempo real —frecuencia cardíaca, temperatura corporal, saturación de oxígeno y presión arterial— orientado a casas de reposo para adultos mayores. 

## 4.1. Strategic-Level Domain-Driven Design

El diseño estratégico establece los límites y responsabilidades de cada área del sistema a partir del lenguaje del negocio. En el contexto de Veyra, esto implica delimitar áreas funcionales como la captura y transmisión de datos desde dispositivos IoT, el monitoreo de signos vitales y la gestión de alertas clínicas, la administración de residentes y personal, el control de acceso de usuarios, y la gestión de suscripciones institucionales. En esta sección se identifican los contextos delimitados, se modela el flujo de mensajes entre ellos y se define cómo se relacionan entre sí, sentando las bases para una arquitectura modular, mantenible y alineada con las necesidades reales de la plataforma.

### 4.1.1. Design-Level EventStorming

El EventStorming es una técnica colaborativa de modelado que permite explorar el dominio del negocio a partir de los eventos relevantes que ocurren en el sistema. A través de esta práctica, el equipo identificó los flujos de información, los actores involucrados y las fronteras naturales entre las distintas áreas funcionales de la plataforma Veyra. Eventos como la recepción de una lectura de signos vitales desde un dispositivo IoT, la detección de una anomalía fuera del rango configurado, el disparo de una alerta hacia el personal o los familiares, o el registro de un nuevo residente, permitieron delimitar las responsabilidades de cada área del sistema y visibilizar las dependencias entre ellas.

## Paso 1: Brainstorming (Unstructured Exploration)

El primer paso consistió en realizar una exploración sin estructura para identificar todos los posibles eventos del dominio. Durante esta etapa, el equipo analizó criterios como la frecuencia y relevancia de eventos, identificando una variedad de situaciones que los diferentes actores del sistema pueden experimentar, tales como "Resident Admitted", "Vital Signs Taken", "Medication Administered", "Visit Authorized", "Care Plan Created", "Shift Started", "User Signed In", "Subscription Purchased", "Admission Request Received" y "Role Assigned", entre otros. Esta exploración libre permitió capturar el dominio en su totalidad sin restricciones previas.

![Step 1 - Brainstorming](assets/img/chapter-IV/design-level-event-storming/design-level-event-storming-step-1.png)


## Paso 2: Timelines

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

![Step 2 - Timelines](assets/img/chapter-IV/design-level-event-storming/design-level-event-storming-step-2.png)


## Paso 3: Commands

En este paso definimos los comandos que los diferentes actores pueden ejecutar en el sistema. Los comandos representan las intenciones o acciones que desencadenan eventos en el dominio.

| Actor | Comandos |
|-------|----------|
| **Admin** | Assign Roles, Sign In, Sign Up, Create Person Profile, Create Business Profile, Update Person Profile, Change Password, Disable Person Profile, Hire Staff Member, Verify Credentials, Assign Nurse, Assign Care Task, Assign Replacement, Approve Admission, Reject Admission, Waitlist Admission, Cancel Admission, Submit Admission Request, Register Personal Information, Assign Relative, Assign Room, Admit Resident |
| **Doctor** | Create Care Plan, Evaluate Care Plan, Record Diagnosis, Adjust Dosage, Prescribe Medication, Create Medical History |
| **Healthcare Staff** | Take Vital Signs, Record Vital Signs, Administer Medication, Start Shift, Report Absence, Log Meal, Log Bath, Log Hygiene Care, Complete Care Task, End Shift, Log Observation |
| **Relative** | Submit Resident Documents, Schedule Visit, Process Payment |

![Step 3 - Commands](assets/img/chapter-IV/design-level-event-storming/design-level-event-storming-step-3.png)


## Paso 4: Policies and Actors

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

![Step 4 - Policies and Actors](assets/img/chapter-IV/design-level-event-storming/design-level-event-storming-step-4.png)


## Paso 5: Read Models

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

![Step 5 - Read Models](assets/img/chapter-IV/design-level-event-storming/design-level-event-storming-step-5.png)


## Paso 6: External Systems

En este paso identificamos los sistemas externos que interactúan con el dominio pero que están fuera del control directo del sistema.

- **Cloudinary:** sistema externo de gestión de imágenes utilizado para almacenar y gestionar las fotos de perfil de los usuarios y residentes.
- **Stripe:** sistema externo de procesamiento de pagos utilizado para gestionar las transacciones de suscripciones y pagos de admisión.
- **Notification Service:** sistema encargado de enviar notificaciones automáticas a familiares y personal médico ante cambios en el estado de visitas, condiciones críticas del residente o alertas de medicación.

![Step 6 - External Systems](assets/img/chapter-IV/design-level-event-storming/design-level-event-storming-step-6.png)


## Paso 7: Add Aggregates

En este paso identificamos los Aggregates, que representan los objetos de dominio centrales que agrupan entidades relacionadas y se tratan como una sola unidad. Cada aggregate actúa como el punto central alrededor del cual giran los eventos y comandos de cada flujo.

| Aggregate | Bounded Context | Descripción |
|-----------|----------------|-------------|
| **Role** | BC: Role Management | Agrupa el usuario, sus roles asignados y permisos de acceso al sistema. |
| **User** | BC: Role Management | Agrupa las credenciales de acceso, estado de sesión y tipo de usuario. |
| **Profile** | BC: Profile Management | Agrupa el perfil de persona o negocio, foto, contraseña y estado en la plataforma. |
| **Subscription** | BC: Subscription & Payments | Agrupa el plan seleccionado, estado de suscripción y fecha de vigencia. |
| **Pay** | BC: Subscription & Payments | Agrupa los detalles de pago, método de pago y estado de la transacción. |
| **Resident** | BC: Application Management | Agrupa los documentos del residente, información personal y estado de la solicitud. |
| **Admission Request** | BC: Application Management | Agrupa la solicitud de admisión, cotización, documentos verificados y estado de aprobación. |
| **Admission** | BC: Admission & Billing | Agrupa la admisión formal, proceso de pago, asignación de habitación y familiar responsable. |
| **Invoice** | BC: Admission & Billing | Agrupa la factura emitida, detalles de pago y estado de la transacción. |
| **Medical History** | BC: Admission & Billing | Agrupa el historial médico creado durante la admisión formal del residente. |
| **Clinical Assessment** | BC: Clinical Assessment | Agrupa la evaluación médica inicial, historial médico, signos vitales y perfil de riesgo. |
| **Care Plan** | BC: Care Plan Management | Agrupa el plan de cuidado, medicamentos prescritos, agenda de medicación y estado del plan. |
| **Staff Assignment** | BC: Staff Management | Agrupa el miembro del personal, credenciales, rol y residente asignado. |
| **Shift Record** | BC: Staff Management | Agrupa el turno, Healthcare Staff asignado, horario, tareas completadas y estado del turno. |
| **Medication Record** | BC: Medication Management | Agrupa el medicamento, residente, dosis, Healthcare Staff que lo administró y timestamp. |
| **Daily Care Record** | BC: Daily Care | Agrupa las actividades diarias de cuidado: comida, higiene, baño, movilidad, hidratación y actividad recreativa. |
| **Vital Signs Record** | BC: Health Monitoring | Agrupa la lectura del signo vital, residente, timestamp, enfermera y estado (normal/anormal). |
| **Visit** | BC: Visit Management | Agrupa la visita, estado de autorización, restricciones, familiar y residente. |

![Step 7 - Add Aggregates](assets/img/chapter-IV/design-level-event-storming/design-level-event-storming-step-7.png)


## Paso 8: Bounded Contexts

Finalmente, definimos los Bounded Contexts que agrupan los flujos relacionados en contextos delimitados con responsabilidades claras. Cada Bounded Context representa un subdominio independiente con su propio lenguaje ubicuo.

| Bounded Context | Flujo | Descripción |
|----------------|-------|-------------|
| **BC: Role Management** | IAM Flow | Gestiona la identidad, autenticación y asignación de roles de los usuarios del sistema. |
| **BC: Profile Management** | Profiles Flow | Gestiona la creación, actualización y desactivación de perfiles de persona y negocio. |
| **BC: Subscription & Payments** | Subscription Flow | Gestiona la selección, contratación, cancelación de planes de suscripción y procesamiento de pagos. |
| **BC: Application Management** | Pre-admission and Application Flow | Gestiona el proceso de solicitud de admisión, verificación de documentos y emisión de cotización. |
| **BC: Resident Registration** | Resident Registration and Formal Admission Flow | Gestiona el registro formal del residente en la plataforma. |
| **BC: Admission & Billing** | Resident Registration and Formal Admission Flow | Gestiona la admisión formal, facturación, creación del historial médico y asignación de habitación. |
| **BC: Clinical Assessment** | Initial Clinical Assessment Flow | Gestiona la evaluación clínica inicial del residente al momento de su admisión. |
| **BC: Care Plan Management** | Care and Treatment Plan Flow | Gestiona la creación, seguimiento y cierre del plan de cuidado y tratamiento del residente. |
| **BC: Staff Management** | Staff Allocation and Operation Flow | Gestiona la contratación, asignación y operación del personal de cuidado. |
| **BC: Medication Management** | Medication Management Workflow | Gestiona el ciclo completo de medicamentos: stock, administración, rechazo y reacciones adversas. |
| **BC: Daily Care** | Resident's Daily Care Flow | Gestiona el registro de actividades diarias de cuidado del residente. |
| **BC: Health Monitoring** | Continuous Monitoring Flow | Gestiona el monitoreo continuo de signos vitales y la detección de estados críticos. |
| **BC: Visit Management** | Interaction Flow with Family Members | Gestiona la autorización, restricción y registro de visitas de familiares. |

![Step 8 - Bounded Contexts](assets/img/chapter-IV/design-level-event-storming/design-level-event-storming-step-8.png)


## Enlace al tablero de Miro

El tablero completo del Event Storming puede ser consultado en el siguiente enlace:

[Ver tablero en Miro](https://miro.com/app/board/uXjVHfIKGvE=/?share_link_id=903651467736)

#### 4.1.1.1. Candidate Context Discovery

En esta etapa se identificaron los candidatos a contextos delimitados del sistema. A partir del análisis de los eventos del dominio de Veyra, se agruparon las responsabilidades relacionadas y se definieron las fronteras preliminares de cada contexto, considerando la cohesión funcional y el lenguaje ubicuo de cada área de negocio. El proceso condujo a la identificación de contextos candidatos en torno a la captura y transmisión de datos IoT, el monitoreo clínico y la gestión de alertas, la administración de residentes e historial clínico, el control de acceso de usuarios, y la gestión de suscripciones y pagos institucionales.

#### 4.1.1.2. Domain Message Flows Modeling

El modelado de flujos de mensajes describe cómo los distintos contextos delimitados se comunican entre sí a través de eventos y comandos. En Veyra, estos flujos incluyen la propagación de lecturas de signos vitales desde el contexto de dispositivos IoT hacia el contexto de monitoreo, la emisión de alertas clínicas hacia el contexto de notificaciones cuando se detecta una anomalía, y la sincronización del estado de suscripción entre el contexto de pagos y el de control de acceso. Este modelo permite visualizar las dependencias entre contextos, los puntos de integración y el flujo de información a lo largo de los procesos clave de la plataforma.

#### 4.1.1.3. Bounded Context Canvases

Los Bounded Context Canvases documentan en detalle cada contexto delimitado identificado, especificando su propósito, el lenguaje ubicuo que lo rige, sus responsabilidades, las dependencias con otros contextos y los mecanismos de colaboración. Este artefacto sirve como referencia compartida entre el equipo técnico y el negocio.

### 4.1.2. Context Mapping

El Context Mapping describe las relaciones y los patrones de integración entre los contextos delimitados del sistema. A través de este mapa se establecen los tipos de colaboración entre contextos —como cliente-proveedor, conformista o anticorrupción— y se identifican los contratos de comunicación que garantizan la consistencia del sistema en su conjunto. En Veyra, este mapa es especialmente relevante para definir cómo el contexto de dispositivos IoT alimenta al de monitoreo clínico, cómo el contexto de alertas depende del de monitoreo, y cómo los contextos de suscripción y control de acceso colaboran para regular el uso de la plataforma por parte de las instituciones y los familiares.

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

### 4.2.1. Bounded Context: \<Bounded Context Name\>

Este bounded context encapsula las responsabilidades relacionadas con \<área funcional\>. A continuación se describen las capas que lo componen, siguiendo la arquitectura en capas propia del diseño táctico de DDD, y se presentan los diagramas que detallan su estructura interna y modelo de datos.

#### 4.2.1.1. Domain Layer

La capa de dominio contiene los elementos centrales del modelo de negocio: entidades, objetos de valor, agregados, eventos de dominio e interfaces de repositorio. Esta capa es independiente de cualquier tecnología o framework y representa las reglas e invariantes propias del contexto delimitado.

#### 4.2.1.2. Interface Layer

La capa de interfaz expone los puntos de entrada al contexto delimitado hacia el exterior, ya sea mediante controladores REST, consumidores de mensajes u otros mecanismos de comunicación. Su responsabilidad es transformar las solicitudes entrantes en comandos o consultas comprensibles por las capas internas.

#### 4.2.1.3. Application Layer

La capa de aplicación orquesta los casos de uso del contexto delimitado. Coordina la interacción entre la capa de dominio y la capa de infraestructura, ejecutando los flujos de negocio sin contener lógica de dominio propia. Aquí se implementan los manejadores de comandos y las consultas de la aplicación.

#### 4.2.1.4. Infrastructure Layer

La capa de infraestructura provee las implementaciones concretas de las interfaces definidas en el dominio, incluyendo repositorios, adaptadores de servicios externos, clientes de mensajería y configuraciones de persistencia. Esta capa gestiona los detalles técnicos que permiten que el sistema funcione sobre la infraestructura elegida.

#### 4.2.1.5. Bounded Context Software Architecture Component Level Diagrams

El diagrama de componentes muestra la estructura interna del contexto delimitado, detallando los principales componentes de software que lo conforman y las relaciones entre ellos. Permite visualizar cómo se organizan las responsabilidades dentro del contexto y cómo se comunican con otros contextos o servicios externos.

#### 4.2.1.6. Bounded Context Software Architecture Code Level Diagrams

Los diagramas de nivel de código ofrecen una vista detallada de las estructuras internas del contexto delimitado, mostrando las clases, sus relaciones y el esquema de base de datos que soporta el modelo de dominio.

##### 4.2.1.6.1. Bounded Context Domain Layer Class Diagrams

El diagrama de clases de la capa de dominio representa las entidades, objetos de valor, agregados e interfaces que conforman el modelo de negocio del contexto delimitado. Muestra las relaciones de composición, herencia y dependencia entre los elementos del dominio.

##### 4.2.1.6.2. Bounded Context Database Design Diagram

El diagrama de diseño de base de datos muestra el esquema de persistencia del contexto delimitado, incluyendo las tablas, columnas, claves primarias, claves foráneas y relaciones entre entidades. Refleja las decisiones de modelado de datos adoptadas para soportar el dominio.
