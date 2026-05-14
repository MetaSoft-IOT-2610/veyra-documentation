# Capítulo V: Solution UI/UX Design

## 5.1. Style Guidelines

### 5.1.1. General Style Guidelines
El diseño visual de la plataforma **Veyra** se inclina hacia una estética moderna, limpia y amigable, en línea con nuestro compromiso de ofrecer soluciones de cuidado que transmitan confianza, claridad y facilidad de uso. Nuestro objetivo es crear una experiencia digital que sea tanto eficiente como reconfortante para las familias y las instituciones de cuidado.

En este capítulo, detallaremos cada uno de los elementos visuales y de estilo que guían el desarrollo de la aplicación Veyra, siempre siguiendo los principios de Diseño de Experiencia de Usuario (UX) e Interfaz de Usuario (UI) para garantizar la máxima usabilidad y accesibilidad.

**Branding**

El logo principal de nuestra plataforma es *Veyra*, un nombre que evoca cercanía y visión en el cuidado. Nuestro propósito es ser un puente digital para el cuidado de los adultos mayores, ofreciendo una solución integral para gestores de cuidado y familias. El branding se enfoca en transmitir innovación, soporte y confiabilidad, valores esenciales para quienes confían en nosotros el bienestar de sus seres queridos.
<br>

<p align="center">
  <img src="../assets/img/chapter-V/Veyra-logo.png" alt="Veyra-Logo" width="350px" height="auto"/>
</p>

**Typography**

La tipografía empleada en Veyra será **Rubik**, con sus variantes Regular, Medium, SemiBold y Bold. La elección de Jost se basa en su estética moderna y profesional, que se equilibra con una excelente legibilidad en diversas resoluciones y dispositivos (móviles, tabletas, ordenadores). Además, su disponibilidad a través de Google Fonts asegura una carga eficiente y consistente.

La jerarquía tipográfica se establece de la siguiente manera para garantizar claridad y ritmo visual:

- **Títulos principales (H1/Sección heading):** 4rem (aprox. 64px) en escritorio, 2.8rem (aprox. 45px) en móvil.

- **Subtítulos (H2/Sub-headings):** 2.8rem (aprox. 45px) en escritorio, 2.2rem (aprox. 35px) en móvil.

- **Títulos de componentes (H3/H4):** 2rem (aprox. 32px) a 2.2rem (aprox. 35px).

- **Cuerpo del texto (p):** 1.6rem (aprox. 16px) con un interlineado de 1.6.

- **Botones y etiquetas (span):** 1.4rem (aprox. 14px) a 1.8rem (aprox. 18px).

<p align="center">
  <img src="../assets/img/chapter-V/typografy-Veyra.png" alt="Primary Color Palette" width="500px" height="auto"/>
</p>

Esta distribución garantiza un contraste óptimo entre el texto y el fondo, superando un ratio mínimo de 4.5:1 según las WCAG 2.1 AA para una accesibilidad superior.

<br>

**Colors**

Nuestra paleta de colores ha sido cuidadosamente seleccionada para evocar sensaciones de calma, profesionalismo y confianza. Se ha distribuido en tres categorías principales:

**Paleta principal**: Colores que definen la identidad de Veyra y se usan en elementos clave.
* **Primario (Azul claro):** var(--primary-color) (referencia principal).
* **Secundario (Azul Profundo):** var(--secondary-color) (para texto principal y elementos interactivos).
* **Terciario (Gris Oscuro):** var(--tertiary-color) (para texto secundario y detalles).
* **Fondo Claro:** var(--bg-light) (fondos de secciones).
* **Fondo Blanco:** var(--white) (fondos de tarjetas y elementos principales).

**Paleta de Soporte**: Colores complementarios que añaden profundidad y contraste.
* **Gris Neutro:** Para bordes sutiles, líneas divisorias y fondos de alternancia.

**Colores Funcionales**: Reservados para comunicar estados específicos al usuario.
* **Éxito:** Verde (#4CAF50) para confirmaciones y acciones exitosas.
* **Error:** Rojo (#F44336) para alertas y mensajes de error.
* **Advertencia:** Amarillo (#FFC107) para notificaciones y avisos importantes.


<p align="center">
  <img src="../assets/img/chapter-V/Color Pallete.png" alt="Primary Color Palette" width="800px" height="auto"/>
</p>

Esta combinación cromática refleja los valores de nuestra marca y busca transmitir al público una imagen de profesionalismo, seguridad y calidez en el cuidado de adultos mayores.
<br>

**Spacing**

El espaciado en Veyra sigue un sistema de espaciado modular y consistente para garantizar un ritmo visual armonioso y una jerarquía clara en toda la interfaz. La consistencia en el espaciado ayuda a reducir la carga cognitiva del usuario y mejora la legibilidad.

* **Espaciado Básico:** Usamos un espaciado base de 0.5rem (8px) para elementos pequeños como iconos, botones y texto. Este valor es la unidad mínima y se multiplica para crear espacios más grandes.

* **Margen Interno (Padding) Generoso:** Las secciones principales de la página utilizan un padding vertical de 6rem (96px) para crear pausas visuales claras. Los contenedores de tarjetas o elementos secundarios usan padding más pequeños, como 2.5rem (40px), para agrupar el contenido de forma lógica.

* **Espacio entre Elementos:** El espaciado entre elementos relacionados, como las tarjetas de planes o los miembros del equipo, varía entre 1.5rem (24px) y 3rem (48px). Esto mantiene una densidad de información adecuada sin abrumar visualmente al usuario.

* **Line Height del Texto:** El interlineado del texto (line-height) está configurado en 1.6, lo que facilita la lectura de párrafos largos y evita que las líneas se sientan demasiado juntas.

<br>

**Tono de Comunicación**

La voz y el tono de Veyra están diseñados para ser tan confiables y amigables como nuestra plataforma. Nuestro objetivo es conectar con familias e instituciones de cuidado de manera empática y profesional.

* **Tono: Amigable y empático,** con un toque de profesionalismo. Buscamos proyectar cercanía y comprensión de las necesidades de nuestros usuarios (familias), mientras mantenemos la autoridad y la seriedad que esperan las instituciones de cuidado.

* **Actitud: Confiable y serena.** El 90% de nuestra comunicación es tranquilizadora y segura, mientras que el 10% restante es entusiasta, especialmente en los llamados a la acción (CTAs) para motivar al usuario.

* **Lenguaje: Claro y directo.** Evitamos la jerga técnica innecesaria. Nos enfocamos en los beneficios que Veyra aporta a la vida diaria de las familias y los gestores de cuidado, hablando en términos de paz mental, eficiencia y conexión.

* **Voz: Experta y cálida.** Posicionamos a Veyra como una solución líder en tecnología de cuidado, pero siempre con un enfoque humano y comprensivo.

Este enfoque comunicacional busca generar confianza y lealtad, asegurando a las familias que están tomando la mejor decisión para sus seres queridos, y a las instituciones, que están optimizando sus procesos con una herramienta de vanguardia.


### 5.1.2. Web, Mobile and IoT Style Guidelines

### General Style Guidelines

### Web  Style Guidelines

Las directrices de estilo web de Veyra se centran en la simplicidad, la accesibilidad y la modernidad. Nuestro objetivo es crear una experiencia visual que refleje la misión de nuestra plataforma: conectar y simplificar el cuidado de los adultos mayores con un diseño limpio e intuitivo.

**1) Layout**

* **Sistema de Grid:** Utilizamos un diseño de cuadrícula flexible para garantizar que el contenido de Veyra se vea bien en cualquier dispositivo. Este enfoque permite que las tarjetas de servicios y planes se ajusten dinámicamente, manteniendo el orden y la coherencia visual.
* **Headers y Footers:** El encabezado (header) es fijo en la parte superior, proporcionando acceso constante a la navegación principal y los botones de acción (Sign In, Sign Up). El pie de página (footer) es completo y funcional, con enlaces esenciales que complementan la experiencia del usuario.
* **Cards:** Las tarjetas son un componente central en nuestro diseño. Se usan para destacar los servicios, beneficios y testimonios. Tienen bordes redondeados y sombras suaves para darles una apariencia moderna y hacer que el contenido se sienta "elevado" y fácil de leer.

**2) Responsive Design**

* **Desktop:** La navegación principal es visible en la barra superior junto a los botones de inicio de sesión. El contenido se presenta en múltiples columnas para un uso eficiente del espacio de la pantalla.
* **Tablet:** El menú de navegación se oculta en un botón de hamburguesa para maximizar el espacio. Los elementos de la cuadrícula se adaptan a un diseño de dos columnas. Los botones y formularios se expanden para ser fáciles de tocar.
* **Mobile:** La experiencia está optimizada para la visualización en una sola columna. La navegación se realiza a través de un menú desplegable, y todos los elementos interactivos, como botones y campos de entrada, son grandes y claros, ideales para pantallas táctiles.

**3) Interaction Design**

* **Botones:** Nuestros botones son llamativos y fáciles de hacer clic, con efectos visuales sutiles al pasar el cursor para confirmar la interactividad. El botón principal de llamado a la acción (Start now →) destaca claramente del resto.

* **Formularios:** El formulario de contacto en el pie de página es sencillo y directo. Los campos son claros y están bien espaciados para evitar errores del usuario.

**4) Images and Icons**

* **Imágenes:** Se utilizan fotografías de alta calidad que evocan calidez, conexión y cuidado. Las imágenes de personas mayores y familias interactuando refuerzan el mensaje de Veyra. Las imágenes están optimizadas para una carga rápida.

* **Íconos:** Empleamos un conjunto de íconos de estilo lineal y minimalista. Estos iconos se utilizan para representar servicios y características, ofreciendo una guía visual rápida y coherente en toda la página.

**5) Repositorio Central**

* **Organización:** El proyecto sigue una estructura de archivos lógica. Los estilos están en la carpeta assets/style.css, y los archivos JavaScript en assets/scripts. Todos los activos visuales (imágenes, logos) se encuentran centralizados en assets/images y assets/logos, respectivamente.

* **Versionado:** Usamos un sistema de control de versiones como Git para gestionar los cambios en los archivos de estilo y contenido. Esto asegura que todos los colaboradores trabajen en la versión más reciente del proyecto.


### Mobile   Style Guidelines

### Iot  Style Guidelines


### Introducción

Los dispositivos IoT de **Veyra** son el punto de contacto físico más crítico del sistema: son los únicos componentes que interactúan directamente con el **Residente** en el entorno de la casa de reposo. A diferencia de las interfaces web y móvil, estos dispositivos operan en segundo plano de forma continua, sin requerir atención activa del usuario. Por esta razón, sus lineamientos de diseño deben garantizar que **cualquier información visual sea comprensible en menos de dos segundos**, sin conocimientos técnicos previos.

Estos lineamientos aplican a los dos dispositivos que conforman la capa Embedded de Veyra:

- **Pulsera Inteligente** (*Smart Wristband*): dispositivo tipo wristband que monitorea signos vitales biométricos del Residente.
- **Escarapela Inteligente** (*Smart Badge*): dispositivo colgante que realiza seguimiento de ubicación del Residente dentro o fuera de la instalación.

Ambos dispositivos deben ser coherentes entre sí y con el resto de la plataforma Veyra (landing page, aplicación web, aplicación móvil) en términos de lenguaje visual, codificación de color y terminología del Ubiquitous Language.

---

### Principios de Diseño para Dispositivos IoT

Los siguientes principios rigen todas las decisiones de diseño de los dispositivos físicos de Veyra:

1. **Invisibilidad funcional**: el dispositivo no debe requerir atención del Residente durante la operación normal. Funciona en silencio y solo se manifiesta visualmente cuando existe un estado relevante que comunicar.

2. **Legibilidad inmediata**: cualquier indicador de estado debe ser interpretable rapido por el Healthcare Staff, incluso en condiciones de baja iluminación (turnos nocturnos).

3. **Consistencia cross-platform**: la codificación de colores, los iconos y la terminología son idénticos entre el dispositivo físico, la aplicación móvil y el dashboard web. Un estado que aparece como rojo en el dispositivo, también aparece como rojo en la app.

4. **Mínima fricción operativa**: el Healthcare Staff trabaja bajo alta presión de tiempo. Las interacciones físicas con el dispositivo deben requerir el menor número posible de acciones. Se prioriza la automatización por sobre la interacción manual.

5. **Diseño inclusivo**: los indicadores visuales no dependen únicamente del color. Se complementan con formas diferenciadas, frecuencias de parpadeo distintas y, cuando aplica, retroalimentación háptica, para garantizar accesibilidad ante daltonismo o condiciones de visión reducida.

6. **Resiliencia ante desconectividad**: el dispositivo comunica visualmente su estado de sincronización. El Healthcare Staff debe poder saber si el dispositivo está transmitiendo datos en tiempo real o en modo offline, sin consultar la aplicación.

---

### Dispositivo 1 — Pulsera Inteligente (*Smart Wristband*)

### Descripción General

| Atributo                    | Detalle                                                                                                      |
|-----------------------------|--------------------------------------------------------------------------------------------------------------|
| Tipo                        | Wristband (pulsera de muñeca)                                                                                |
| Usuario portador            | Residente adulto mayor                                                                                       |
| Operador principal          | Healthcare Staff (configura, asigna y supervisa)                                                             |
| Función principal           | Monitoreo continuo de signos vitales (frecuencia cardíaca, temperatura corporal, saturación de oxígeno SpO2) |
| Modo de operación           | Pasivo y continuo — no requiere acción del Residente                                                         |
| Evento disparador de alerta | Valores fuera de los Parámetros Clínicos definidos por el Doctor para ese Residente                          |

#### Diseño Físico

