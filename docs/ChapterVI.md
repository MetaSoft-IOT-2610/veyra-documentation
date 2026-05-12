# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

### 6.1.1. Software Development Environment Configuration

### 6.1.2. Source Code Management

### 6.1.3. Source Code Style Guide & Conventions

### 6.1.4. Software Deployment Configuration

## 6.2. Landing Page, Services & Applications Implementation

### 6.2.1. Sprint 1

El primer sprint se centró en sentar las bases tecnológicas de VEYRA, logrando el desarrollo tanto del backend como de la interfaz web. Paralelamente, se puso en desarrollo la landing page, optimizada para la presentación del negocio y publicada mediante GitHub Pages para garantizar su accesibilidad inmediata.

#### 6.2.1.1. Sprint Planning

Se realizó el sprint planning con el objetivo de definir las tareas y objetivos para el primer sprint, enfocándonos en el desarrollo del backend, la interfaz web y la landing page. Durante la planificación, se asignaron responsabilidades a cada miembro del equipo y se estableció la meta del sprint.

| Sprint #                        | Sprint 1                                                                                                                                                                                                                                                                                                     |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Sprint Planning Background      |                                                                                                                                                                                                                                                                                                              |
| Date                            | 04/05/2026                                                                                                                                                                                                                                                                                                   |
| Time                            | 03:00 PM                                                                                                                                                                                                                                                                                                     |
| Location                        | Servidor de Discord del Equipo                                                                                                                                                                                                                                                                               |
| Prepared By                     | Janover Saldaña                                                                                                                                                                                                                                                                                                |
| Attendees (to planning meeting) | Janover Saldaña / Dayro Rios / Vicente Quijandria / Renato Calvo / Renzo Llerena / Renzo Villafuerte / Oscar Armas                                                                                                                                                                                                                      |
| Sprint 0 Review Summary         | N/A (primer entregable del proyecto)                                                                                                              |
| Sprint 0 Retrospective Summary  | N/A (primer entregable del proyecto)                                                                                                         |
| Sprint Goal & User Stories      |         |
| Sprint 1 Goal                   | Our focus is on delivering the first version of Veyra's landing page to the visitors, that clearly communicates the business value, the value proposition and service offerings to first-time visitors to the site. Also the first version of Veyra's web application with core features and views such as nursing, activities and communications <br> We believe it delivers a clear definition of Veyra and our goal and commitment with our customers, giving them the core features of Veyra's web application <br> This will be confirmed when visitors access to the landing page and web application to try the features added and implemented by the Veyra development team |
| Sprint 1 Velocity               | 105 Velocity                                                                                                                                                                                                                                                                                                  |
| Sum of Story Points             |  105 Story Points.                                                                                                                                                                                                                                                                                             |

#### 6.2.1.2. Aspect Leaders and Collaborators

Se designaron líderes para cada uno de los aspectos clave del proyecto, con el objetivo de garantizar una gestión eficiente y una clara asignación de responsabilidades. Cada líder se encargará de coordinar las actividades relacionadas con su aspecto, mientras que los colaboradores apoyarán en la ejecución de las tareas asignadas.
 
| Team Member (Last Name, First Name) | Aspect: Nursing | Aspect: Activities |Aspect: Health | Aspect: Tracking | Aspect: Subscriptions and payments | Aspect: Communications |
|-------------------------------------|---------|---------|-------|----------|-----------|---------|
| Calvo Yalan, Renato Guillermo       | L       | C       | C     |  C       | C        | C       |
| Armas Sánchez, Oscar Javier         | C       | L       | C     |  C       | C        | C       |
| Rios Piñan, Dayro Richard           | C       | C       | C     |  C       | C        | C       |
| Llerena Delgado, Renzo Miguel       | C       | C       | C     |  C       | L        | C       |
| 	Quijandria Araneda, Vicente       | C       | C       | C     |  L       | C        | C       |
| 	Saldaña Vela, Janover Gonzalo     | C       | C       | C     |  C       | C        | L       |
| 	Villafuerte Tapia, Renzo Alonso    | C      | C       | L     |  C       | C        | C       |


#### 6.2.1.3. Sprint Backlog

Se repartieron las tareas del sprint entre los miembros del equipo, asignando responsabilidades claras para cada user story y work-item. El backlog se organizó de manera que se priorizaron las tareas críticas para el desarrollo de la landing page y la implementación de las funcionalidades básicas de la aplicación web. 

A continuación se presenta el backlog detallado para el Sprint 1:

