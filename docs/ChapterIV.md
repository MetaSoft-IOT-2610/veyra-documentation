# Capítulo IV: Solution Software Design

Este capítulo describe el diseño de la solución de software para la plataforma Veyra, abordando tanto el nivel estratégico como el nivel táctico del diseño orientado al dominio (DDD). Se presentan las decisiones de arquitectura, la organización de los contextos delimitados y los modelos que guían la implementación de un sistema de monitoreo de signos vitales en tiempo real —frecuencia cardíaca, temperatura corporal, saturación de oxígeno y presión arterial— orientado a casas de reposo para adultos mayores. 

## 4.1. Strategic-Level Domain-Driven Design

El diseño estratégico establece los límites y responsabilidades de cada área del sistema a partir del lenguaje del negocio. En el contexto de Veyra, esto implica delimitar áreas funcionales como la captura y transmisión de datos desde dispositivos IoT, el monitoreo de signos vitales y la gestión de alertas clínicas, la administración de residentes y personal, el control de acceso de usuarios, y la gestión de suscripciones institucionales. En esta sección se identifican los contextos delimitados, se modela el flujo de mensajes entre ellos y se define cómo se relacionan entre sí, sentando las bases para una arquitectura modular, mantenible y alineada con las necesidades reales de la plataforma.

### 4.1.1. Design-Level EventStorming

El EventStorming es una técnica colaborativa de modelado que permite explorar el dominio del negocio a partir de los eventos relevantes que ocurren en el sistema. A través de esta práctica, el equipo identificó los flujos de información, los actores involucrados y las fronteras naturales entre las distintas áreas funcionales de la plataforma Veyra. Eventos como la recepción de una lectura de signos vitales desde un dispositivo IoT, la detección de una anomalía fuera del rango configurado, el disparo de una alerta hacia el personal o los familiares, o el registro de un nuevo residente, permitieron delimitar las responsabilidades de cada área del sistema y visibilizar las dependencias entre ellas.

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