- **Forma**: correa suave y ergonómica, adaptable a muñecas de distintos tamaños. El perfil debe ser bajo para no interferir con el descanso ni las actividades diarias del Residente.
- **Material**: silicona médica hipoalergénica, resistente al agua y a desinfectantes de uso clínico estándar.
- **Peso**: el dispositivo debe ser lo suficientemente liviano para no ser percibido por el Residente durante el sueño.
- **Cierre**: hebilla de liberación rápida para facilitar la colocación y el retiro por parte del Healthcare Staff.
- **Identificación del Residente**: el interior de la correa incluye espacio para una etiqueta impresa con el nombre del Residente y su número de cama, facilitando la identificación física en caso de ser encontrada fuera de su lugar.

#### Indicador LED de Estado

La pulsera cuenta con un único LED RGB que comunica el estado del dispositivo mediante la combinación de color y patrón de parpadeo. Este indicador está ubicado en la cara superior del dispositivo, visible con un vistazo rápido.

| Estado del Sistema                        | Color LED    | Patrón                                      | Descripción                                                                   |
|-------------------------------------------|--------------|---------------------------------------------|-------------------------------------------------------------------------------|
| **Dispositivo activo / operación normal** | 🟢 Verde     | Pulso lento                                 | Signos vitales dentro de los Parámetros Clínicos.                             |
| **Dispositivo apagado / inactivo**        | 🔴 Rojo      | Sólido fijo                                 | El dispositivo no está operativo. Requiere intervención del Healthcare Staff. |
| **Alerta crítica — valor fuera de rango** | 🔴 Rojo      | Parpadeo rápido                             | Signo vital fuera de lo normal.                                               |
| **En proceso de carga**                   | 🔵 Azul      | Pulso suave y continuo                      | El dispositivo está conectado a la fuente de carga.                           |
| **Carga completa**                        | 🟢 Verde     | Sólido fijo durante 5 segundos, luego apaga | La carga ha finalizado. Listo para su uso.                                    |


#### Retroalimentación Háptica

| Evento                | Patrón de Vibración                |
|-----------------------|------------------------------------|
| Alerta crítica activa | Vibración corta repetida           |
| Batería baja          | Dos pulsos cortos cada 60 segundos |


#### Botón Físico

La pulsera incluye un único botón en el lateral del dispositivo, cuya función exclusiva es encender y apagar el dispositivo.

| Acción                     | Resultado                                                                        |
|----------------------------|----------------------------------------------------------------------------------|
| Presión larga (3 segundos) | Enciende el dispositivo si está apagado / Apaga el dispositivo si está encendido |

#### Pantalla

En caso de incorporar una pantalla OLED de baja resolución, la información se presenta con la siguiente jerarquía:

<p align="center">
  <img src="../assets/img/chapter-V/pulsera.png" alt="pulsera-veyra" width="750px" height="auto"/>
</p>

## 5.2. Information Architecture

La arquitectura de la información de Veyra está diseñada para que cada usuario —administrador, médico, personal asistencial o familiar— acceda con el menor número de pasos posible a los datos relevantes para su rol, ya sea desde la Landing Page, la aplicación web, la aplicación móvil o la pantalla del dispositivo IoT. La estructura responde a los Bounded Contexts identificados en el Capítulo IV (IAM, Profiles, Tracking, Health, HCM, Communication, Subscriptions & Payments) y al lenguaje ubicuo definido en el Capítulo II.

### 5.2.1. Organization Systems

La organización jerárquica del Landing Page de "Veyra" ha sido diseñada con el propósito de guiar al usuario de manera lógica y efectiva desde su primer contacto con la solución hasta su conversión en cliente. Esta estructura responde a principios de arquitectura de la información que priorizan la claridad, la relevancia y la progresión natural del contenido, permitiendo que los usuarios comprendan de inmediato el valor del producto, cómo funciona, sus beneficios, y los pasos para adquirirlo.

**Inicio**

- **Propósito**: Captar la atención del visitante con un mensaje claro y directo.
- **Contenido**: Nombre del producto, propuesta de valor destacada "The Best Care is Always Connected" y llamado a la acción (CTA) "Start now →".


**Información explicativa**

- **What We Offer:** Cuatro tarjetas que presentan los servicios principales — Home Health Care, Pediatric Care, Companion Care y Conditions Treated.
- **Features:** Acordeón interactivo con las funcionalidades clave del sistema acompañado de un video institucional embebido.
- **Benefits:** Cuatro tarjetas con imagen que detallan los beneficios diferenciadores para instituciones y familias.
- **About Us:** Información sobre Metasoft y la misión de Veyra, complementada con un video institucional.
- **Our Team:** Grilla con los integrantes del equipo de desarrollo, cada uno con foto, rol y descripción profesional.


**Conversión**

- **Plans:** Detalle de los distintos planes de suscripción disponibles — Family Plan y Nursing Home Plan — con toggle Monthly/Annually.
- **Testimonials & CTA:** Reseñas de clientes que usaron la aplicación y CTA final "Subscribe" para iniciar la suscripción.

<p align="center">
  <img src="./../assets/img/chapter-V/arquitectura-jerarquica-landing.jpeg">
</p>


Además la arquitectura jerárquica en la interfaz de la aplicación web de "Veyra" ha sido diseñada para facilitar el acceso y gestión eficiente de las múltiples funcionalidades del sistema. Esta estructura permite una distribución lógica del contenido, reduciendo la carga cognitiva del usuario y mejorando su capacidad para encontrar rápidamente las herramientas que necesita.


<p align="center">
  <img src="./../assets/img/chapter-V/arquitectura-jerarquica-webapp.jpeg">
</p>

**Pantalla de inicio**

Una vista de bienvenida pre-login con el mensaje principal de Veyra y los accesos a Sign-In, Create User y Create Admin. Tras autenticarse, el usuario aterriza en un Dashboard tipo analítico con KPIs operativos y gráficas filtrables por año.

**Navegación principal**

Sistema jerárquico accesible desde un menú lateral con iconografía clara. Incluye las siguientes pestañas:

- Dashboard
- Devices
- Residents
- Staff
- Rooms

**Filtrado y organización avanzada**

**a. Para el Administrador del Hogar de Reposo**

- **Filtros por:** Nombre del residente, nombre del personal, número de habitación y nombre del dispositivo IoT.
- **Funcionalidades destacadas:** Gestión de residentes, personal y habitaciones; asignación de dispositivos IoT; configuración inicial del hogar de reposo; administración del plan de suscripción.

**b. Para Médicos y Personal Asistencial**

- **Filtros por:** Nombre del residente asignado al turno.
- **Funcionalidades destacadas:** Consulta de signos vitales en tiempo real, registro y consulta del historial clínico del residente, definición de parámetros clínicos personalizados.


**Segmentación por audiencia**

**a. Administrador del Hogar de Reposo**

- Enfoque en la gestión operativa: registro de residentes, alta de personal, asignación de habitaciones y vinculación de familiares.
- Visualización del dashboard analítico con KPIs (Total Hires, Total Terminations, Net Staff Change, Total Admissions, Active Residents) y administración del flujo de suscripción y pagos.

**b. Médicos y Personal Asistencial**

- Acceso al monitoreo clínico del residente, consulta del historial médico y registro de eventos clínicos por turno.
- Definición de los parámetros clínicos de cada residente y reacción ante alertas críticas generadas por los dispositivos IoT.


Por último, la arquitectura jerárquica de la aplicación móvil de "Veyra" prioriza la consulta rápida y la respuesta inmediata, organizándose alrededor del rol del usuario. Esta estructura permite que el familiar acceda con un solo gesto al estado de su ser querido y que el personal de cuidado reciba notificaciones críticas y registre intervenciones directamente desde el campo.


<p align="center">
  <img src="./../assets/img/chapter-V/arquitectura-jerarquica-webapp.jpeg">
</p>

**Pantalla de inicio**

Para el familiar, una vista simplificada del estado actual del residente vinculado con un mensaje claro y reconfortante. Para el personal de cuidado, una lista de los residentes asignados al turno con las notificaciones críticas pendientes y accesos directos al monitoreo.

**Navegación principal**

Sistema jerárquico accesible desde una bottom navigation bar con iconografía clara. Incluye las siguientes pestañas:

- Home
- Signos Vitales
- Historial
- Notificaciones
- Perfil

**Filtrado y organización avanzada**

**a. Para Familiares**

- **Filtros por:** Rango de fechas en el historial de signos vitales del residente vinculado.
- **Funcionalidades destacadas:** Consulta del estado actual del residente, recepción de notificaciones push con deep link al detalle de la alerta crítica, configuración de las preferencias de notificación.

**b. Para Personal de Cuidado**

- **Filtros por:** Residentes asignados al turno actual.
- **Funcionalidades destacadas:** Monitoreo de signos vitales en tiempo real, registro de eventos clínicos en el historial del residente, atención inmediata de alertas críticas desde el móvil.


**Segmentación por audiencia**

**a. Familiares**

- Acceso al estado actual del residente vinculado y visualización de signos vitales recientes (US-14).
- Consulta del historial de signos vitales con filtro por período personalizado (US-15).
- Recepción de notificaciones de alertas críticas con deep link al detalle del evento (US-16).

**b. Personal de Cuidado**

- Consulta del monitoreo de signos vitales en tiempo real de los residentes asignados a su turno (US-11, US-12).
- Registro de eventos clínicos en el historial del residente para garantizar la continuidad del cuidado entre turnos (US-19).
- Bandeja de alertas críticas con acciones rápidas para intervención inmediata en campo.



### 5.2.2. Labeling Systems

- **Nomenclatura:** Las etiquetas visibles se construyen a partir del **Ubiquitous Language** definido en el Capítulo II. En el sidenav de la aplicación web los términos coinciden con los conceptos del dominio: **Dashboard**, **Devices**, **Residents**, **Staff** y **Rooms**. Los botones siguen una forma imperativa y corta: "Sign-In", "Create User", "Create Admin", "Sign-Out", "Add", "Edit", "Details", "Go Back", "View Medications" y "Assign Room". En la Landing Page se reutilizan los mismos conceptos en inglés ("Home", "Features", "Benefits", "About Us", "Plans") y los CTAs son orientados a la acción ("Start now →", "Get Family Plan", "Get Nursing Home Plan", "Subscribe").

- **Consistencia entre Plataformas:** La aplicación web utiliza **`ngx-translate`** con las claves de traducción centralizadas en `public/i18n/en.json` y `public/i18n/es.json`, lo que garantiza que la misma clave (por ejemplo `nav.resident`, `nav.staff`, `residents.list.title`) renderice la misma etiqueta en cada pantalla donde aparece. La Landing Page replica el patrón con el atributo `data-i18n` y los archivos `translations/en.js` y `translations/es.js`. El nombre de marca **Veyra** aparece idéntico en el `<title>` del documento, en la cabecera del toolbar, en el footer del sidenav y como sufijo de cada page title (`{Page} | Veyra`).

- **Lenguaje Adaptativo por Rol:** Las etiquetas se ajustan al rol que las consume. La aplicación web — usada hoy por el administrador del hogar de reposo — emplea terminología operativa y clínica (**Resident**, **Staff**, **Contract**, **Medical Record**, **Allergy**, **Vital Sign**, **Medication**, **Room**, **Device**). La aplicación móvil para familiares utiliza un lenguaje cercano centrado en el residente vinculado (estado, signos vitales recientes, última actualización), mientras que la versión para personal de cuidado usa términos clínicos directos (turno asignado, alerta crítica, evento clínico).

- **Iconografía:** La aplicación web se apoya en la librería **Material Icons** de Google Fonts. Los íconos principales del sidenav son `home` (Dashboard), `assignment` (Devices), `person` (Residents), `group` (Staff) y `meeting_room` (Rooms). Otros íconos recurrentes son `search` (búsqueda), `close` (limpiar), `add` (crear), `edit` (editar), `menu` (toggle sidenav), `local_hospital` (logo Care Management), `account_balance` (legal guardian), `contact_emergency` (main contact) y `folder_shared` (records). La Landing Page utiliza **Font Awesome 5.15.3** con íconos como `fa-house-user`, `fa-hospital-user`, `fa-user-md`, `fa-globe` (cambio de idioma), `fa-bars` (menú hamburguesa), `fa-chevron-down` (acordeón), `fa-check` (listas de features), `fa-chevron-up` (scroll-to-top) y los íconos sociales (`fa-instagram`, `fa-facebook-f`, `fa-linkedin-in`).

- **Codificación de Estados por Color:** Siguiendo la paleta funcional definida en la sección 5.1.1, se reservan colores específicos para comunicar el estado del sistema: **verde (`#4CAF50`)** para confirmaciones y estados normales, **amarillo (`#FFC107`)** para advertencias, **rojo (`#F44336`)** para errores y alertas críticas, y **gris** para elementos inactivos o sin datos disponibles. Esta codificación se aplica en botones, badges, mensajes `<mat-error>`, tarjetas de KPI del dashboard y estados de los formularios.

- **Bilingüismo (EN/ES):** Toda la plataforma soporta inglés y español como idiomas oficiales. En la Landing Page el switch se realiza con un botón globe-icon que invoca `setLanguage()` sobre los elementos con `data-i18n`; la preferencia se guarda en `localStorage` para conservarse entre sesiones. En la aplicación web el componente `LanguageSwitcher` expone un `MatButtonToggleGroup` con las opciones EN/ES que llama a `TranslateService.use(language)` y actualiza todas las claves de traducción visibles en pantalla.

### 5.2.3. SEO Tags and Meta Tags

En esta sección se documentan las meta tags y elementos del <head> configurados tanto en la Landing Page como en la aplicación web de Veyra, los cuales son fundamentales para el correcto posicionamiento en buscadores, la compatibilidad con dispositivos y la experiencia visual consistente.