| Sprint # | Sprint 1 | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **User Story** | | **Work-Item / Task** | | | | | |
| **Id** | **Title** | **Id** | **Title** | **Description** | **Estimation (Hours)** | **Assigned To** | **Status (To-do / In-Process / To-Review / Done)** |
| US-01 | Presentación de la propuesta de valor | 1 | Maquetación UI Hero | Diseño de la sección principal con copy persuasivo. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-01 | Presentación de la propuesta de valor | 2 | CTA e Integración visual | Configuración de botones y carga de multimedia. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-01 | Presentación de la propuesta de valor | 3 | Optimización de activos | Compresión de imágenes y carga diferida. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-02 | Navegación por secciones del sitio | 1 | Navbar Responsivo | Implementación del menú principal y toggle móvil. | 2 | Quijandria Araneda, Vicente | Done |
| US-02 | Navegación por secciones del sitio | 2 | Lógica de Smooth Scroll | Navegación fluida entre anchors de la landing. | 1 | Rios Piñan, Dayro Richard | Done |
| US-03 | Consulta de características de la plataforma | 1 | Grid de Características | Maquetación de tarjetas con iconos descriptivos. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-03 | Consulta de características de la plataforma | 2 | Sección de Beneficios | Implementación de bloques de texto y contenido SEO. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-03 | Consulta de características de la plataforma | 3 | Animaciones de scroll | Efectos de entrada para los elementos de UI. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-04 | Consulta de planes de suscripción | 1 | Tabla Comparativa UI | Maquetación de la tabla de precios y beneficios. | 3 | Armas Sánchez, Oscar Javier | Done |
| US-04 | Consulta de planes de suscripción | 2 | Lógica de Switch de Precios | Cambio dinámico entre modalidad mensual y anual. | 2 | Llerena Delgado, Renzo Miguel | Done |
| US-05 | Inicio del registro desde un plan seleccionado | 1 | Lógica de Redirección | Captura de ID de plan y envío a registro. | 1 | Quijandria Araneda, Vicente | Done |
| US-05 | Inicio del registro desde un plan seleccionado | 2 | Persistencia de selección | Pre-seleccionado del plan en el formulario destino. | 1 | Rios Piñan, Dayro Richard | Done |
| US-06 | Consulta del equipo y la empresa | 1 | Sección "Nosotros" | Texto institucional y visión de la empresa. | 1 | Saldaña Vela, Janover Gonzalo | Done |
| US-06 | Consulta del equipo y la empresa | 2 | Grid de Perfiles | Cards con fotos y roles de los integrantes. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-06 | Consulta del equipo y la empresa | 3 | Enlaces a perfiles | Integración de botones a LinkedIn de integrantes. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-07 | Visualización de testimonios de usuarios | 1 | Implementación de Carrusel | Componente interactivo para rotar reseñas. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-07 | Visualización de testimonios de usuarios | 2 | Mock de datos testimoniales | Estructura JSON con nombres, fotos y citas reales. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-08 | Acceso a redes sociales | 1 | Footer de Redes | Iconos enlazados a perfiles oficiales. | 1 | Quijandria Araneda, Vicente | Done |
| US-08 | Acceso a redes sociales | 2 | Validación de enlaces | Pruebas de redirección y apertura en nueva pestaña. | 1 | Rios Piñan, Dayro Richard | Done |
| US-09 | Información disponible en el idioma elegido | 1 | Setup de i18next | Configuración del motor de traducción. | 3 | Saldaña Vela, Janover Gonzalo | Done |
| US-09 | Información disponible en el idioma elegido | 2 | Catálogos ES/EN | Traducción completa de textos de la landing page. | 3 | Villafuerte Tapia, Renzo Alonso | Done |
| US-09 | Información disponible en el idioma elegido | 3 | Selector UI de Idioma | Menú desplegable para cambio de idioma. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-10 | Acceso a documentos legales | 1 | Estructura de Páginas Legales | Layout para términos y política de privacidad. | 1 | Armas Sánchez, Oscar Javier | Done |
| US-10 | Acceso a documentos legales | 2 | Integración de Texto Legal | Carga de contenido proporcionado por legal. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-11 | Monitoreo de signos vitales en tiempo real | 1 | Componente Real-time Chart | Visualización gráfica de signos entrantes. | 5 | Quijandria Araneda, Vicente | Done |
| US-11 | Monitoreo de signos vitales en tiempo real | 2 | Socket Listener Cliente | Recepción de eventos desde el servidor IoT. | 3 | Rios Piñan, Dayro Richard | Done |
| US-11 | Monitoreo de signos vitales en tiempo real | 3 | Sistema de reconexión | Lógica de reintento de conexión WebSocket. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-12 | Detalle de signos vitales de un residente | 1 | Vista de Detalle Clínico | Tabla con valores exactos y marcas de tiempo. | 3 | Villafuerte Tapia, Renzo Alonso | Done |
| US-12 | Detalle de signos vitales de un residente | 2 | Filtros de consulta rápida | Botones de 1h, 6h, 12h para vistas rápidas. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-13 | Consulta de signos actuales por el médico | 1 | Vista de Supervisión Médica | Dashboard simplificado para triaje médico. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-13 | Consulta de signos actuales por el médico | 2 | Indicadores de criticidad | Colorización de valores según rangos configurados. | 2 | Llerena Delgado, Renzo Miguel | Done |
| US-17 | Consulta del historial clínico | 1 | Timeline UI de Eventos | Maquetación cronológica del historial. | 3 | Quijandria Araneda, Vicente | Done |
| US-17 | Consulta del historial clínico | 2 | Paginación de Historial | Carga eficiente de registros pasados. | 3 | Rios Piñan, Dayro Richard | Done |
| US-17 | Consulta del historial clínico | 3 | Buscador por palabras clave | Filtro de texto para notas clínicas. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-18 | Consulta de historial clínico por el médico | 1 | Filtros de Búsqueda Médica | Filtros por tipo de evento clínico. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-18 | Consulta de historial clínico por el médico | 2 | Exportación a PDF | Generación de reporte de historial para revisión. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-19 | Registro de evento clínico | 1 | Formulario de Registro | Input de descripción, tipo y fecha/hora. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-19 | Registro de evento clínico | 2 | API Endpoint Registro | Persistencia del evento en el historial del residente. | 2 | Llerena Delgado, Renzo Miguel | Done |
| US-20 | Definición de parámetros clínicos | 1 | UI de Configuración de Rangos | Inputs para Min/Max de signos vitales. | 3 | Quijandria Araneda, Vicente | Done |
| US-20 | Definición de parámetros clínicos | 2 | Validaciones de Umbrales | Lógica para evitar rangos invertidos o ilógicos. | 3 | Rios Piñan, Dayro Richard | Done |
| US-20 | Definición de parámetros clínicos | 3 | Persistencia de parámetros | Guardado en base de datos de umbrales médicos. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-21 | Modificación de parámetros clínicos | 1 | Lógica de Actualización | Update de parámetros en el perfil residente. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-21 | Modificación de parámetros clínicos | 2 | Registro de Auditoría | Guardado de rastro de quién cambió los parámetros. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-22 | Consulta de parámetros configurados | 1 | Vista de Rangos Vigentes | Visualización clara de umbrales actuales. | 1 | Armas Sánchez, Oscar Javier | Done |
| US-22 | Consulta de parámetros configurados | 2 | Historial de Parámetros | Consulta de rangos anteriores aplicados. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-23 | Listado de residentes | 1 | Tabla Principal de Gestión | Lista con nombres, estados y responsables. | 3 | Quijandria Araneda, Vicente | Done |
| US-23 | Listado de residentes | 2 | Buscador de Residentes | Filtro de texto por nombre y apellidos. | 2 | Rios Piñan, Dayro Richard | Done |
| US-23 | Listado de residentes | 3 | Filtro por estado activo | Vista segmentada de residentes vigentes. | 1 | Saldaña Vela, Janover Gonzalo | Done |
| US-24 | Desactivación del perfil de un residente | 1 | Diálogo de Confirmación | Modal de advertencia antes de desactivar. | 1 | Villafuerte Tapia, Renzo Alonso | Done |
| US-24 | Desactivación del perfil de un residente | 2 | Lógica de Baja Lógica | Cambio de estado a inactivo en base de datos. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-25 | Registro de residente | 1 | Formulario de Alta Completo | Captura de datos personales y médicos. | 3 | Armas Sánchez, Oscar Javier | Done |
| US-25 | Registro de residente | 2 | Validación de Duplicidad | Verificación de DNI en tiempo real contra DB. | 2 | Llerena Delgado, Renzo Miguel | Done |
| US-25 | Registro de residente | 3 | Gestión de estados iniciales | Seteo de valores por defecto al registrar. | 1 | Quijandria Araneda, Vicente | Done |
| US-26 | Edición de datos de perfil de residente | 1 | Formulario de Edición | Pre-carga de datos y edición de campos. | 2 | Rios Piñan, Dayro Richard | Done |
| US-26 | Edición de datos de perfil de residente | 2 | Servicio de Subida de Fotos | Integración con Cloudinary para foto de perfil. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-27 | Vinculación de familiar a un residente | 1 | Selector de Relación | Interfaz para elegir residente y familiar. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-27 | Vinculación de familiar a un residente | 2 | Registro de Vínculo | Persistencia de la relación familiar-residente en DB. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-28 | Registro de familiar en el sistema | 1 | Formulario Registro Familiar | Captura de datos y validación de correo. | 3 | Armas Sánchez, Oscar Javier | Done |
| US-28 | Registro de familiar en el sistema | 2 | Servicio de Envío de Correo | Envío automático de credenciales iniciales. | 2 | Llerena Delgado, Renzo Miguel | Done |
| US-28 | Registro de familiar en el sistema | 3 | Generación de clave temporal | Lógica de seguridad para primer acceso. | 1 | Quijandria Araneda, Vicente | Done |
| US-29 | Registro de personal asistencial | 1 | Formulario Alta Staff | Registro de datos laborales y contacto. | 3 | Rios Piñan, Dayro Richard | Done |
| US-29 | Registro de personal asistencial | 2 | Asignación de Roles Staff | Configuración de permisos de acceso. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-30 | Registro de nuevo médico | 1 | Formulario Alta Médico | Registro con número de colegiatura. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-30 | Registro de nuevo médico | 2 | Validación Profesional | Comprobación de integridad de datos médicos. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-31 | Asignación de residentes a personal | 1 | UI de Asignación Masiva | Panel de drag/drop o selección múltiple. | 3 | Armas Sánchez, Oscar Javier | Done |
| US-31 | Asignación de residentes a personal | 2 | Lógica de Conflictos | Alerta si un residente ya tiene responsable. | 3 | Llerena Delgado, Renzo Miguel | Done |
| US-31 | Asignación de residentes a personal | 3 | Historial de asignaciones | Trazabilidad de cambios de responsables. | 2 | Quijandria Araneda, Vicente | Done |
| US-32 | Edición del perfil de personal asistencial | 1 | Actualización de Datos Staff | Formulario de cambios en perfil laboral. | 2 | Rios Piñan, Dayro Richard | Done |
| US-32 | Edición del perfil de personal asistencial | 2 | Gestión de Turnos Staff | Cambio de horarios asignados en el perfil. | 1 | Saldaña Vela, Janover Gonzalo | Done |
| US-33 | Edición del perfil de un médico | 1 | Actualización Datos Médico | Modificación de especialidad y contacto. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-33 | Edición del perfil de un médico | 2 | Auditoría de Cambios Médico | Trazabilidad de ediciones en perfil médico. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-34 | Desactivación del perfil de personal | 1 | Revocación de Tokens | Cierre inmediato de sesiones activas del usuario. | 1 | Armas Sánchez, Oscar Javier | Done |
| US-34 | Desactivación del perfil de personal | 2 | Desvinculación de Residentes | Alerta de residentes que quedan sin responsable. | 2 | Llerena Delgado, Renzo Miguel | Done |
| US-34 | Desactivación del perfil de personal | 3 | Limpieza de cache de sesión | Borrado de datos locales del usuario inactivo. | 1 | Quijandria Araneda, Vicente | Done |
| US-35 | Registro y vinculación de dispositivo | 1 | CRUD de Hardware IoT | Registro de Device ID en el sistema. | 2 | Rios Piñan, Dayro Richard | Done |
| US-35 | Registro y vinculación de dispositivo | 2 | Lógica de Enlace Residente | Vinculación lógica Device <-> Resident. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-36 | Desvinculación de dispositivo | 1 | Lógica de Reset de Vínculo | Liberación de dispositivo para nuevo uso. | 1 | Villafuerte Tapia, Renzo Alonso | Done |
| US-36 | Desvinculación de dispositivo | 2 | Limpieza de Buffer de Señal | Detención de procesamiento para el residente previo. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-37 | Consulta de dispositivos registrados | 1 | Listado General IoT | Tabla de dispositivos con estado (on/off). | 2 | Armas Sánchez, Oscar Javier | Done |
| US-37 | Consulta de dispositivos registrados | 2 | Filtros de Asignación | Ver dispositivos sin vincular. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-37 | Consulta de dispositivos registrados | 3 | Reporte de conectividad | Estadísticas de uptime de dispositivos. | 2 | Quijandria Araneda, Vicente | Done |
| US-38 | Creación de tarea de cuidado | 1 | Formulario Nueva Tarea | Input de actividad, hora y residente. | 2 | Rios Piñan, Dayro Richard | Done |
| US-38 | Creación de tarea de cuidado | 2 | Programador de Turnos | Asignación de la tarea al turno correspondiente. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-39 | Registro de cumplimiento de tarea | 1 | UI Checklist de Tareas | Marcado de tarea completada en panel diario. | 1 | Villafuerte Tapia, Renzo Alonso | Done |
| US-39 | Registro de cumplimiento de tarea | 2 | Timestamp de Cierre | Registro automático de hora de cumplimiento. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-40 | Consulta de tareas pendientes | 1 | Panel Tareas del Turno | Vista filtrada por personal logueado. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-40 | Consulta de tareas pendientes | 2 | Alertas de Tareas Vencidas | Notificación visual de retrasos en cuidado. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-40 | Consulta de tareas pendientes | 3 | Agrupación por Residente | Vista consolidada de tareas por paciente. | 1 | Quijandria Araneda, Vicente | Done |
| US-41 | Consulta de tareas del turno anterior | 1 | Histórico de Relevo | Vista de tareas cerradas en turno previo. | 2 | Rios Piñan, Dayro Richard | Done |
| US-41 | Consulta de tareas del turno anterior | 2 | Notas de Observación | Lectura de comentarios dejados por el staff saliente. | 1 | Saldaña Vela, Janover Gonzalo | Done |
| US-42 | Prescripción de tratamiento | 1 | Módulo de Receta Médica | Formulario de fármaco, dosis e indicaciones. | 3 | Villafuerte Tapia, Renzo Alonso | Done |
| US-42 | Prescripción de tratamiento | 2 | Generador de Calendario | Creación de tomas automáticas según frecuencia. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-42 | Prescripción de tratamiento | 3 | Alerta de contraindicaciones | Validación básica de choques de fármacos. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-43 | Modificación de tratamiento activo | 1 | UI Ajuste de Dosis | Cambio rápido de parámetros de receta. | 2 | Llerena Delgado, Renzo Miguel | Done |
| US-43 | Modificación de tratamiento activo | 2 | Trazabilidad Médica | Registro de motivo del cambio en tratamiento. | 2 | Quijandria Araneda, Vicente | Done |
| US-44 | Suspensión de tratamiento | 1 | Lógica de Suspensión | Desactivación de tomas programadas. | 1 | Rios Piñan, Dayro Richard | Done |
| US-44 | Suspensión de tratamiento | 2 | Notificación a Staff | Aviso inmediato al personal de no suministrar más. | 1 | Saldaña Vela, Janover Gonzalo | Done |
| US-45 | Consulta de tratamientos prescritos | 1 | Listado Hoja de Ruta | Vista consolidada para personal asistencial. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-45 | Consulta de tratamientos prescritos | 2 | Indicaciones Visuales | Iconos para administración oral, tópica, etc. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-45 | Consulta de tratamientos prescritos | 3 | Impresión de hoja de ruta | Generación de versión imprimible para enfermería. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-46 | Registro de administración de tratamiento | 1 | UI Marcado de Toma | Botón de confirmación de suministro. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-46 | Registro de administración de tratamiento | 2 | Campo de Observación | Registro de reacción o rechazo del paciente. | 2 | Quijandria Araneda, Vicente | Done |
| US-47 | Consulta del historial de administración | 1 | Reporte de Adherencia | Historial de cumplimiento de tomas. | 2 | Rios Piñan, Dayro Richard | Done |
| US-47 | Consulta del historial de administración | 2 | Filtros de Tratamiento | Búsqueda por fármaco específico. | 1 | Saldaña Vela, Janover Gonzalo | Done |
| US-48 | Consulta de historial por el médico | 1 | Dashboard Adherencia Médica | Visualización de cumplimiento por residente. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-48 | Consulta de historial por el médico | 2 | Detección de Omisiones | Resaltado de tomas no administradas. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-48 | Consulta de historial por el médico | 3 | Exportación Excel | Descarga de datos de adherencia para análisis. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-50 | Lectura y respuesta de mensajes | 1 | Interfaz de Chat Interno | Bandeja de entrada y burbujas de chat. | 4 | Llerena Delgado, Renzo Miguel | Done |
| US-50 | Lectura y respuesta de mensajes | 2 | Servicio de Mensajería | Lógica de envío y recepción de mensajes. | 2 | Quijandria Araneda, Vicente | Done |
| US-51 | Inicio de sesión en la plataforma | 1 | Formulario de Login | Implementación UI y validación de campos. | 2 | Rios Piñan, Dayro Richard | Done |
| US-51 | Inicio de sesión en la plataforma | 2 | Autenticación JWT | Lógica de servidor y manejo de tokens. | 3 | Saldaña Vela, Janover Gonzalo | Done |
| US-51 | Inicio de sesión en la plataforma | 3 | Redirección por Rol | Lógica de landing tras login exitoso. | 1 | Villafuerte Tapia, Renzo Alonso | Done |
| US-52 | Recuperación de contraseña | 1 | Pantalla "Olvidé Clave" | Request de correo para reset. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-52 | Recuperación de contraseña | 2 | Flujo de Token Seguro | Validación de link temporal y cambio de clave. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-53 | Cierre de sesión | 1 | Logout de Seguridad | Destrucción de tokens en cliente y servidor. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-53 | Cierre de sesión | 2 | Limpieza de Estado | Redirección y limpieza de caché de usuario. | 1 | Quijandria Araneda, Vicente | Done |
| US-54 | Cambio de contraseña | 1 | UI Perfil: Seguridad | Formulario de cambio de clave dentro del sistema. | 1 | Rios Piñan, Dayro Richard | Done |
| US-54 | Cambio de contraseña | 2 | Verificación de Password Actual | Validación de seguridad previa al cambio. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-54 | Cambio de contraseña | 3 | Encriptación Hash | Hasheo de nueva contraseña antes de persistir. | 1 | Villafuerte Tapia, Renzo Alonso | Done |
| US-55 | Monitoreo móvil de residentes | 1 | Adaptación Mobile Dashboard | UI responsiva para celulares/tablets. | 3 | Calvo Yálan, Renato Guillermo | Done |
| US-55 | Monitoreo móvil de residentes | 2 | Optimización de Data Fetching | Carga ligera de datos en conexiones móviles. | 3 | Armas Sánchez, Oscar Javier | Done |
| US-56 | Gestión de alertas desde móvil | 1 | Integración Notificaciones Push | Configuración de FCM (Firebase). | 3 | Llerena Delgado, Renzo Miguel | Done |
| US-56 | Gestión de alertas desde móvil | 2 | Acciones Rápidas Mobile | Atención de alertas desde la notificación. | 2 | Quijandria Araneda, Vicente | Done |
| US-56 | Gestión de alertas desde móvil | 3 | Vibración de dispositivo | Feedback háptico ante alertas críticas. | 1 | Rios Piñan, Dayro Richard | Done |
| US-60 | Configuración de turnos de trabajo | 1 | CRUD de Turnos | Definición de horarios institucionales. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-60 | Configuración de turnos de trabajo | 2 | Lógica de Cruce de Horarios | Validación para evitar solapamientos. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-61 | Consulta de configuración institucional | 1 | Formulario Perfil Casa Reposo | Edición de logo, nombre y contacto. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-61 | Consulta de configuración institucional | 2 | Configuración de Zona Horaria | Seteo regional para marcas de tiempo. | 1 | Armas Sánchez, Oscar Javier | Done |
| US-62 | Resumen de indicadores de personal | 1 | Cálculos de KPIs Staff | Lógica de contratos, bajas y rotación. | 2 | Llerena Delgado, Renzo Miguel | Done |
| US-62 | Resumen de indicadores de personal | 2 | Dashboard UI Personal | Visualización de indicadores clave (widgets). | 2 | Quijandria Araneda, Vicente | Done |
| US-62 | Resumen de indicadores de personal | 3 | Filtro por período | Análisis de indicadores por mes/año. | 1 | Rios Piñan, Dayro Richard | Done |
| US-63 | Resumen de indicadores de residentes | 1 | Cálculos KPIs Residentes | Lógica de ingresos y bajas mensuales. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-63 | Resumen de indicadores de residentes | 2 | Dashboard UI Residentes | Visualización de ocupación y demografía. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-64 | Gráficos de tendencias mensuales | 1 | Integración Chart.js | Setup de librería para visualización analítica. | 4 | Calvo Yálan, Renato Guillermo | Done |
| US-64 | Gráficos de tendencias mensuales | 2 | Procesamiento Histórico | Querys para agrupar datos por meses. | 3 | Armas Sánchez, Oscar Javier | Done |
| US-64 | Gráficos de tendencias mensuales | 3 | Tooltips interactivos | Información detallada al pasar el mouse en gráficos. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-65 | Navegación por menú según rol | 1 | Sidebar Dinámico | Renderizado de opciones basado en permisos. | 2 | Quijandria Araneda, Vicente | Done |
| US-65 | Navegación por menú según rol | 2 | Route Guards | Protección de rutas para evitar acceso vía URL. | 2 | Rios Piñan, Dayro Richard | Done |
| US-66 | Contraste visual para baja visión | 1 | Auditoría WCAG | Revisión de ratios de contraste actuales. | 1 | Saldaña Vela, Janover Gonzalo | Done |
| US-66 | Contraste visual para baja visión | 2 | Temas de Accesibilidad | Implementación de modo alto contraste. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-67 | Retroalimentación visual | 1 | Implementación de Toasts | Alertas rápidas para guardado/error. | 1 | Calvo Yálan, Renato Guillermo | Done |
| US-67 | Retroalimentación visual | 2 | Loaders y Spinners | Indicadores de carga global para procesos asíncronos. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-67 | Retroalimentación visual | 3 | Sonidos de sistema | Confirmaciones auditivas opcionales para acciones. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-68 | Recepción de aviso de alerta clínica | 1 | Sistema de Avisos Visuales | Popups inmediatos ante signos críticos. | 3 | Quijandria Araneda, Vicente | Done |
| US-68 | Recepción de aviso de alerta clínica | 2 | Alert Chime (Sonido) | Implementación de aviso sonoro para urgencias. | 3 | Rios Piñan, Dayro Richard | Done |
| US-69 | Listado de alertas activas | 1 | Centro de Control Alertas | Bandeja de incidentes pendientes de atención. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-69 | Listado de alertas activas | 2 | Filtros de Severidad | Búsqueda por criticidad de la alerta. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-70 | Detalle de una alerta activa | 1 | Vista Contexto de Alerta | Mostrar valor detectado vs umbral médico. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-70 | Detalle de una alerta activa | 2 | Historial Reciente Pre-alerta | Gráfico de los últimos 5 min antes del evento. | 1 | Armas Sánchez, Oscar Javier | Done |
| US-70 | Detalle de una alerta activa | 3 | Datos de dispositivo | Información técnica del hardware que emitió alerta. | 1 | Llerena Delgado, Renzo Miguel | Done |
| US-71 | Registro de atención de alerta | 1 | Formulario Resolución Alerta | Input obligatorio de observación de atención. | 1 | Quijandria Araneda, Vicente | Done |
| US-71 | Registro de atención de alerta | 2 | Cierre de Incidente | API para marcar alerta como resuelta. | 2 | Rios Piñan, Dayro Richard | Done |
| US-72 | Historial de alertas atendidas | 1 | Reporte Resoluciones | Lista de alertas cerradas con sus observaciones. | 2 | Saldaña Vela, Janover Gonzalo | Done |
| US-72 | Historial de alertas atendidas | 2 | Analítica de Respuesta | Tiempo transcurrido entre alerta y cierre. | 2 | Villafuerte Tapia, Renzo Alonso | Done |
| US-73 | Notificación de alerta por el médico | 1 | Notificación Canal Médico | Alertas específicas para el rol facultativo. | 2 | Calvo Yálan, Renato Guillermo | Done |
| US-73 | Notificación de alerta por el médico | 2 | Panel Médico: Alertas Críticas | Dashboard priorizado para emergencias clínicas. | 2 | Armas Sánchez, Oscar Javier | Done |
| US-73 | Notificación de alerta por el médico | 3 | Historial de revisión médica | Registro de cuándo el médico vio la alerta. | 1 | Llerena Delgado, Renzo Miguel | Done |