- **Meta Tags Implementados en la Landing Page:** El `<head>` del `index.html` declara los siguientes elementos:

    - **`<meta charset="UTF-8" />`:** Codificación universal de caracteres, indispensable para mostrar correctamente tildes, ñ y símbolos en español.
    - **`<meta http-equiv="X-UA-Compatible" content="IE=edge" />`:** Fuerza a Internet Explorer a usar su motor de renderizado más reciente.
    - **`<meta name="viewport" content="width=device-width, initial-scale=1.0" />`:** Garantiza el comportamiento responsive en móviles, tablets y escritorio.
    - **`<title>Veyra</title>`:** Identificador de marca que aparece en la pestaña del navegador y en los resultados de los buscadores.
    - **`<html lang="en">`:** Idioma por defecto del documento, base para que los motores de búsqueda y lectores de pantalla interpreten el contenido.
    - **Font Awesome 5.15.3:** Stylesheet cargado desde el CDN de Cloudflare (`cdnjs.cloudflare.com`) para la iconografía.
    - **Google Fonts:** Preconnect a `fonts.googleapis.com` y `fonts.gstatic.com` para optimizar el tiempo de carga, seguido del import de las familias Instrument Serif, Jost, Konkhmer Sleokchher, Lexend, Manrope y Rubik (esta última es la tipografía principal según la sección 5.1.1).
    - **Stylesheet local:** `public/assets/styles/style.css` con las reglas CSS específicas de la Landing.

- **Meta Tags Implementados en la Aplicación Web:** El `<head>` del `src/index.html` de la aplicación Angular declara los siguientes elementos:

    - **`<meta charset="utf-8">`:** Codificación universal de caracteres.
    - **`<title>FrontendNovaPeruTech</title>`:** Título actual del entorno de desarrollo; debe ser reemplazado por **Veyra** en producción.
    - **`<base href="/">`:** Define la ruta raíz desde la cual el router de Angular resuelve las rutas relativas.
    - **`<meta name="viewport" content="width=device-width, initial-scale=1">`:** Habilita el diseño responsive.
    - **`<link rel="icon" type="image/x-icon" href="favicon.ico">`:** Favicon de la aplicación.
    - **`<html lang="en">`:** Idioma por defecto del documento.
    - **Google Fonts Roboto (300, 400, 500):** Tipografía complementaria utilizada en componentes específicos de la aplicación.
    - **Material Icons:** Stylesheet de Google Fonts para la iconografía nativa de Angular Material.

- **Page Titles Dinámicos:** El router de Angular asigna un title específico a cada ruta con el patrón **`{Page} | Veyra`**, lo que permite que cada pantalla tenga su propio título en la pestaña del navegador. Ejemplos reales tomados del código: "Home | Veyra", "Sign In | Veyra", "Sign Up | Veyra", "Dashboard | Veyra", "Residents | Veyra", "Resident Detail | Veyra", "New Resident | Veyra", "Staff | Veyra", "Rooms | Veyra", "Devices | Veyra", "Medications | Veyra", "Contracts | Veyra", "Choose Subscription | Veyra", "Checkout | Veyra" y "Page Not Found | Veyra".

- **Optimizaciones SEO Recomendadas:** Para mejorar el posicionamiento orgánico de la Landing Page y la presentación en redes sociales, se contempla incorporar progresivamente los siguientes elementos:

    - **`<meta name="description">`:** Descripción breve y atractiva (≤160 caracteres) de la propuesta de valor de Veyra, visible en los resultados de buscadores.
    - **`<meta name="keywords">`:** Palabras clave del dominio: "casa de reposo", "monitoreo IoT", "adultos mayores", "salud geriátrica", "Veyra".
    - **Open Graph (`og:title`, `og:description`, `og:image`, `og:url`, `og:type`):** Para que los enlaces compartidos en Facebook, WhatsApp y LinkedIn muestren previsualización con imagen y descripción.
    - **Twitter Cards (`twitter:card`, `twitter:title`, `twitter:description`, `twitter:image`):** Equivalente a Open Graph para X (Twitter).
    - **`<link rel="canonical">`:** Indica la URL oficial de cada página para evitar penalizaciones por contenido duplicado.
    - **`<meta name="robots" content="index, follow">`:** Autoriza la indexación por parte de los motores de búsqueda.
    - **Favicon de la Landing Page:** Actualmente no está definido en el `index.html` de la Landing; agregarlo refuerza el reconocimiento de marca.
    - **Título correcto de la aplicación web:** Reemplazar `FrontendNovaPeruTech` por `Veyra` en producción para mantener la consistencia con la marca.

### 5.2.4. Searching Systems

- **Búsqueda en la Landing Page:** La Landing Page no incluye barra de búsqueda. Al ser un sitio estático orientado al descubrimiento mediante scroll, la navegación se resuelve con anchors (`#home`, `#features`, `#benefits`, `#about`, `#plans`) y con el botón flotante de scroll-to-top.

- **Búsqueda en la Aplicación Web:** Cuatro de los cinco módulos del sidenav implementan una barra de búsqueda construida con `<mat-form-field>` y `<mat-input>`, prefijada por el ícono `search` y con un botón `close` que aparece para limpiar el término ingresado:

    - **Residents (`/nursing/residents`):** Barra de búsqueda con placeholder "Enter the name" que filtra el listado de residentes a partir del término ingresado contra el person profile asociado. El componente `PersonProfileDetail` emite el evento `idsFiltered` con los IDs coincidentes y el listado se redibuja en tiempo real con `computed()` de Angular Signals.
    - **Staff (`/hcm/staff`):** Misma mecánica que Residents — search bar con prefijo `search`, filtrado por persona y botón de limpiar.
    - **Rooms (`/nursing/rooms`):** Búsqueda con placeholder "Enter the number" que filtra el listado tabular por número de habitación.
    - **Devices (`/nursing/devices`):** Búsqueda con placeholder "Enter the name" que filtra la tabla de dispositivos IoT por nombre.
    - **Contracts (`/hcm/staff/:id/contracts`):** No incluye barra de búsqueda — la navegación se realiza únicamente con el ordenamiento por columnas.

- **Ordenamiento por Columnas:** Las tablas de **Rooms**, **Devices** y **Contracts** ofrecen ordenamiento al hacer clic en la cabecera. El estado se representa con tres íconos: `unfold_more` (sin ordenar), `arrow_drop_up` (ascendente) y `arrow_drop_down` (descendente). Las columnas ordenables reales son **Number** y **Status** en Rooms; **Device ID**, **Assigned By**, **Assigned At** y **Status** en Devices; y **Status**, **Start Date** y **End Date** en Contracts.

- **Estados Vacíos:** Cuando una búsqueda o un listado no produce resultados, la aplicación muestra un mensaje traducido por `ngx-translate` dentro del bloque `@empty` del nuevo control de flujo de Angular. Ejemplos reales tomados de los archivos de traducción: **"No allergies recorded"**, **"No vital signs recorded"** y **"No devices available"**. Las claves usadas siguen el patrón `residents.error.no-residents`, `staff-management.error.no-staff`, `no-devices`, `no-allergies` y `no-vital-signs`.

- **Búsqueda en la Aplicación Móvil:** La aplicación móvil prioriza la consulta rápida del residente vinculado o de los residentes asignados al turno, por lo que la búsqueda se ofrece de forma contextual dentro de cada módulo. Según las User Stories del Capítulo III, los principales escenarios implementados son:

    - **Historial de Signos Vitales (US-15):** El familiar consulta el historial de signos vitales del residente con un filtro por rango de fechas. Por defecto se muestran los últimos 7 días en orden cronológico descendente. Si el familiar selecciona una fecha de inicio cronológicamente posterior a la de fin, el sistema rechaza el filtro y muestra el mensaje **"La fecha de inicio no puede ser posterior a la fecha de fin"**.
    - **Historial Clínico (US-17, US-18):** El personal asistencial y el médico consultan los eventos clínicos cronológicos del residente, ordenados por fecha y hora, con el nombre del personal que registró cada evento.
    - **Listado de Residentes Asignados (US-11):** El personal asistencial accede al panel de monitoreo con los residentes activos de su turno.

- **Resultados y Selección:** En la aplicación web, los listados de **Residents** y **Staff** utilizan grillas de tarjetas que se filtran en tiempo real conforme el usuario escribe. La selección de una tarjeta se indica visualmente con un borde resaltado (`.selected`) y habilita el botón **Edit** de la barra de acciones inferior. Las tablas de **Rooms**, **Devices** y **Contracts** emplean checkboxes por fila y muestran el ícono `unfold_more` o sus variantes direccionales para indicar el estado de ordenamiento de cada columna.

### 5.2.5. Navigation Systems

- **Navegación en la Landing Page:** La Landing Page utiliza un esquema de navegación por anchors dentro de una sola página (single-page scroll), con los siguientes elementos:

    - **Header fijo:** Barra superior con el logo "Veyra" y un menú de cinco enlaces: **Home (`#home`)**, **Features (`#features`)**, **Benefits (`#benefits`)**, **About Us (`#about`)** y **Plans (`#plans`)**. Los enlaces hacen scroll suave hasta la sección correspondiente.
    - **Botones de autenticación:** **Sign In** y **Sign Up** redirigen externamente a la aplicación web alojada en Azure Static Web Apps (`brave-river-060406e0f.3.azurestaticapps.net`).
    - **Language Switcher:** Botón con ícono globe (`fa-globe`) y label EN/ES que conmuta el idioma del sitio aplicando las traducciones sobre los elementos con atributo `data-i18n`; la preferencia se persiste en `localStorage`.
    - **Menú Hamburguesa (mobile):** En viewports pequeños, el ícono `fa-bars` despliega el menú colapsado; se cierra automáticamente al hacer scroll mediante `window.onscroll`.
    - **Botón Scroll-to-Top:** Botón flotante con ícono `fa-chevron-up` que aparece al superar los 300 px de scroll y devuelve al usuario al inicio de la página con `behavior: 'smooth'`.
    - **Acordeón en Features:** Solo un ítem se mantiene abierto a la vez; al expandir uno, los demás se contraen automáticamente.
    - **Toggle Monthly / Annually:** En la sección Plans permite conmutar entre los precios mensuales y anuales sin recargar la página.
    - **Drawers Legales:** Los enlaces **Terms of Service** y **Privacy Policy** del footer abren un drawer lateral con overlay oscuro que carga el contenido de `public/sections/tos.html` y `public/sections/policies.html` mediante `fetch`. El drawer se cierra con el botón X, con un clic en el overlay o con la tecla **Escape**.
    - **Footer:** Replica los enlaces de navegación principal y agrega secciones de **Platform**, **Company**, **Contact** y enlaces externos (App Store, Google Play, redes sociales).

- **Navegación en la Aplicación Web:** La aplicación web combina un toolbar superior con un sidenav lateral, ambos provistos por Angular Material dentro del componente `LayoutNursingHome`:

    - **Top Toolbar:** Contiene el botón hamburguesa que hace toggle del sidenav (`<mat-icon>menu</mat-icon>`), el logo y título "Veyra", el componente `AuthenticationSection` (con los botones Sign-In, Create User y Create Admin si no hay sesión, o "Welcome, {username}" y "Sign-Out" si la sesión está activa) y el `LanguageSwitcher` EN/ES.
    - **Sidenav Lateral:** Cinco ítems con ícono y label traducido — **Dashboard** (`/analytics/dashboard`, ícono `home`), **Devices** (`/nursing/devices`, ícono `assignment`), **Residents** (`/nursing/residents`, ícono `person`), **Staff** (`/hcm/staff`, ícono `group`) y **Rooms** (`/nursing/rooms`, ícono `meeting_room`). El ítem activo se resalta con un indicador visual y la navegación se ejecuta vía `Router.navigate([link])`.
    - **Modo Responsive:** El `BreakpointObserver` observa el breakpoint `max-width: 768px`. En escritorio el sidenav está en modo `side` y abierto por defecto; en móvil cambia a modo `over` y permanece cerrado hasta que el usuario lo abre con el botón hamburguesa. Al navegar a una ruta en modo móvil, el sidenav se cierra automáticamente.
    - **Tooltips:** Cada ícono del sidenav tiene un `matTooltip` que muestra el label del ítem al hacer hover en la posición derecha, lo cual mantiene la usabilidad incluso cuando el sidenav está colapsado.
    - **Sidenav Footer:** Bloque inferior con ícono `code`, etiqueta **MetaSoft** y el año actual (`getCurrentYear()`) como información de copyright.
    - **Page Titles Dinámicos:** El router de Angular setea el `<title>` del documento con el patrón `{Page} | Veyra` para cada ruta, facilitando la identificación de cada pestaña abierta en el navegador.
    - **Navegación Interna en Detalles:** Las vistas de detalle (Resident Detail, Staff Member Detail) están construidas con **Material Cards apiladas** (perfil de la persona, legal guardian, main contact, medical record) y botones de acción explícitos que llevan a las subrutas (Medical Records, Medications, Allergies, Contracts, Assign Room).
    - **Fallback Page Not Found:** El path comodín `**` carga el componente `PageNotFound`, que muestra el mensaje **"The path {invalid_path} does not exist"** y un botón **"Go Home"** que redirige a `/home`.

- **Navegación en la Aplicación Móvil:** Conforme a los wireframes de la sección 5.4.1 y a las User Stories del Capítulo III, la aplicación móvil organiza la navegación según el rol del usuario:

    - **Interfaz del Familiar:** El familiar entra al Home con el estado del residente vinculado (US-14) y desde allí puede navegar a Signos Vitales, Historial (US-15), Notificaciones y Perfil.
    - **Interfaz del Personal de Cuidado:** El personal asistencial accede al listado de residentes asignados a su turno (US-11), al monitoreo de signos vitales en tiempo real (US-12), al registro de eventos clínicos (US-19) y a las notificaciones de alertas críticas.
    - **Navegación desde Notificaciones Push:** Conforme a la User Story US-16, las notificaciones de alertas críticas incluyen un deep link que, al ser tocado por el familiar, abre la aplicación directamente en la pantalla de detalle de la alerta del residente afectado, sin pasar por el home.