#### 6.2.1.4. Development Evidence for Sprint Review

Landing page:

Para el desarrollo de la landing page, se implementaron las secciones de "Home", "Features", "Benefits", "About us" y "Plans". Cada sección fue diseñada para comunicar de manera efectiva el valor de VEYRA a los visitantes, utilizando un diseño atractivo y contenido claro. La landing page se publicó utilizando GitHub Pages, lo que permitió su acceso inmediato y facilitó la recopilación de feedback de los usuarios.

| Repository          | Branch               | Commit Id       | Commit Message                                                       | Commit Message Body | Commited on (Date) |
|--------------------|----------------------|-----------------|-----------------------------------------------------------------------|---------------------|--------------------|
| veyra-landing-page | main                 | 55e5230…676884e | feat: center align text in card content for improved layout          | —                   | 09/04/2026         |
| veyra-landing-page | main                 | 8084648…55e5230 | feat: refine member5 description                                     | Pull request merge  | 08/04/2026         |
| veyra-landing-page | main                 | 8084648…55e5230 | feat: refine member5 description for clarity and engagement          | Pull request merge  | 08/04/2026         |
| veyra-landing-page | develop              | fec7cdf…07898b9 | feat: refine member5 description for improved clarity and engagement | —                   | 08/04/2026         |
| veyra-landing-page | feature/team-section | f0b9306…9ca0eb6 | feat(team): update member info and readme structure                  | —                   | 08/04/2026         |
| veyra-landing-page | main                 | b6abbfe…8084648 | feat(team): update member info and readme structure                  | Pull request merge  | 08/04/2026         |
| veyra-landing-page | develop              | b6abbfe…fec7cdf | docs: update project description and documentation structure         | —                   | 08/04/2026         |
| veyra-landing-page | feature/team-section | 570a3a9…f0b9306 | feat: update Renzo Llerena's team member description                 | —                   | 08/04/2026         |
| veyra-landing-page | feature/team-section | b6abbfe…570a3a9 | feat: update Renzo Llerena's team member description                 | —                   | 08/04/2026         |
| veyra-landing-page | main                 | ead8de4…b6abbfe | feat: enhance legal drawers with bilingual support                   | —                   | 08/04/2026         |
| veyra-landing-page | feature/team-section | 2e95442…b6abbfe | feat: enhance legal drawers with bilingual support                   | —                   | 04/04/2026         |
| veyra-landing-page | develop              | dc534ed…b6abbfe | feat: enhance legal drawers with bilingual support                   | —                   | 04/04/2026         |
| veyra-landing-page | feature/footer       | 3f9ca45…b6abbfe | feat: update Privacy Policy and Terms of Service                     | —                   | 04/04/2026         |
| veyra-landing-page | feature/footer       | 992738f…3f9ca45 | feat: implement legal drawers for Terms of Service and Privacy       | —                   | 04/04/2026         |
| veyra-landing-page | feature/footer       | 0ca565a…992738f | feat: redesign footer section with improved layout                   | —                   | 03/04/2026         |
| veyra-landing-page | feature/footer       | dc534ed…0ca565a | feat: implement language switcher and scroll to top button           | —                   | 03/04/2026         |
| veyra-landing-page | develop              | 2e95442…dc534ed | feat: implement language switcher and scroll to top button           | —                   | 03/04/2026         |
| veyra-landing-page | develop              | 72b2878…2e95442 | feat: updated member3 description                                    | —                   | 03/04/2026         |
| veyra-landing-page | feature/team-section | 72b2878…2e95442 | feat: updated member3 description                                    | —                   | 02/04/2026         |
| veyra-landing-page | feature/team-section | 72b2878         | feat: added photos, descriptions and names of Dayro and Renzo        | —                   | 02/04/2026         |
| veyra-landing-page | develop              | 7b237d3…72b2878 | feat: added photos, descriptions and names of Dayro and Renzo        | —                   | 01/04/2026         |
| veyra-landing-page | develop              | ead8de4…7b237d3 | feat: added photo, name and description of Vicente                   | —                   | 01/04/2026         |
| veyra-landing-page | develop              | ead8de4         | first commit                                                         | —                   | 01/04/2026         |
| veyra-landing-page | main                 | ead8de4         | first commit                                                         | —                   | 01/04/2026         |