- **Persistencia de Sesión y Cuenta:** El header de cada plataforma mantiene siempre visible el acceso a la cuenta del usuario. En la Landing los botones **Sign In / Sign Up** apuntan a la app web; en la aplicación web el componente `AuthenticationSection` muestra **"Welcome, {username}"** con la opción de **Sign-Out** cuando la sesión está activa; y en la móvil el ícono de perfil queda accesible desde la bottom navigation bar.


## 5.3. Landing Page UI Design

El landing page juega un papel esencial en atraer la atención de los visitantes y guiarlos hacia acciones concretas, como inscribirse, adquirir un producto o informarse sobre un servicio. En este apartado, se tratará el diseño de la interfaz de usuario del landing page, enfocándose en los elementos clave que optimizan la experiencia del usuario, creando una página interactiva y fácil de usar.

### 5.3.1. Landing Page Wireframe

El wireframe del landing page de Veyra representa la estructura visual básica y el esquema de distribución de los elementos principales de la página, sin aplicar colores ni estilos definitivos. Actúa como guía inicial para asegurar una disposición clara y coherente antes del diseño final.

El wireframe incluye las siguientes secciones:

**Nav y Hero:**

La sección de navegación incluye el logotipo de Veyra en la parte superior izquierda, junto con los enlaces de menú principales (Home, Benefits, Features, About Us, Plans) y los botones de acción "Sign In" y "Sign Up". La sección Hero presenta el título principal y subtítulo de la plataforma a la izquierda, un espacio reservado para imagen representativa a la derecha, y un botón de llamado a la acción destacado ("Start now").

![Wireframe - Nav y Hero](../assets/img/chapter-V/wireframe-hero-navbar.png)

**Benefits (Beneficios):**

Esta sección muestra un título centrado seguido de una cuadrícula de 2x2 con cuatro tarjetas de contenido. Cada tarjeta contiene un placeholder de título y bloques de texto descriptivo, representando los beneficios clave de la plataforma para el cuidado del adulto mayor.

![Wireframe - Benefits](../assets/img/chapter-V/wireframe-features-plans.png)

**Features y Plans:**

La sección Features presenta un layout de dos columnas: a la izquierda un bloque de contenido con título y descripción; a la derecha un componente de video embebido. La sección de Planes muestra tres tarjetas de precios en disposición horizontal, cada una con título del plan, lista de características y un botón de acción.

![Wireframe - Features y Plans](../assets/img/chapter-V/wireframe-testimonials-contact.png)

**Testimonials, Contact y Footer:**

La sección de testimonios muestra tarjetas con foto de perfil circular y texto de reseña. El formulario de contacto presenta campos de entrada y un botón de envío. El footer incluye el logotipo, columnas de enlaces y datos de contacto sobre un fondo oscuro.

![Wireframe - Testimonials, Contact y Footer](../assets/img/chapter-V/wireframe-footer-video.png)

### 5.3.2. Landing Page Mock-up

El mock-up del landing page de Veyra representa el diseño visual final con la paleta de colores, tipografía, imágenes e iconografía definitivos. Refleja la identidad de marca de Metasoft aplicada a cada sección de la página.

**Hero — Veyra**

El hero presenta el navbar con el logotipo de Veyra en azul-verde, los enlaces de navegación en gris oscuro y los botones "Sign In" y "Sign Up" diferenciados. El fondo es de tonos azul claro con una curva decorativa ondulada. El titular principal reza **"The Best Care is Always Connected"** acompañado del subtítulo "Veyra keeps you close to your loved ones' health and well-being, no matter the distance." A la derecha se muestra una fotografía de un cuidador con un adulto mayor en silla de ruedas. El CTA principal es el botón "Start now →" en azul-verde.

![Mock-up - Hero](../assets/img/chapter-V/mockup-hero.png)

**What We Offer — Veyra**

Esta sección presenta el título "What we offer" centrado con una línea decorativa inferior. Se despliega una cuadrícula 2x2 con cuatro tarjetas de servicios, cada una con un ícono representativo, título en azul oscuro y descripción: Home Health Care, Pediatric Care, Companion Care y Conditions Treated.

![Mock-up - What We Offer](../assets/img/chapter-V/mockup-what-we-offer.png)

**Features — Veyra**

La sección Features muestra la etiqueta "Features" en un chip verde-azulado y el título "Key Features of Our Platform". A la izquierda se presenta un video embebido de YouTube; a la derecha, un listado desplegable con acordeón interactivo: Seamless Communication, Real-Time Health Monitoring, Streamlined Clinical Management y Comprehensive Reporting & Analytics.

![Mock-up - Features](../assets/img/chapter-V/mockup-features.png)

**Benefits — Veyra**

Encabezada por la etiqueta "Benefits" y el título "The Veyra Advantage: Benefits for a New Era of Elder Care", presenta cuatro tarjetas en cuadrícula 2x2 con imagen fotográfica, título en negrita y descripción: Enhanced Communication, Streamlined Clinical Management, Improved Resident Well-being e Increased Peace of Mind.

![Mock-up - Benefits](../assets/img/chapter-V/mockup-benefits.png)

**About Us — Veyra**

La sección About Us presenta el título "Metasoft": Transforming Elder Care with Trust and Innovation" seguido de dos párrafos descriptivos y tres puntos destacados con íconos de check: Seamless Communication, Real-Time Insights y Enhanced Security. A la derecha se muestra un video embebido complementario.

![Mock-up - About Us](../assets/img/chapter-V/mockup-about-us.png)

**Plans — Veyra**

Encabezada por la etiqueta "Plans" y el título "Choose the Plan that Fits Your Needs", muestra un toggle Monthly/Annually y dos tarjetas: **Family Plan ($30/mes)** para familias que desean supervisar el cuidado en casa, y **Nursing Home Plan ($300/mes)** como solución completa para instituciones de cuidado.

![Mock-up - Plans](../assets/img/chapter-V/mockup-plans.png)

**Testimonials y Footer — Veyra**

La sección "What our users are saying" muestra tres tarjetas de testimonios con calificación de 5 estrellas en dorado, texto de reseña en cursiva y nombre del usuario. Debajo se presenta el banner "It's time to connect and care for your loved ones." con botón "Subscribe". El footer presenta sobre fondo azul marino oscuro el logotipo de Veyra, columnas de enlaces (About y Contact) y el copyright de Metasoft 2025.

![Mock-up - Testimonials y Footer](../assets/img/chapter-V/mockup-testimonials-footer.png)

**Our Team — Veyra**

La sección del equipo presenta el título "Our Team" con los integrantes de Metasoft en tarjetas con foto de perfil circular, nombre, rol en cursiva azul y descripción: Renato Guillermo Calvo Yalan, Renzo Miguel Llerena Delgado, Oscar Javier Armas Sánchez, Vicente Quijandria Araneda, Dayro Richard Rios Piñan, Janover Gonzalo Saldaña Vela y Renzo Alonso Villafuerte Tapia.

![Mock-up - Our Team](../assets/img/chapter-V/mockup-our-team.png)

### 5.3.3. Landing Page Wireframe Mobile Web Browser.

El wireframe mobile del landing page de Veyra representa la estructura básica adaptada a dispositivos móviles, reorganizando los elementos en una sola columna para facilitar la navegación táctil. Se evidencia la aplicación de principios de diseño inclusivo y arquitectura de información optimizada para pantallas pequeñas.

**Nav y Hero — Mobile**

El navbar mobile muestra el logotipo de Veyra a la izquierda, con el toggle de idioma EN/ES y los enlaces de navegación simplificados a la derecha. El hero presenta el título principal, subtítulo y descripción apilados verticalmente con jerarquía tipográfica clara, seguidos del botón de llamado a la acción "Button" centrado y un placeholder de imagen a ancho completo.

![Wireframe Mobile - Hero](../assets/img/chapter-V/wireframe-mobile-hero.png)

**What We Offer — Mobile**

Las tarjetas de servicios se reorganizan en una sola columna, cada una a ancho completo con placeholder de título y bloques de texto descriptivo apilados. El fondo oscuro de la sección contrasta con las tarjetas de contenido en blanco para facilitar la legibilidad.

![Wireframe Mobile - What We Offer](../assets/img/chapter-V/wireframe-mobile-what-we-offer.png)

**Features — Mobile**

La sección Features presenta el título y descripción centrados verticalmente, seguidos de un placeholder de video embebido a ancho completo con dos botones de acción inferiores, optimizando el espacio vertical disponible en pantallas pequeñas.

![Wireframe Mobile - Features](../assets/img/chapter-V/wireframe-mobile-features.png)

**Plans — Mobile**

Las tarjetas de planes se apilan verticalmente, cada una con título, descripción, precio, lista de características con pares etiqueta-campo y un botón de acción a ancho completo. La disposición en columna facilita la comparación secuencial de planes en mobile.

![Wireframe Mobile - Plans](../assets/img/chapter-V/wireframe-mobile-plans.png)

**Our Team — Mobile**

Los integrantes del equipo se presentan en tarjetas horizontales apiladas verticalmente, cada una con avatar circular a la izquierda y bloques de texto de nombre y descripción a la derecha, optimizando el espacio en pantallas estrechas.

![Wireframe Mobile - Our Team](../assets/img/chapter-V/wireframe-mobile-our-team.png)

**Contact — Mobile**

El formulario de contacto se presenta a ancho completo con título y subtítulo centrados, seguidos de pares etiqueta-campo de entrada apilados verticalmente: nombre, email, mensaje y un área de texto amplia. El botón de envío "Button" se ubica centrado al pie del formulario.

![Wireframe Mobile - Contact](../assets/img/chapter-V/wireframe-mobile-contact.png)

**About Us — Mobile**

La sección About Us presenta el título centrado seguido de un placeholder de imagen representativa a ancho completo, evidenciando la reorganización vertical del contenido que en desktop se dispone en dos columnas.

![Wireframe Mobile - About Us](../assets/img/chapter-V/wireframe-mobile-about-us.png)

**Footer — Mobile**

El footer mobile muestra el título de sección centrado, un placeholder de video o imagen principal a ancho completo, y debajo el footer con logotipo, íconos de redes sociales y columnas de enlaces reorganizadas en una cuadrícula compacta sobre fondo oscuro.

![Wireframe Mobile - Footer](../assets/img/chapter-V/wireframe-mobile-footer.png)

### 5.3.4. Landing Page Mock-up Mobile Web Browser.

El diseño responsive del landing page de Veyra se adapta completamente a dispositivos móviles, manteniendo la identidad visual de la marca y reorganizando los elementos en una sola columna para facilitar la navegación táctil.

**Hero — Mobile**

El navbar mobile muestra el logotipo de Veyra a la izquierda, un selector de idioma EN y el ícono de menú hamburguesa a la derecha. El hero presenta el título "The Best Care is Always Connected" centrado en tipografía bold, el subtítulo y el botón "Start now →" apilados verticalmente, seguidos de la imagen representativa a ancho completo.

![Mock-up Mobile - Hero](../assets/img/chapter-V/mockup-mobile-hero.png)

**What We Offer — Mobile**

Las cuatro tarjetas de servicios se reorganizan en una sola columna, cada una a ancho completo con ícono, título y descripción. La navegación sticky superior se mantiene visible durante el scroll.

![Mock-up Mobile - What We Offer](../assets/img/chapter-V/mockup-mobile-what-we-offer.png)

**Features — Mobile**

La sección Features presenta el chip "Features" y el título centrados, seguidos del video embebido a ancho completo. Las características clave se muestran en acordeón desplegable debajo del video, optimizando el espacio vertical.

![Mock-up Mobile - Features](../assets/img/chapter-V/mockup-mobile-features.png)

**Benefits — Mobile**

El chip "Benefits" y el título "The Veyra Advantage: Benefits for a New Era of Elder Care" se muestran centrados. Cada beneficio ocupa una tarjeta completa con imagen superior, título en negrita y descripción, apiladas verticalmente: Enhanced Communication, Streamlined Clinical Management, Improved Resident Well-being e Increased Peace of Mind.

![Mock-up Mobile - Benefits](../assets/img/chapter-V/mockup-mobile-benefits.png)

**About Us — Mobile**

El chip "About Us" y el título "Metasoft": Transforming Elder Care with Trust and Innovation" se presentan a ancho completo con el contenido textual centrado. Los tres puntos destacados con íconos de check azul se apilan verticalmente, seguidos del video embebido.

![Mock-up Mobile - About Us](../assets/img/chapter-V/mockup-mobile-about-us.png)

**Our Team — Mobile**

Los integrantes del equipo se presentan en tarjetas individuales a ancho completo, cada una con foto de perfil circular centrada, nombre, rol en verde-azulado y descripción. Las tarjetas se apilan verticalmente facilitando la lectura en pantallas pequeñas.

![Mock-up Mobile - Our Team](../assets/img/chapter-V/mockup-mobile-our-team.png)

**Plans — Mobile**

El chip "Plans" y el título "Choose the Plan that Fits Your Needs" se muestran centrados, con el toggle Monthly/Annually a ancho completo. Las tarjetas de planes Family Plan ($30) y Nursing Home Plan ($300) se apilan verticalmente, cada una con precio destacado, botón de acción y lista de características con íconos de check.

![Mock-up Mobile - Plans](../assets/img/chapter-V/mockup-mobile-plans.png)

**Testimonials — Mobile**

La sección "What our users are saying" presenta las tres tarjetas de testimonios apiladas verticalmente, cada una con calificación en estrellas doradas, texto en cursiva y nombre del usuario: Ana G. (5 estrellas), Carlos R. (5 estrellas) y Sofía L. (4.5 estrellas).

![Mock-up Mobile - Testimonials](../assets/img/chapter-V/mockup-mobile-testimonials.png)

**Call to Action — Mobile**

El banner "It's time to connect and care for your loved ones." se presenta con el texto y el botón "Subscribe" apilados verticalmente a ancho completo sobre fondo azul claro.

![Mock-up Mobile - CTA](../assets/img/chapter-V/mockup-mobile-cta.png)

**Footer — Mobile**

El footer sobre fondo azul marino oscuro reorganiza el contenido en cuatro columnas compactas: logotipo de Veyra con tagline "Connecting families and caregivers" e íconos de redes sociales (Instagram, Facebook, LinkedIn); columna Platform con enlaces Home, Features, Benefits, About Us y Plans; columna Company con About Us, Help Center y Community; y columna Contact con email contacto@metasoft.pe, teléfono +1 (555) 482-9599 y ubicación UPC Lima – Perú.

![Mock-up Mobile - Footer](../assets/img/chapter-V/mockup-mobile-footer.png)

### 5.3.3. Landing Page Wireframe Mobile Web Browser.


## 5.4. Applications UX/UI Design
Para esta parte como grupo explicaremos nuestros diseños Wireframes y Mock-ups de nuestra aplicación móvil y aplicación web de nuestro producto Veyra

### 5.4.1. Applications Wireframes

**WEB APPLICATION WIREFRAMES**

Se presenta el diseño visual y de interacción en formato de wireframes de nuestro producto digital.

Tenemos las pantallas generales que vendrían a ser el inicio sesión y registro.


Iniciar sesión: En esta pantalla le mostramos al administrador de casa de reposo y al doctor los campos a llenar para ingresar con su cuenta en nuestra plataforma,

<p align="center">
  <img src="../assets/img/chapter-V/veyra-wireframes/web-application/Sign-in.png" alt="Wireframe" width="500px" height="auto"/>
</p>

Registrar Admin: En esta pantalla le mostramos al administrador de casa de reposo los campos a llenar para crearse una cuenta en nuestra plataforma. Se usaron elementos como formas, textos y colores.

<p align="center">
  <img src="../assets/img/chapter-V/veyra-wireframes/web-application/create-admin.png" alt="Wireframe" width="500px" height="auto"/>
</p>

**MOBILE APPLICATION WIREFRAMES**

El diseño móvil prioriza la inmediatez y la movilidad dentro de la casa de reposo.

**Interfaz del Familiar**: Una vista simplificada y humana. Muestra el estado actual del residente ("Papá está descansando", "Signos estables") para brindar tranquilidad.

**Interfaz del Personal de Cuidado**: Una herramienta de trabajo con notificaciones críticas (Alertas de caídas, frecuencia cardíaca fuera de rango) que requieren acción inmediata.

### 5.4.2. Applications Wireflow Diagrams

A continuación, presentamos los diagramas de flujo de nuestra plataforma web, diseñados para representar cómo responde el sistema a las interacciones de los usuarios. Cada diagrama refleja un objetivo del usuario vinculado a las distintas funcionalidades, con un único flujo que considera variaciones de acciones según los privilegios del rol (Administrador, Médico, Enfermera o Familiar). Antes de crear estos diagramas, establecimos flujos de tareas (Task Flows) para definir las rutas de navegación típicas en la aplicación.

**TaskFlows**

- Iniciar sesión en la plataforma
- Registrar una nueva habitación (cuarto) en el sistema
- Registrar un nuevo personal
- Registrar un nuevo residente y asignar habitación
- Conceder acceso al sistema (Personal médico o Familiar)
- Registrar un nuevo dispositivo IoT
- Vincular un dispositivo IoT al perfil de un residente
- Definir o actualizar parámetros clínicos de telemetría
- Visualizar el monitoreo en vivo (Geolocalización y Signos Vitales)
- Atender una alerta de emergencia del sistema
- Programar una nueva actividad recreativa o terapéutica

| User Goal                                                                                                                                                                                                                                                                                                        | WireFlow                                                                           |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| **UG01:** Registrar un nuevo residente en el sistema de la casa de reposo. Permite al personal administrativo ingresar los datos demográficos y médicos de un nuevo adulto mayor, asignándole una habitación y creando su expediente digital centralizado.                                                       | ![alt text](../assets/img/chapter-V/veyra-wireframes/web-application/UG1-flow.png) |
| **UG02:** Conceder y gestionar accesos a la plataforma para el personal y familiares. Facilita al administrador la creación de credenciales de inicio de sesión y la asignación de roles y permisos específicos para médicos, personal de enfermería y familiares de los residentes.                             | ![alt text](assets/img/chapter-V/veyra-wireframes/web-application/UG2-flow.png)    |
| **UG03:** Definir y actualizar los parámetros clínicos de alerta para cada residente. Permite al personal médico establecer los límites mínimos y máximos aceptables de signos vitales (telemetría), garantizando que el sistema genere alertas personalizadas basadas en la condición clínica de cada paciente. | ![alt text](assets/img/chapter-V/veyra-wireframes/web-application/UG3-flow.png)    |
| **UG04:** Agendar y gestionar las actividades recreativas y terapéuticas. Proporciona al coordinador de actividades las herramientas para programar eventos diarios, estableciendo horarios, descripciones y categorías, asegurando una rutina activa y estructurada para los residentes.                        | ![alt text](assets/img/chapter-V/veyra-wireframes/web-application/UG4-flow.png)    |
| **UG05:** Monitorear la ubicación en tiempo real y signos vitales mediante dispositivos IoT. Permite al familiar visualizar en un mapa interactivo la geolocalización de los residentes y consultar sus signos vitales en vivo.                                                                                  | ![alt text](assets/img/chapter-V/veyra-wireframes/web-application/UG5-flow.png)    |
| **UG06:** Registrar y gestionar las habitaciones del centro. Permite al personal administrativo crear nuevos cuartos en el sistema, definiendo detalles clave para mantener un control organizado de la disponibilidad y el alojamiento de los residentes.                                                       | ![alt text](assets/img/chapter-V/veyra-wireframes/web-application/UG6-flow.png)    |
| **UG07:** Administrar el inventario de dispositivos IoT. Facilita a los administradores registrar nuevos dispositivos de telemetría y geolocalización en el sistema para su posterior vinculación a los residentes.                                                                                              | ![alt text](assets/img/chapter-V/veyra-wireframes/web-application/UG7-flow.png)    |
| **UG08:** Registrar y gestionar al personal de la casa de reposo. Permite al administrador ingresar la información profesional, turnos y datos de contacto de enfermeros, médicos y staff de apoyo para organizar la operatividad del centro.                                                                    | ![alt text](assets/img/chapter-V/veyra-wireframes/web-application/UG8-flow.png)    |

### 5.4.2. Applications Mock-ups

**WEB APPLICATION MOCK-UPS**

Se observa una interfaz con un Dashboard robusto. Para el Doctor, resaltan las tablas de telemetría (ej. ritmo cardíaco, saturación de oxigeno y estado de salud).

<p align="center">
  <img src="../assets/img/chapter-V/veyra-mockups/web-application/doctor-dashboard.png" alt="Mockup" width="500px" height="auto"/>
</p>

**MOBILE APPLICATION MOCK-UPS**

En la aplicación móvil, el familiar tiene una vista clara y reconfortante del estado de su ser querido, con enlaces rapidos para ver sus indicadores de salud.
<p align="center">
  <img src="../assets/img/chapter-V/veyra-mockups/mobile-application/family-dashboard.png" alt="Mockup" width="200px" height="auto"/>

### 5.4.3. Applications User Flow Diagrams

En esta sección presentamos los User Flows derivados de nuestros Wireflows, utilizando los Mock-ups de alta fidelidad. Cada flujo detalla la ruta esperada para completar el objetivo con éxito (Happy Path) y las rutas alternativas frente a posibles errores del usuario o del sistema (Unhappy Paths), aplicando principios de prevención de errores.

#### User Flow 1: Registro y Vinculación de un Familiar (Relative)

* **User Persona:** Administrador del Sistema.
* **User Goal:** Registrar el perfil de un familiar, ingresar sus datos de contacto y vincularlo obligatoriamente a un residente específico para generarle su acceso seguro al portal de monitoreo.

**🟢 Happy Path (Ruta Esperada)**
1. El usuario ingresa al módulo **Relatives** y hace clic en el botón primario `+ Add New`.
2. El sistema muestra el formulario *Register Relative*. El usuario ingresa el nombre y correo personal válido.
3. En la sección *Resident Association*, selecciona exitosamente al residente correspondiente de la lista desplegable.
4. Al confirmar, el sistema envía el correo de invitación (*Secure Self-Setup*) y redirige a la vista principal.
5. La pantalla se actualiza mostrando la nueva tarjeta (Card) del familiar registrado.

![Happy Path - Register Relative](../assets/img/chapter-V/uf-relative-happy-path.png)


**🔴 Unhappy Paths (Rutas Alternativas / Manejo de Errores)**

**Escenario A: Omisión de Vinculación de Residente (Error de Lógica de Negocio)**
* **Condición:** El usuario llena los datos personales, pero olvida seleccionar a un residente en la sección *Resident Association*.
* **Flujo de respuesta:** Al intentar guardar, el sistema previene el envío de datos incompletos (Validación Front-end). El flujo se detiene en la misma pantalla, resaltando el campo de vinculación en rojo con el mensaje de error: *"Es obligatorio vincular al familiar con un residente para restringir el acceso a los datos"*. El usuario debe corregirlo para continuar.

![Unhappy Path - Error States](../assets/img/chapter-V/uf-relative-unhappy-path.png)

#### User Flow 2: Registro de una Nueva Habitación (Rooms)

* **User Persona:** Administrador del Sistema.
* **User Goal:** Registrar una nueva habitación en el sistema, definiendo su número identificador, tipo y capacidad máxima para mantener actualizado el inventario de espacios disponibles en la casa de reposo.

**🟢 Happy Path (Ruta Esperada)**
1. El usuario ingresa al módulo **Rooms** y visualiza la lista actual (o el estado vacío *No Rooms Registered*). Hace clic en el botón primario `+ Add New`.
2. El sistema redirige a la vista del formulario *New Room* (Room Information).
3. El usuario ingresa el identificador de la habitación (ej. R-002) y la capacidad máxima de residentes.
4. Hace clic en el selector *Room Type*, desplegando las opciones, y selecciona la categoría correspondiente (ej. *Double*).
5. Al hacer clic en el botón de confirmación (*Register Room*), el sistema valida la información, guarda el registro y redirige al usuario a la vista principal.
6. La tabla de **Rooms** se actualiza y muestra la nueva habitación creada, calculando automáticamente su disponibilidad y estado actual (ej. *Available*).

![Happy Path - Add New Room](../assets/img/chapter-V/uf-rooms-happy-path.png)

**🔴 Unhappy Paths (Rutas Alternativas / Manejo de Errores)**

**Escenario A: Número de Habitación Duplicado (Conflicto de Datos)**
* **Condición:** El usuario ingresa un identificador de habitación (Room Number) que ya existe físicamente en los registros del sistema (ej. intenta crear la "R-001" cuando ya está ocupada).
* **Flujo de respuesta:** Al intentar guardar el registro, el sistema realiza una validación con la base de datos, detiene el flujo y muestra un mensaje de error tipo alerta o *inline*: *"Este número de habitación ya se encuentra registrado"*. El usuario debe ingresar un identificador único para poder continuar, previniendo inconsistencias en la asignación de pacientes.

![Unhappy Path - Rooms Error States](../assets/img/chapter-V/uf-rooms-unhappy-path.png)

#### User Flow 3: Registro de un Nuevo Personal (Staff Members)

* **User Persona:** Administrador del Sistema.
* **User Goal:** Registrar la información personal, de contacto y de emergencia de un nuevo empleado (enfermero, médico o staff de apoyo) para integrarlo a la operatividad de la casa de reposo.

**🟢 Happy Path (Ruta Esperada)**
1. El usuario ingresa al módulo **Staff** y visualiza la vista principal (vacía en el primer uso). Hace clic en el botón primario `+ Add New`.
2. El sistema muestra el formulario de registro detallado, dividido en secciones lógicas: *Personal Data*, *Identification Data*, *Contact Data* y *Location Data*.
3. El usuario ingresa la información del empleado y hace *scroll* hacia la sección inferior de *Emergency Contacts*.
4. Completa los datos del contacto principal de emergencia (Main Contact) y hace clic en el botón de confirmación/registro.
5. El sistema procesa la información, la guarda en la base de datos y redirige automáticamente a la vista de lista de **Staff Members**.
6. La pantalla se actualiza mostrando una tarjeta (Card) con el perfil resumido del nuevo empleado registrado exitosamente.

![Happy Path - Add New Staff](../assets/img/chapter-V/uf-staff-happy-path.png)

**🔴 Unhappy Paths (Rutas Alternativas / Manejo de Errores)**

**Escenario A: Formato Inválido en Contactos de Emergencia**
* **Condición:** En la sección *Emergency Contacts*, el administrador ingresa texto alfabético en el campo destinado para el número de teléfono del familiar del empleado.
* **Flujo de respuesta:** A través de validaciones *Front-end* en tiempo real, el sistema detecta la discrepancia de formato al momento de escribir o al cambiar de campo (*on blur*). Muestra una alerta debajo del input indicando *"Ingrese un número de teléfono válido"*, deshabilitando temporalmente el botón de guardado hasta que se ingrese el tipo de dato correcto.

![Unhappy Path - Staff Error States](../assets/img/chapter-V/uf-staff-unhappy-path.png)

#### User Flow 4: Administración de Inventario de Dispositivos IoT (Devices)