Aplicación web:



#### 6.2.1.5. Testing Suite Evidence for Sprint Review

#### 6.2.1.6. Execution Evidence for Sprint Review

Landing page:

Se desarrolló la landing page de VEYRA, la cual se publicó utilizando GitHub Pages para garantizar su accesibilidad inmediata. Además, se avanzó en el desarrollo del backend y la interfaz web de la aplicación, sentando las bases tecnológicas para futuras iteraciones. Durante este sprint, se implementaron las funcionalidades básicas y se realizaron pruebas iniciales para asegurar la calidad del producto.


![Landing Page](/assets/img/chapter-VI/execution-evidence-landing.png)

<br>

![Landing Page](/assets/img/chapter-VI/execution-evidence-landing-2.png)

Aplicación web:

Se desarolló la aplicación web de Veyra, implementando las funcionalidades básicas para la gestión de residentes, personal asistencial y dispositivos IoT, este último simulado con data ficticia. Se estableció una base sólida para la escalabilidad y mantenimiento del sistema en futuras iteraciones. Fue desplegado usando Cloudflare Pages, lo que permitió su acceso inmediato. 

![web application execution](/assets/img/chapter-VI/execution-evidence-web-application.png)

![web application execution](/assets/img/chapter-VI/execution-evidence-web-application-2.png)