* **User Persona:** Administrador del Sistema.
* **User Goal:** Administrar el inventario de dispositivos (pulseras de signos vitales, geolocalizadores) registrando nuevo hardware o gestionando los existentes para su posterior vinculación a los residentes.

**🟢 Happy Path (Ruta Esperada)**
1. El usuario ingresa al módulo **Devices** y visualiza la tabla principal *List of Devices* con el inventario actual y sus estados (*Active, Inactive, Low Battery*).
2. Para añadir nuevo hardware, hace clic en el botón primario `+ Register Device`.
3. El sistema despliega un modal superpuesto (*overlay*) solicitando la información básica del equipo.
4. El usuario ingresa el identificador único físico (ej. BAND-008) y selecciona el tipo de dispositivo.
5. Al hacer clic en guardar, el modal se cierra y la tabla se actualiza automáticamente mostrando el nuevo dispositivo en la primera fila con el estado predeterminado.
6. *(Flujo de gestión secundario)*: Si el usuario desea encontrar un dispositivo específico, utiliza la barra de búsqueda superior (`Search device ID...`); la tabla filtra los resultados en tiempo real, permitiéndole usar las acciones rápidas de editar (lápiz) o eliminar (basurero).

![Happy Path - Devices Inventory](../assets/img/chapter-V/uf-devices-happy-path.png)

**🔴 Unhappy Paths (Rutas Alternativas / Manejo de Errores)**

**Escenario A: Intento de registro de un Device ID duplicado**
* **Condición:** Al registrar un nuevo dispositivo, el usuario ingresa un código (ej. `BAND-001`) que ya está en uso dentro de la base de datos de Veyra.
* **Flujo de respuesta:** El sistema aplica una validación *Back-end* y previene la creación. El botón de guardado se detiene y se muestra un mensaje de error *inline* en el modal: *"Este Device ID ya existe en el inventario. Verifique el equipo físico"*.

**Escenario B: Eliminación de un dispositivo actualmente asignado**
* **Condición:** El usuario hace clic en el ícono de eliminar (basurero) de un dispositivo que tiene el estado *ACTIVE* y está actualmente vinculado a un residente (ej. asignado por *Enf. Patricia Gómez*).
* **Flujo de respuesta:** El sistema intercepta la acción para prevenir la pérdida de monitoreo en vivo. En lugar de borrarlo directamente, despliega una alerta crítica: *"Acción Denegada: Este dispositivo está actualmente asignado a un residente. Desvincúlelo desde el perfil del residente antes de eliminarlo del inventario"*. Esto protege la integridad lógica de la aplicación y la seguridad del paciente.

![Unhappy Path - Devices Error States](../assets/img/chapter-V/uf-devices-unhappy-path.png)

#### User Flow 5: Gestión de Actividades (Activities)

* **User Persona:** Administrador / Personal Médico o de Enfermería.
* **User Goal:** Agendar, visualizar en detalle y actualizar actividades (recreativas, médicas, físicas o sociales) para mantener una rutina estructurada y activa para los residentes de la casa de reposo.

**🟢 Happy Path (Ruta Esperada: Crear y Editar)**
1. El usuario ingresa al módulo **Activities** y visualiza la lista principal con los eventos programados y sus estados (ej. *Programada*, *En curso*).
2. Para agendar un nuevo evento, hace clic en el botón `+ Add New`.
3. El sistema despliega el modal *Add activity*. El usuario ingresa el nombre de la actividad (ej. "Morning Painting Workshop"), detalla los objetivos en la descripción, y establece la fecha y hora.
4. Selecciona la categoría correspondiente mediante los *radio buttons* en forma de píldora (ej. *Recreational* o *Medical*).
5. Hace clic en *Save activity*. El sistema registra el evento y la tabla principal se actualiza automáticamente.
6. *(Flujo de consulta y edición)*: Si el usuario desea ver más información, hace clic en la fila de la actividad, abriendo el modal de *Activity details* (vista de solo lectura). Si detecta que necesita cambiar algo, presiona el botón *Edit activity*, el cual transiciona directamente al modal *Update activity*, pre-cargando los datos actuales para su modificación rápida.

![Happy Path - Activities Management](../assets/img/chapter-V/uf-activities-happy-path.png)

**🔴 Unhappy Paths (Rutas Alternativas / Manejo de Errores)**

**Escenario A: Programación en Fechas Pasadas o Conflictos de Horario**
* **Condición:** Al momento de utilizar el selector de fecha y hora (*Date / Hour*) en el modal de *Add activity* o *Update activity*, el usuario selecciona por error una fecha anterior al día de hoy.
* **Flujo de respuesta:** El sistema aplica una validación lógica (*Front-end* o *Back-end*). Al intentar guardar la actividad, la acción se bloquea. El campo de fecha se resalta en rojo y aparece un mensaje de error en línea (*inline error*): *"La fecha de la actividad no puede ser en el pasado"*. El usuario es obligado a seleccionar una fecha futura o actual para completar el registro.

**Escenario B: Omisión de Datos Obligatorios**
* **Condición:** El usuario ingresa rápidamente la fecha y la hora, pero olvida escribir el Nombre de la actividad (*Activity name*) o no selecciona ninguna de las 4 categorías disponibles.
* **Flujo de respuesta:** El sistema previene la creación de eventos "vacíos" en el calendario. El botón principal (*Save activity* o *Update Activity*) se mantiene inactivo (estado *disabled*). Si se activa la validación al perder el foco (*on blur*), el campo faltante mostrará un texto de ayuda en rojo: *"Este campo es obligatorio"*, guiando al coordinador a completar toda la información necesaria para los residentes.

![Unhappy Path - Activities Error States](../assets/img/chapter-V/uf-activities-unhappy-path.png)

#### User Flow 6: Concesión y Gestión de Accesos (Staff Access)

* **User Persona:** Administrador del Sistema.
* **User Goal:** Generar credenciales de acceso a la plataforma para un empleado existente, asignándole un rol específico (ej. Enfermero, Doctor) que determinará sus permisos y restricciones dentro del sistema.

**🟢 Happy Path (Ruta Esperada)**
1. El usuario ingresa al módulo **Staff** y visualiza la lista o tarjetas de los empleados registrados (ej. Juan Barrientos).
2. Selecciona la opción para gestionar o conceder acceso al empleado correspondiente.
3. El sistema redirige a la pantalla **Give Access to Staff Member**, mostrando un encabezado con la información contextual del empleado y su estado actual (ej. *Status: Pending Access*).
4. El administrador configura la sección de *Account Credentials*, validando el correo institucional y asignando una contraseña temporal.
5. En la sección *System Role & Permissions*, hace clic en el selector desplegable y asigna el rol correspondiente a las funciones del empleado (ej. selecciona *Nurse* o *Doctor*).
6. Mantiene marcada la casilla *"Require password change on first login"* por políticas de seguridad.
7. Al hacer clic en confirmar/guardar, el sistema procesa la solicitud, genera los permisos heredados del rol seleccionado y actualiza el estado del empleado, permitiéndole iniciar sesión en la plataforma.

![Happy Path - Give Access to Staff](../assets/img/chapter-V/uf-staff-access-happy-path.png)

**🔴 Unhappy Paths (Rutas Alternativas / Manejo de Errores)**

**Escenario A: Omisión de Asignación de Rol (Error de Permisos)**
* **Condición:** El administrador completa correctamente el correo y la contraseña temporal, pero olvida seleccionar un rol (*Select Staff Role*) en el menú desplegable, dejándolo en blanco.
* **Flujo de respuesta:** Al intentar guardar los cambios, el sistema previene la creación de un usuario sin privilegios definidos (*Validación Front-end*). El botón de guardado se bloquea temporalmente, el selector de rol se resalta en rojo y aparece un mensaje de error en línea: *"Debe seleccionar un rol para aplicar los permisos del sistema"*. El flujo no avanza hasta que se asigne un rol válido.

**Escenario B: Formato de Correo Inválido o Contraseña Débil**
* **Condición:** El usuario ingresa un correo sin el formato estándar (ej. `jbarrientos@example`) o ingresa una contraseña temporal demasiado corta (ej. `123`).
* **Flujo de respuesta:** Al perder el foco del campo (*on blur*), el sistema valida las credenciales y detecta que no cumplen con las políticas de seguridad. Se despliega una alerta debajo del campo correspondiente indicando: *"Ingrese un correo válido"* o *"La contraseña debe tener al menos 8 caracteres"*, garantizando que las credenciales iniciales cumplan con los estándares de seguridad de Veyra antes de ser enviadas.

![Unhappy Path - Staff Access Error States](../assets/img/chapter-V/uf-staff-access-unhappy-path.png)

#### User Flow 7: Definición y Actualización de Parámetros Clínicos (Clinical Parameters)

* **User Persona:** Médico Tratante / Enfermera Jefe.
* **User Goal:** Establecer y actualizar los límites mínimos y máximos aceptables de los signos vitales (telemetría) para un residente específico, asegurando que las alertas generadas por los dispositivos IoT sean precisas y personalizadas a su condición clínica.

**🟢 Happy Path (Ruta Esperada)**
1. El usuario ingresa al módulo **Resident Record** y visualiza el directorio de pacientes (*Patient Directory*) en el panel izquierdo, ordenados por su estado de salud actual (Crítico, En Obs., Estable).
2. Hace clic en la tarjeta de un residente específico (ej. María Ríos).
3. El panel derecho, que inicialmente estaba vacío, se puebla con el expediente digital del paciente seleccionado.
4. El usuario navega a la pestaña **Clinical Parameter**.
5. Modifica los valores numéricos en los campos de límites de *Heart Rate* (bpm), *Oxygen Sat* (%) y/o *Blood Pressure* (mmHg) según el nuevo plan de tratamiento del paciente.
6. Hace clic en el botón verde **Save Parameters**.
7. El sistema valida los datos, actualiza las reglas del motor de alertas en la base de datos y muestra una notificación de éxito, manteniendo al usuario en la misma vista para continuar su trabajo.

![Happy Path - Update Clinical Parameters](../assets/img/chapter-V/uf-clinical-parameters-happy-path.png)

**🔴 Unhappy Paths (Rutas Alternativas / Manejo de Errores)**

**Escenario A: Incongruencia Lógica en los Umbrales (Mínimo > Máximo)**
* **Condición:** El médico, por un error de tipeo, ingresa un valor mínimo que es superior al valor máximo (ej. Heart Rate: Mínimo 110, Máximo 90).
* **Flujo de respuesta:** Al intentar guardar, el sistema intercepta la acción mediante una validación *Front-end*. El flujo se detiene y los campos en conflicto se resaltan en rojo con un mensaje *inline*: *"Error de rango: El límite mínimo no puede ser superior al límite máximo"*. Esto previene fallos lógicos graves en el algoritmo de disparo de emergencias.

**Escenario B: Omisión de Valores de Monitoreo Crítico**
* **Condición:** El usuario borra completamente el valor de un campo obligatorio (ej. deja en blanco el límite de *Oxygen Sat*) y presiona *Save Parameters*.
* **Flujo de respuesta:** El sistema no permite dejar parámetros de soporte vital en blanco (valores nulos). El botón de guardado se deshabilita temporalmente o, al presionarlo, el campo vacío arroja una alerta: *"Este parámetro es obligatorio para mantener el monitoreo activo"*. El usuario debe ingresar un número válido para poder actualizar el perfil.

![Unhappy Path - Clinical Parameters Error States](../assets/img/chapter-V/uf-clinical-parameters-unhappy-path.png)

#### User Flow 8: Monitoreo Remoto por Familiares (Mobile App)

* **User Persona:** Familiar / Contacto de Emergencia.
* **User Goal:** Visualizar en tiempo real el estado de salud, signos vitales y ubicación GPS de su familiar alojado en la casa de reposo, utilizando la aplicación móvil para mantener la tranquilidad y el control a distancia.

**🟢 Happy Path (Ruta Esperada)**
1. El usuario (familiar) abre la aplicación móvil de Veyra en su smartphone e inicia sesión.
2. Toca la pestaña **Health** (ícono del maletín médico) en la barra de navegación inferior.
3. El sistema carga el panel de resumen del residente asignado (ej. *Eleanor Vance*). El indicador principal muestra un estado positivo con un badge turquesa: **Status: Stable**.
4. El usuario revisa las tarjetas de telemetría en vivo, comprobando que el ritmo cardíaco (72 BPM) y la saturación de oxígeno (95% SPO2) están dentro de los rangos normales.
5. Hace *scroll* hacia la parte inferior de la pantalla y visualiza el mapa interactivo, confirmando la ubicación actual y segura del residente mediante los pines de geolocalización.

![Happy Path - Relative Mobile Monitoring](../assets/img/chapter-V/uf-mobile-relative-happy-path.png)

**🔴 Unhappy Paths (Rutas Alternativas / Manejo de Errores)**

**Escenario A: Pérdida de Conexión del Dispositivo IoT (Datos Offline)**
* **Condición:** La pulsera inteligente del residente se queda sin batería o pierde la conexión a la red WiFi/Bluetooth de la casa de reposo, interrumpiendo la transmisión de telemetría.
* **Flujo de respuesta:** El sistema previene que el familiar tome decisiones basadas en datos congelados. Las tarjetas de *Heart Rate* y *SPO2* se atenúan (color gris o estado *disabled*) y muestran un ícono de advertencia indicando: *"Dispositivo fuera de línea. Última actualización: hace 2 horas"*. El badge superior cambia a color gris con el texto **Status: Unknown**.

**Escenario B: Detección de Anomalías Clínicas (Alerta Activa)**
* **Condición:** La telemetría del residente detecta una caída en la saturación de oxígeno por debajo del límite seguro establecido previamente por el médico.
* **Flujo de respuesta:** La aplicación cambia inmediatamente el estado superior a un badge rojo de alerta: **Status: Critical**. La tarjeta de *SPO2* altera su diseño, resaltando el número en rojo para captar la atención. Además, el sistema despliega un banner de acción rápida en la parte superior: *"Contactar al centro médico"*, permitiendo al familiar iniciar un chat directo con la enfermera de turno desde la aplicación.

![Unhappy Path - Mobile Monitoring Alerts](../assets/img/chapter-V/uf-mobile-relative-unhappy-path.png)

## 5.5. Applications Prototyping

## 5.6. IoT Device Design

# Diseño IoT — Sistema de Monitoreo de Signos Vitales

## Paso 1 — Definición de Requisitos del Sistema

### Time delay

El tiempo máximo tolerable para el dispositivo es de **3 segundos**. Esto se debe a que el dispositivo se encuentra monitoreando constantemente los signos vitales del residente, por lo que es necesario que la información se actualice en tiempo real para poder detectar cualquier cambio en el estado de salud del residente.

### Suministro de energía

Se usará una batería LiPo de dimensiones pequeñas:

> **Baterías LiPo 502035 · 3.7 V · 300 mAh** — Batería de Polímero de Litio Recargable por micro USB.

---

## Paso 2 — Selección de la Tipología del Dispositivo IoT

Se usará una **tipología tipo estrella**, ya que el dispositivo se conectará directamente a un gateway central que se encargará de enviar la información a la nube. Esto permite una comunicación eficiente y directa entre el dispositivo y el gateway, facilitando la gestión de los datos recopilados.

---

## Paso 3 — Definición de Requisitos de la Capa Física

### Definición de los sensores

El dispositivo contará con sensores de ritmo cardíaco, saturación de oxígeno y temperatura corporal. Estos sensores son fundamentales para monitorear la salud del residente y detectar cualquier cambio en su estado de salud.

### Definición de los actuadores necesarios

El dispositivo contará con 2 actuadores: un botón para encendido y apagado del dispositivo, y una pantalla AMOLED de 1.47 pulgadas para mostrar información relevante al usuario, como el estado de los signos vitales y batería.

### Consumo energético

El sensor de ritmo cardíaco consume aproximadamente **0.5 mA**, el sensor de saturación de oxígeno consume alrededor de **0.3 mA**, y el sensor de temperatura corporal consume aproximadamente **0.2 mA**. El consumo total de los sensores es de aproximadamente **1 mA**. El actuador del botón consume alrededor de **0.1 mA**, y la pantalla AMOLED consume aproximadamente **0.5 mA** cuando está encendida. En total, el consumo estimado del dispositivo es de aproximadamente **1.6 mA**.

Los actuadores se controlarán mediante un microcontrolador que gestionará la energía y la comunicación con los sensores, asegurando un funcionamiento eficiente del dispositivo.

### Precisión de los sensores

La precisión de los sensores es crucial para garantizar la fiabilidad de los datos recopilados:

| Sensor                       | Precisión |
|------------------------------|-----------|
| Ritmo cardíaco               | ±2 bpm    |
| Saturación de oxígeno (SpO₂) | ±2 %      |
| Temperatura corporal         | ±0.1 °C   |

Estos niveles de precisión son adecuados para monitorear la salud del residente y detectar cualquier cambio significativo en su estado de salud.

### Interfaces digitales

Se usarán interfaces digitales como **aplicación web** y **aplicación móvil** para mostrar la información recopilada por los sensores, permitiendo a los usuarios acceder a los datos de manera fácil y rápida. La aplicación web estará diseñada para ser accesible desde cualquier dispositivo con conexión a internet, mientras que la aplicación móvil ofrecerá una experiencia optimizada para dispositivos móviles, con notificaciones en tiempo real sobre el estado de salud del residente.

### Esfuerzo computacional y time-delay local

El esfuerzo computacional requerido para procesar los datos de los sensores es relativamente bajo, ya que se trata principalmente de recopilar y transmitir datos a la nube para su análisis. El microcontrolador del dispositivo se encargará de gestionar la comunicación con los sensores y el envío de datos al gateway central, lo que permitirá un procesamiento eficiente y en tiempo real de la información recopilada.

El time-delay requerido para el procesamiento de datos es de aproximadamente **600 ms** desde la recopilación de datos por parte de los sensores hasta la visualización de la información en las interfaces digitales. Esto garantiza que los usuarios reciban información actualizada y relevante sobre el estado de salud del residente en tiempo real, permitiendo una respuesta rápida ante cualquier cambio significativo en su condición.

---

## Paso 4 — Definición de Requisitos de la Capa de Intercambio

### Tiempo de respuesta

El tiempo de respuesta permitido para el envío o recepción de paquetes desde los nodos hacia el dispositivo es de aproximadamente **1 segundo**. Esto se debe a que el dispositivo se encuentra monitoreando constantemente los signos vitales del residente, por lo que es necesario que la información se actualice en tiempo real para poder detectar cualquier cambio en el estado de salud del residente. Un tiempo de respuesta de 1 segundo garantiza que los datos recopilados por los sensores se transmitan de manera eficiente y oportuna, permitiendo una respuesta rápida ante cualquier cambio significativo en la condición del residente.

### Tipología de comunicación

La tipología de comunicación será **inalámbrica**, utilizando tecnologías como Wi-Fi o Bluetooth para transmitir los datos recopilados por los sensores al gateway central. Esto permite una comunicación eficiente y sin restricciones de cables, facilitando la instalación y el uso del dispositivo en entornos de cuidado de adultos mayores.

### Topología de red

La topología de red será tipo **estrella**, donde el dispositivo se conectará directamente a un edge API que almacenará en local para después enviar la información a cloud. Esto permite una comunicación eficiente y directa entre el dispositivo y el edge, facilitando la gestión de los datos recopilados.

### Distancias máximas de comunicación

| Tramo                         | Distancia máxima |
|-------------------------------|------------------|
| Nodos ↔ edge API (interiores) | ~30 metros       |
| Nodos ↔ microcontroladores    | ~2 metros        |
| Microcontroladores ↔ edge API | ~30 metros       |

La distancia máxima de comunicación entre los nodos y el edge API es de aproximadamente 30 metros en interiores, lo que es adecuado para entornos de cuidado de adultos mayores donde el dispositivo se utilizará principalmente en habitaciones o áreas cercanas al gateway central. Esta distancia permite una comunicación confiable y estable entre el dispositivo y el edge.

La distancia máxima entre los microcontroladores y el edge API es de aproximadamente 30 metros, lo que permite una comunicación eficiente y estable entre el dispositivo y el gateway central en entornos de cuidado de adultos mayores. Esta distancia es adecuada para garantizar que los datos recopilados por los sensores se transmitan de manera oportuna y confiable al edge API para su procesamiento y análisis.

### Consumo energético de la capa de intercambio

El consumo energético de la capa de intercambio es relativamente bajo, ya que se trata principalmente de transmitir datos a través de una conexión inalámbrica. El dispositivo utilizará tecnologías de comunicación eficientes en términos de energía, como Wi-Fi o **Bluetooth Low Energy (BLE)**, para minimizar el consumo energético durante la transmisión de datos. Además, el dispositivo estará diseñado para optimizar el uso de energía, utilizando modos de bajo consumo cuando no esté transmitiendo datos y activándose solo cuando sea necesario para enviar información relevante sobre el estado de salud del residente.

### Encriptación de datos

Los datos van a ser encriptados utilizando protocolos de seguridad estándar como **TLS** para garantizar la confidencialidad e integridad de la información transmitida entre el dispositivo y el edge API. Esto es especialmente importante en entornos de cuidado de adultos mayores, donde la privacidad y seguridad de los datos de salud es una prioridad. La encriptación de los datos garantiza que solo las partes autorizadas puedan acceder a la información recopilada por los sensores, protegiendo la privacidad.

---

## Paso 5 — Definición de Requisitos de la Capa de Información

### Usuarios finales y servicios requeridos

| Usuario              | Servicio necesario                                                                               |
|----------------------|--------------------------------------------------------------------------------------------------|
| Personal asistencial | Monitoreo en tiempo real · Alertas de signos vitales fuera de rango                              |
| Doctor               | Configurar umbral de signos vitales · Monitoreo en tiempo real de los signos vitales             |
| Familiar responsable | Notificaciones de alertas críticas · Monitorear en tiempo real los signos vitales de su familiar |
| Administrador        | Gestión de dispositivos y usuarios                                                               |

### Información procesada por servicio

- **Monitoreo en tiempo real:** frecuencia cardíaca (bpm), SpO₂ (%), temperatura corporal (°C), nivel de batería del dispositivo, timestamp de cada medición.
- **Sistema de alertas:** comparación de valores medidos contra umbrales configurables (ej. FC < 50 bpm o > 120 bpm, SpO₂ < 90%, temperatura > 38.5 °C). Generación de alerta con nivel de severidad (leve, moderado, crítico).
- **Historial y tendencias:** almacenamiento de series temporales de signos vitales, generación de gráficas de evolución por período (hora, día, semana).

### Distribución del procesamiento

| Función                                                  | Ubicación |
|----------------------------------------------------------|-----------|
| Visualización local en pantalla AMOLED                   | Nodo      |
| Detección preliminar de anomalías                        | Edge API  |
| Almacenamiento de datos temporal antes de enviar a cloud | Edge API  |
| Generación de alertas y notificaciones push              | Cloud     |
| Almacenamiento persistente del historial clínico         | Cloud     |

### Tiempos de procesamiento estimados

| Etapa                                               | Tiempo estimado |
|-----------------------------------------------------|-----------------|
| Transmisión nodo → edge (BLE)                       | ~200 ms         |
| Procesamiento en edge (validación + reenvío)        | ~150 ms         |
| Transmisión edge → cloud (Wi-Fi/LTE)                | ~400 ms         |
| Procesamiento en cloud (detección + almacenamiento) | ~550 ms         |

---

## Paso 6 — Definición de Requisitos de la Capa de Servicios de Aplicación

### Interfaz por tipo de usuario

| Interfaz | Usuario                           |
|----------|-----------------------------------|
| Web      | Doctor · Administrador            |
| Móvil    | Personal asistencial · Familiares |
| AMOLED   | Personal asistencial              |

### Peso computacional

| Interfaz | Peso computacional |
|---|---|
| Web | Bajo–medio · Muestra datos paginados desde API REST |
| Móvil | Bajo · Consume endpoints REST ya procesados por cloud |
| AMOLED | Muy bajo · Solo renderiza texto e íconos simples en el microcontrolador |

### Plataformas de implementación

| Plataforma | Implementación |
|---|---|
| Web | Navegadores modernos · TypeScript + Angular · Backend Java + Spring Boot |
| Móvil | Flutter · Base de datos local · Backend Java + Spring Boot |
| AMOLED | Renderizado directo sobre driver de pantalla AMOLED desde el microcontrolador |

---

## Paso 7 — Selección de las Arquitecturas de las Capas de Intercambio de Datos e Integración de la Información

### Comparativa de tecnologías inalámbricas

| Criterio | BLE 5.0 | Wi-Fi |
|---|---|---|
| Consumo en TX | ~7 mA | ~80–150 mA |
| Alcance indoor | ~40 m | ~50 m |
| Latencia típica | 100–300 ms | 50–200 ms |
| Complejidad de implementación | Baja | Media–Alta |

### Protocolo de mensajería edge → cloud: MQTT sobre TLS

- Protocolo liviano, diseñado para IoT con ancho de banda limitado.
- Soporta QoS nivel 1 (entrega garantizada al menos una vez).
- Latencia típica: 100–400 ms sobre conexión Wi-Fi estable.
- Alternativa evaluada y descartada: **HTTP/REST** (mayor overhead, no óptimo para streams continuos).

### Enfoque híbrido de procesamiento

Para el procesamiento de la información se usará un enfoque híbrido:

- **Edge API:** servidor ligero (Raspberry Pi o gateway equivalente) que ejecuta un broker MQTT local, valida rangos de datos y almacena en buffer ante caídas de internet.
- **Cloud:** plataforma como AWS IoT Core o similar, con base de datos de series temporales (InfluxDB o TimestreamDB) y motor de reglas para generación de alertas.

> **Time-delay total verificado:** 100 + 250 + 150 + 450 + 500 ms ≈ **1.45 s**

---

## Paso 8 — Selección de Sensores y Actuadores

### Sensores seleccionados

| Sensor                       | Medición                                                                                         | Precisión                                                       | Consumo en operación | Interfaz                                                  | Voltaje de operación                                      |
|------------------------------|--------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|----------------------|-----------------------------------------------------------|-----------------------------------------------------------|
| MAX30102                     | Frecuencia cardíaca y saturación de oxígeno en un solo módulo                                    | FC: ±2 bpm · SpO₂: ±2%                                          | ~0.6 mA              | Compatible con la mayoría de microcontroladores embebidos | 1.8 V (lógica) / 3.3 V (LEDs) — compatible con LiPo 3.7 V |
| MLX90614ESF-DCI (GY-906-DCI) | Temperatura corporal sin contacto mediante radiación infrarroja · medición puntual con FOV de 5° | ±0.5 °C en rango general / ±0.2 °C en rango corporal (36–39 °C) | ~1.5 mA              | Comparte bus con MAX30102 sin conflicto de direcciones    | 3.3 V — compatible con LiPo 3.7 V mediante regulador      |

### Actuadores seleccionados

| Actuador                                  | Resolución                     | Consumo |
|-------------------------------------------|--------------------------------|---------|
| Pantalla AMOLED 1.47" — ST7789 controller | 172×320 píxeles · color 16-bit | ~0.5 mA |
| Botón táctil de membrana                  | —                              | ~0.1 mA |

---

## Paso 9 — Selección del Microcontrolador y Transceivers de Radio

### ESP32-C3 — Especificaciones