![web application execution](/assets/img/chapter-VI/execution-evidence-web-application-3.png)

![web application execution](/assets/img/chapter-VI/execution-evidence-web-application-4.png)


#### 6.2.1.7. Services Documentation Evidence for Sprint Review

Para este sprint no se documentaron servicios específicos, ya que el enfoque principal estuvo en el desarrollo de la landing page y la aplicación web.

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

Para este sprint se realizó el despliegue de tres artefactos: Landing page, backend y frontend. La landing page se desplegó utilizando GitHub Pages, lo que permitió su acceso inmediato y facilitó la recopilación de feedback de los usuarios. El backend y el frontend se desplegaron utilizando servicios de hosting adecuados para cada uno, asegurando su disponibilidad y rendimiento para los usuarios finales.


Landing page:

Para deplegar con github pages, se creó un repositorio específico para la landing page, donde se desarrolló el contenido y diseño de la página. Una vez finalizado el desarrollo, se configuró GitHub Pages para publicar la página directamente desde el repositorio, lo que permitió su acceso inmediato a través de una URL pública.

![Landing Page Deployment](/assets/img/chapter-VI/deployment-evidence-landing-page.png)


El despliegue fue exitoso y la landing page está disponible para los usuarios.

![Landing Page Deployment](/assets/img/chapter-VI/deployment-evidence-landing-page-2.png)


#### 6.2.1.9. Team Collaboration Insights during Sprint

## 6.3. Validation Interviews

### 6.3.1. Diseño de Entrevistas

### 6.3.2. Registro de Entrevistas

### 6.3.3. Evaluaciones según heurísticas

## 6.4. Video About-the-Product