| Característica                 | Valor                                               |
|--------------------------------|-----------------------------------------------------|
| Arquitectura                   | RISC-V 32-bit · 160 MHz                             |
| RAM / Flash                    | 400 KB / 4 MB                                       |
| BLE                            | 5.0 integrado                                       |
| Wi-Fi                          | 802.11 b/g/n integrado (usado en edge, no en nodo)  |
| Interfaces                     | SPI · I²C · UART · GPIO                             |
| Consumo en operación           | ~22 mA                                              |
| Consumo en modo sleep profundo | ~5 µA                                               |
| Voltaje de operación           | 3.0–3.6 V — compatible con LiPo 3.7 V con regulador |
| Factor de forma                | Ultra compacto — apto para wearables                |

### Justificación

El ESP32-C3 integra BLE 5.0, tiene bajo consumo, periféricos I²C y SPI necesarios para conectar el MAX30102, el MLX90614 y la pantalla AMOLED, y su tamaño compacto lo hace adecuado para un dispositivo wearable. No requiere transceiver de radio externo, lo que simplifica el diseño.

### Ahorro energético

- El microcontrolador activará los sensores cada **5 segundos** (ciclo de muestreo).
- Entre ciclos entra en **Light Sleep (~0.8 mA)**, reduciendo el consumo promedio significativamente.
- El módulo BLE opera en modo **advertise/connect** solo durante la transmisión activa.

---

## Paso 10 — Definición del Procesamiento de Datos en Cada Nodo y en la Nube

### En el nodo (ESP32-C3)

1. **Lectura de sensores (cada 5 s):** solicita medición a MAX30102 vía I²C y a MLX90614 vía I²C.
2. **Promediado móvil:** promedia las últimas 4 lecturas de cada sensor para suavizar ruido (ventana deslizante simple).
3. **Validación de rango físico:** descarta lecturas fuera de rangos fisiológicos posibles (FC: 20–250 bpm · SpO₂: 50–100% · Temp: 30–45 °C).
4. **Empaquetado de datos:** estructura JSON ligera con timestamp.
5. **Transmisión BLE:** envía el paquete al edge API mediante perfil BLE GATT personalizado.
6. **Renderizado en pantalla:** actualiza la pantalla AMOLED con los valores actuales y estado del sistema.

### En el Edge API

1. **Validación de integridad:** verifica que el JSON esté completo y los campos tengan el tipo correcto.
2. **Detección de alertas preliminares:** compara valores contra umbrales predefinidos y genera flag de alerta si corresponde.
3. **Buffer de persistencia local:** almacena en SQL Server los últimos 500 registros por si hay pérdida de conectividad cloud.

### En la nube

1. **Ingesta de mensajes MQTT:** AWS IoT Core recibe y enruta los mensajes.
2. **Almacenamiento en serie temporal:** InfluxDB o AWS Timestream almacena cada punto de dato con timestamp.
3. **Motor de reglas y alertas:** evalúa condiciones configuradas por doctor o administrador (umbrales por paciente) y genera alertas.
4. **Cálculo de tendencias:** promedio móvil de largo plazo (hora, día), detección de degradación progresiva de signos.
5. **API REST:** expone endpoints seguros (JWT + HTTPS) para las aplicaciones web y móvil.

---

## Paso 11 — Análisis del Tiempo de Procesamiento

| Algoritmo                         | Complejidad | Tiempo estimado |
|-----------------------------------|-------------|-----------------|
| Lectura de sensores I²C           | O(1)        | ~50 ms          |
| Renderizado pantalla AMOLED       | O(n)        | ~40 ms          |
| Detección de alertas preliminares | O(1)        | ~5 ms           |
| Entrega notificación push         | —           | ~200–300 ms     |
| Almacenamiento cloud              | O(1)        | ~100 ms         |
| Empaquetado JSON                  | O(1)        | ~5 ms           |
| Alertas                           | O(n)        | ~200 ms         |

---

## Paso 12 — Definición de la Interfaz Gráfica de Usuario

### Pantalla AMOLED del dispositivo wearable

Diseño minimalista de alta legibilidad orientado a lectura rápida:

- Fondo negro (aprovecha AMOLED para ahorro energético).
- Tipografía grande y clara para cada signo vital.
- Íconos de color: verde = normal · amarillo = precaución · rojo = alerta.
- Indicador de batería y estado de conexión BLE en esquina superior.

### Aplicación web — Dashboard principal

_Personal asistencial · Médicos · Administrador_

- **Paleta de colores:** fondo claro/oscuro (modo adaptativo), verde para normal, amarillo para precaución, rojo para alerta crítica.
- **Gráficas:** líneas temporales interactivas (zoom, hover con valor exacto) con librería Chart.js o Recharts.
- **Navegación:** lista de residentes en sidebar izquierdo, vista detallada por residente seleccionado.
- **Responsivo:** adaptado para tablets (uso en campo por enfermería) y escritorio (médicos y administradores).

### Aplicación móvil

_Familiar · Personal asistencial · Administrador_

- Diseño de tarjeta única, información esencial visible sin scroll.
- Notificaciones push con vibración al generarse una alerta crítica.
- Colores semáforo coherentes con la web app para consistencia visual.
- Acceso con autenticación segura (JWT + biometría del dispositivo).

# Diseño de Solución IoT: Dispositivo de Localización GPS para Adultos Mayores 

## Paso 1 — Definición de los Requisitos del Sistema

### Restricción de time-delay
El time-delay máximo tolerable para el flujo completo desde la adquisición del dato hasta su visualización en la pantalla es de **30 segundos**. Este margen es suficiente para el rastreo de personas, permitiendo una respuesta oportuna sin saturar  la red.

### Suministro de energía
El dispositivo opera exclusivamente con una batería LiPo 603450 (3.7 V, 1100 mAh). La autonomía mínima aceptable es de **3 a 5 días**. Con esta capacidad, el consumo promedio máximo permitido es de **15.3 mA**, considerando un uso continuo y sin recargas frecuentes, lo que es adecuado para un dispositivo de localización que debe ser confiable durante varios días sin intervención.

---

## Paso 2 — Selección de la Tipología del Sistema IoT
Se ha seleccionado una **tipología de conexión directa a la nube**. Esto significa que el dispositivo funciona de forma independiente, como si fuera un teléfono móvil:

* **Nodo (tracker):** Es el rastreador que obtiene su ubicación por satélite (GPS) y la envía por sí mismo usando la red de datos celular.
* **Plataforma en la nube:** Actúa como el cerebro central que recibe los datos y los organiza para que puedan ser consultados desde cualquier parte.

Esta elección es clave porque permite que el rastreo sea total: el dispositivo no necesita estar cerca de una base o router Wi-Fi para funcionar; solo necesita cobertura celular.

Esta tipología elimina la necesidad de gateways locales, permitiendo que el seguimiento funcione en cualquier lugar con cobertura celular.

---

## Paso 3 — Definición de los Requisitos de la Capa Física

### Sensores
1.  **Módulo GNSS:** Obtiene las coordenadas geográficas (latitud y longitud).
2.  **Acelerómetro MEMS:** Detecta movimiento para reducir el envío de datos cuando la persona está en reposo, optimizando la batería.

### Actuadores
**Ninguno.** El hardware no tiene componentes de salida (luces o sonidos) para mantener la discreción absoluta.

Consumo y precisión: El sistema debe consumir menos de 15.3 mA promedio. La precisión de la ubicación debe estar en un rango de 2 a 5 metros en exteriores.

Interfaces y procesamiento: Se utilizarán interfaces UART para el GPS y el módem, e I2C para el acelerómetro. El microcontrolador tiene permitido un tiempo de procesamiento local máximo de 500 ms para no comprometer el delay global.

---

## Paso 4 — Definición de los Requisitos de la Capa de Intercambio

**Comunicación:** Inalámbrica mediante la red celular LTE-M (Cat-M1). Se elige esta tecnología por su bajo consumo y su capacidad de mantener la conexión mientras el usuario se desplaza.

**Topología y distancia:** Topología directa al servidor. La distancia de comunicación está limitada únicamente por la cobertura de las antenas celulares 

**Consumo y encriptación:** Las transmisiones serán ráfagas cortas de energía. Los datos se protegerán mediante TLS 1.3, asegurando que la ubicación del adulto mayor viaje de forma privada y encriptada.

---

## Paso 5 — Definición de los Requisitos de la Capa de Integración de Información

Usuarios: Familiar, Personal Asistencial y Administrador.

Servicios: Mapa de ubicación en tiempo real.

* **Información procesada:** Coordenadas filtradas y traducción de coordenadas a direcciones físicas (geocodificación).

* **Distribución del procesamiento:** Filtrar coordenadas inválidas para asegurar la calidad del dato.

    * **Cloud:** Recibe los datos crudos, traduce las coordenadas a direcciones para poder almacenar.

* **Tiempo de procesamiento:** El procesamiento en la nube debe resolverse en menos de **300 ms**.
---

## Paso 6 — Definición de los Requisitos de la Capa de Servicio de Aplicación


App Móvil (Familiar/Personal/Admin): Mapa con la posición del residente actualizada automáticamente e indicador de batería.

Plataforma Web (Administrador): Visualización simultánea de múltiples residentes.

Peso computacional: Bajo en todos los niveles; la complejidad de los mapas es gestionada por servicios externos (Google Maps).

---

## Paso 7 — Selección de las Arquitecturas de las Capas de Intercambio e Integración


Arquitectura de Intercambio: Se selecciona MQTT sobre TLS 1.3. Este protocolo es óptimo para el backend monolítico, permitiendo gestionar conexiones persistentes con un retardo de comunicación de apenas 2-4 segundos.

Arquitectura de Integración: Se selecciona una Arquitectura Monolítica para el backend .

Análisis de Time-delay: Al ser un monolito, se eliminan las latencias de red entre servicios (inter-service communication), permitiendo que la recepción del dato, la lógica de geocodificación y el guardado en la base de datos ocurran en un mismo proceso. Esto garantiza un tiempo de integración de ~150-200 ms, cumpliendo con los requisitos del paso 5.

---

## Paso 8 — Selección de Sensores y Actuadores

Sensor GNSS: u-blox ZOE-M8B, seleccionado por su precisión de < 2.5m y su tamaño minúsculo.

Sensor de Movimiento: LIS2DW12, elegido por su consumo de 0.38 µA en modo de espera.

Actuadores: No se seleccionan para cumplir el requisito de dispositivo pasivo.

---

## Paso 9 — Selección del Microcontrolador y Transceptores de Radio

Hemos elegido el microcontrolador y los módulos de comunicación inalámbrica concretos para cada nodo, considerando su consumo de energía, capacidad de procesamiento y periféricos disponibles.

Selección: Nordic Semiconductor nRF9160 (SiP).

Justificación: Integra procesador ARM Cortex-M33 y módem LTE-M en un único encapsulado. Posee la capacidad de procesamiento para gestionar el cifrado TLS 1.3 y los periféricos UART/I2C definidos en el paso 3.

---

## Paso 10 — Definición del Procesamiento de Datos en el Nodo y en la Nube

Aquí se define qué procesamiento se hará directamente en el dispositivo IoT y qué procesamiento se realizará en el cloud/backend.

En el Nodo:
Se realizará el filtrado de tramas NMEA para descartar coordenadas con baja precisión (por ejemplo, cuando el HDOP sea alto). Además, el dispositivo manejará procesos básicos de optimización de energía para reducir el consumo durante su funcionamiento.

En Cloud (Backend Monolítico):
Se realizará la geocodificación inversa para convertir coordenadas en direcciones entendibles, el almacenamiento de la información en una base de datos MongoDB y el procesamiento de datos enviados por los dispositivos para su visualización y monitoreo dentro de la plataforma

---

## Paso 11 — Análisis del Tiempo de Procesamiento

En este paso se analiza qué tan pesado es el procesamiento de cada algoritmo definido anteriormente y cuánto tiempo tarda cada parte del sistema en ejecutarse, para verificar que el tiempo total de respuesta cumple con el requisito definido en el Paso 1.

Desglose estimado del tiempo:

Procesamiento en el nodo IoT (filtrado y validación de datos): ~15 ms.
Captura y obtención de señal GPS: ~15 s.
Latencia de red LTE-M para el envío de datos: ~4 s.
Procesamiento en el Backend Monolítico: ~200 ms.

Tiempo total estimado:
El sistema tendría un tiempo aproximado de respuesta de ~20 segundos desde la captura hasta el almacenamiento y visualización de la información.

Verificación:
El tiempo total cumple con el requisito máximo de 30 segundos establecido anteriormente, por lo que el sistema puede operar dentro del límite esperado.

---

## Paso 12 — Definición de la Interfaz Gráfica de Usuario

#### A. Interfaz de Software (App y Web)
* **App Móvil (Familiar/Asistencial):** Centrada en un mapa limpio de Google Maps. Un marcador con la foto del residente indica su posición. En la parte inferior, una tarjeta muestra la dirección exacta, la hora de la última sincronización y un indicador de batería dinámico.
* **Plataforma Web (Administrador):**  Dentro de la lista de residentes hay una opción para ver el mapa de cada residente.

#### B. Diseño Físico del Dispositivo 
* **Aspecto:** Disco circular de 35mm en policarbonato mate, sin botones ni luces para garantizar la pasividad del sistema.
* **Ergonomía:** Bordes redondeados y grosor mínimo (10mm) para ocultarse fácilmente en costuras o bolsillos internos.
* **Carga:** Interfaz de carga magnética en la base para asegurar protección IP67 (resistente a salpicaduras y polvo).
* **Uso:** Se integra mediante clips de silicona o bolsillos ocultos en la vestimenta, cumpliendo con el requisito de ser un dispositivo "invisible" para el residente pero rastreable para el administrador.