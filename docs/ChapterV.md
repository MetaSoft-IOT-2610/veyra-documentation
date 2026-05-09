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

Jerarquía de Contenidos: La información se estructura de lo general a lo específico. En la Landing Page partimos de un mensaje de impacto en la sección Hero, seguido de un resumen de los servicios y luego del detalle de funcionalidades, beneficios y planes de suscripción. En las aplicaciones web y móvil, el usuario parte de un Dashboard general adaptado a su rol y desciende progresivamente hacia el detalle de cada residente, signo vital, alerta o evento clínico.
Secciones Principales de la Landing Page:

Hero: La promesa de Veyra como puente digital entre casas de reposo y familias.
What We Offer: Visión general del monitoreo IoT y la gestión clínica integral.
Features: Funcionalidades clave (monitoreo de signos vitales en tiempo real, alertas críticas, portal familiar e historial clínico).
Benefits: Beneficios diferenciados para instituciones geriátricas y familias.
About Us: Sobre Metasoft y la misión de Veyra.
Our Team: Las personas detrás del proyecto.
Plans: Planes de suscripción Familiar y Casa de Reposo en modalidad mensual y anual.
Testimonials & CTA: Reseñas de usuarios y llamado a la acción para iniciar el registro.


Secciones Principales de la Aplicación Web (Admin / Doctor / Healthcare Staff):

Dashboard: Vista global de residentes, alertas activas y métricas operativas del día.
Residentes: Listado y perfil detallado (datos personales, dispositivo IoT asignado, familiar vinculado, personal responsable).
Monitoreo: Panel de signos vitales en tiempo real con los datos transmitidos por el dispositivo IoT.
Historial Clínico: Eventos clínicos cronológicos registrados por turno.
Parámetros Clínicos: Rangos de signos vitales definidos por el médico para cada residente, base para la generación de alertas personalizadas.
Personal y Familiares: Gestión del personal asistencial, médicos, familiares y vinculaciones con residentes.
Alertas: Bandeja de alertas críticas, advertencias e informativas, con su estado de atención.
Suscripción y Pagos: Gestión del plan contratado y método de pago.


Secciones Principales de la Aplicación Móvil (Familiar / Healthcare Staff):

Home/Dashboard: Estado actual del residente con un mensaje claro y reconfortante para el familiar, o lista de residentes asignados al turno para el personal asistencial.
Signos Vitales: Visualización rápida de los últimos valores y su tendencia reciente.
Historial: Consulta del historial de signos vitales y eventos clínicos con filtro por período.
Notificaciones: Centro unificado de alertas críticas y avisos.
Perfil: Configuración de la cuenta y preferencias de notificación.


Agrupación de Contenidos: Los contenidos se agrupan según los Bounded Contexts del sistema, lo que permite que cada módulo conserve la cohesión funcional de su dominio. Los signos vitales y alertas se presentan en tarjetas con codificación visual de severidad; los residentes aparecen en un listado con vista detallada en su perfil; y los eventos clínicos se organizan en un timeline cronológico ordenado de más reciente a más antiguo.

### 5.2.2. Labeling Systems

Nomenclatura: Se utiliza un lenguaje claro y directo basado en el Ubiquitous Language definido en el Capítulo II. Términos como Residente, Signos Vitales, Alerta Crítica, Historial Clínico, Familiar y Casa de Reposo son consistentes en toda la plataforma. Los botones tienen etiquetas accionables como "Registrar Residente", "Vincular Familiar", "Ver Detalle", "Registrar Evento Clínico" y "Definir Parámetros Clínicos", para que el usuario sepa exactamente qué esperar.
Consistencia entre Plataformas: Las etiquetas se mantienen idénticas entre Landing Page, aplicación web, aplicación móvil y la pantalla del dispositivo IoT. Por ejemplo, la sección "Planes" en la Landing se refiere claramente al plan de suscripción contratable por el cliente, mientras que dentro de la aplicación las secciones internas (Residentes, Monitoreo, Historial Clínico) mantienen el mismo nombre en el menú lateral, en los breadcrumbs y en los títulos de cada pantalla, evitando ambigüedades.
Lenguaje Adaptativo por Rol: El tono y la complejidad del lenguaje se ajustan al perfil del usuario. Para el médico y el personal asistencial se utiliza terminología clínica precisa (frecuencia cardíaca, saturación de oxígeno, presión arterial, parámetros clínicos). Para el familiar se prioriza un lenguaje cercano y reconfortante (estado del residente, cómo se encuentra hoy, última actualización), evitando la jerga técnica que pueda generar confusión o ansiedad.
Iconografía Consistente: Se emplea un set único de iconos para representar conceptos clave en toda la plataforma: corazón para frecuencia cardíaca, gota para saturación de oxígeno, termómetro para temperatura corporal, manómetro para presión arterial, campana para notificaciones y escudo para datos clínicos protegidos. La iconografía se mantiene idéntica en web, móvil y en la pantalla del dispositivo IoT.
Codificación de Estados por Color: Siguiendo la paleta funcional definida en la sección 5.1.1, el verde (#4CAF50) indica estado normal y confirmaciones, el amarillo (#FFC107) advertencias y avisos importantes, el rojo (#F44336) alertas críticas y errores, y el gris elementos inactivos o sin datos disponibles. Esta codificación es uniforme en toda la plataforma.

### 5.2.3. SEO Tags and Meta Tags

En esta sección se documentan las meta tags y elementos del <head> configurados tanto en la Landing Page como en la aplicación web de Veyra, los cuales son fundamentales para el correcto posicionamiento en buscadores, la compatibilidad con dispositivos y la experiencia visual consistente.

Meta Tags de la Landing Page:

Charset: Se utiliza <meta charset="UTF-8" /> para garantizar la correcta codificación de caracteres especiales en español (tildes, ñ) y símbolos.
Compatibilidad con Internet Explorer: Se incluye <meta http-equiv="X-UA-Compatible" content="IE=edge" /> para que el navegador utilice la última versión de renderizado disponible.
Viewport Responsivo: Se configura <meta name="viewport" content="width=device-width, initial-scale=1.0" /> para asegurar que la Landing Page se adapte correctamente a dispositivos móviles, tablets y escritorio.
Título de la Página: Se define <title>Veyra</title> como el nombre identificador de la marca en la pestaña del navegador y en los resultados de búsqueda.
Iconografía Externa: Se importa Font Awesome 5.15.3 desde el CDN de Cloudflare para acceder a la librería de iconos utilizada en toda la Landing Page.
Tipografías de Google Fonts: Se preconectan los dominios de Google Fonts (fonts.googleapis.com y fonts.gstatic.com) para optimizar la carga, y se importan las familias tipográficas Instrument Serif, Jost, Konkhmer Sleokchher, Lexend, Manrope y Rubik, siendo esta última la tipografía principal definida en la sección 5.1.1.
Estilos Locales: Se enlaza la hoja de estilos public/assets/styles/style.css que contiene las reglas CSS específicas de la Landing Page.


Meta Tags de la Aplicación Web:

Charset: Se define <meta charset="utf-8"> para la correcta interpretación de caracteres especiales en la interfaz administrativa y clínica.
Título de la Aplicación: Se establece <title>FrontendNovaPeruTech</title> como identificador de la aplicación web durante el desarrollo, el cual será reemplazado por "Veyra" en producción.
Base URL: Se incluye <base href="/"> para definir la ruta raíz desde la cual se resuelven todas las rutas relativas de la aplicación.
Viewport Responsivo: Se utiliza <meta name="viewport" content="width=device-width, initial-scale=1"> para garantizar la correcta visualización en distintos dispositivos.
Favicon: Se enlaza <link rel="icon" type="image/x-icon" href="favicon.ico"> para representar la marca Veyra en la pestaña del navegador.
Tipografía Roboto: Se importa la familia Roboto desde Google Fonts en sus pesos 300, 400 y 500, utilizada como tipografía complementaria en componentes específicos de la aplicación.
Iconografía Material: Se importa la librería Material Icons desde Google Fonts para mantener consistencia con los componentes UI estándar de la aplicación.


Optimizaciones SEO Recomendadas: Para mejorar el posicionamiento orgánico de la Landing Page, se considera la incorporación progresiva de los siguientes meta tags: <meta name="description"> con una descripción atractiva de la propuesta de valor de Veyra, <meta name="keywords"> con términos como "casa de reposo", "monitoreo IoT", "adultos mayores" y "salud geriátrica", etiquetas Open Graph (og:title, og:description, og:image) para una correcta previsualización al compartir en redes sociales, etiquetas Twitter Cards para compartir en X (anteriormente Twitter), <link rel="canonical"> para evitar contenido duplicado, y <meta name="robots" content="index, follow"> para autorizar la indexación por motores de búsqueda.

### 5.2.4. Searching Systems

Barra de Búsqueda Global: En la aplicación web, el administrador, el médico y el personal asistencial cuentan con una barra de búsqueda persistente y prominente en el header, que permite localizar rápidamente residentes, miembros del personal o alertas. La búsqueda es predictiva y muestra sugerencias mientras el usuario escribe. La Landing Page no incluye barra de búsqueda al estar orientada a un recorrido lineal de descubrimiento.
Búsqueda Contextual en Móvil: En la aplicación móvil, la búsqueda aparece dentro de cada módulo cuando es relevante. El familiar puede buscar dentro de su historial de signos vitales y notificaciones, mientras que el personal asistencial puede buscar entre los residentes que tiene asignados a su turno actual.
Filtros y Facetas Específicos por Módulo:

Residentes: filtro por estado (activo/inactivo), por habitación, por familiar vinculado, por personal asistencial asignado y por estado del dispositivo IoT (activo/sin datos).
Signos Vitales: filtro por tipo (frecuencia cardíaca, temperatura, saturación, presión), por rango de fechas y por estado (normal/anómalo/crítico).
Alertas: filtro por severidad (crítica/advertencia/informativa), por residente, por estado (activa/atendida/resuelta) y por rango de fechas.
Historial Clínico: filtro por residente, por tipo de evento clínico, por personal que registró el evento y por rango de fechas.
Personal y Familiares: filtro por rol (médico, asistencial, familiar), por turno y por estado (activo/inactivo).


Búsqueda por Período Personalizado: En el historial de signos vitales y de eventos clínicos, el usuario puede definir un rango de fechas con un selector de calendario. Si el rango es inválido (fecha de inicio posterior a la fecha de fin), el sistema rechaza la consulta y muestra un mensaje explicativo.
Resultados Relevantes según Rol: Los resultados se priorizan según el rol del usuario autenticado. Un médico ve primero a los residentes con alertas activas; un familiar ve primero al residente que tiene vinculado; el administrador ve primero los residentes activos de su institución; el personal asistencial ve primero los residentes asignados a su turno.
Estados Vacíos Informativos: Cuando una búsqueda no produce resultados, el sistema muestra un mensaje claro acompañado de una sugerencia de acción (por ejemplo: "No se encontraron residentes con ese filtro. Restablecer filtros") para evitar que el usuario quede sin guía.
Historial de Búsqueda: En la aplicación web del personal asistencial y del administrador, se conserva un historial de búsquedas frecuentes (últimos residentes consultados, últimas alertas revisadas) que acelera el acceso recurrente a la misma información durante el turno.

### 5.2.5. Navigation Systems

Navegación Global: En la Landing Page, una barra superior fija ofrece acceso a las secciones Hero, What We Offer, Features, Benefits, About Us, Plans y al CTA de registro, con menú hamburguesa en dispositivos móviles. En la aplicación web, una barra lateral (sidebar) persistente muestra los módulos principales según el rol del usuario. En la aplicación móvil, una bottom navigation bar de hasta cinco ítems da acceso a las secciones más usadas.
Navegación Basada en Roles: El sistema de navegación se adapta dinámicamente al rol autenticado por el contexto IAM. El administrador ve módulos de gestión de residentes, personal, familiares y suscripción; el médico accede al dashboard clínico, los parámetros clínicos por residente, el historial y el monitoreo; el personal asistencial ve sus residentes asignados, los signos vitales y el registro de eventos clínicos; y el familiar accede únicamente al estado del residente vinculado, su historial y sus notificaciones. De esta forma, cada usuario solo visualiza las secciones para las que tiene permisos.
Navegación Contextual: Dentro del perfil de un residente, los enlaces internos llevan al usuario hacia el panel de monitoreo, el historial clínico, los parámetros clínicos y los datos del familiar vinculado, sin necesidad de volver al menú principal. Las alertas críticas incluyen un enlace directo al perfil del residente afectado y a la pantalla de detalle de la alerta.
Navegación Secundaria por Pestañas: El perfil del residente se organiza en pestañas (Datos Personales, Signos Vitales, Historial Clínico, Parámetros Clínicos, Familiares) que mantienen al usuario en la misma pantalla principal y le permiten cambiar de subsección sin perder el contexto.
Breadcrumbs: En la aplicación web se muestran breadcrumbs en la parte superior del contenido (por ejemplo: Residentes > Juan Pérez > Historial Clínico) para que el usuario conozca su ubicación en la jerarquía y pueda regresar a niveles superiores con un solo clic.
Navegación desde Notificaciones Push: Las notificaciones push de alertas críticas y otros avisos relevantes incluyen un deep link que abre la aplicación móvil directamente en la pantalla relevante (detalle de la alerta, perfil del residente), reduciendo el número de pasos necesarios para reaccionar ante un evento crítico.
Navegación en el Dispositivo IoT: El dispositivo cuenta con una navegación física limitada mediante botones que permiten acceder al modo de configuración, mostrar el identificador del residente asignado, verificar el estado de conectividad y consultar el nivel de batería. Su pantalla está pensada para verificación rápida en campo y no para uso prolongado.
Acceso Persistente a Notificaciones y Cuenta: En todas las aplicaciones, el ícono de notificaciones y el menú de cuenta del usuario están siempre visibles en el header (web) o en la bottom bar (móvil), de manera que el usuario pueda revisar avisos o cerrar sesión desde cualquier pantalla sin perder el contexto en que se encuentra.

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

El mock-up del landing page de Veyra representa el diseño visual final con la paleta de colores, tipografía, imágenes e iconografía definitivos. Refleja la identidad de marca de NovaPeru Tech aplicada a cada sección de la página.

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

La sección About Us presenta el título "NovaPeru Tech: Transforming Elder Care with Trust and Innovation" seguido de dos párrafos descriptivos y tres puntos destacados con íconos de check: Seamless Communication, Real-Time Insights y Enhanced Security. A la derecha se muestra un video embebido complementario.

![Mock-up - About Us](../assets/img/chapter-V/mockup-about-us.png)

**Plans — Veyra**

Encabezada por la etiqueta "Plans" y el título "Choose the Plan that Fits Your Needs", muestra un toggle Monthly/Annually y dos tarjetas: **Family Plan ($30/mes)** para familias que desean supervisar el cuidado en casa, y **Nursing Home Plan ($300/mes)** como solución completa para instituciones de cuidado.

![Mock-up - Plans](../assets/img/chapter-V/mockup-plans.png)

**Testimonials y Footer — Veyra**

La sección "What our users are saying" muestra tres tarjetas de testimonios con calificación de 5 estrellas en dorado, texto de reseña en cursiva y nombre del usuario. Debajo se presenta el banner "It's time to connect and care for your loved ones." con botón "Subscribe". El footer presenta sobre fondo azul marino oscuro el logotipo de Veyra, columnas de enlaces (About y Contact) y el copyright de NovaPerú Tech 2025.

![Mock-up - Testimonials y Footer](../assets/img/chapter-V/mockup-testimonials-footer.png)


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
Nuestros flujos de tareas (TaskFlows) se dividen según el rol del usuario para garantizar que la información llegue a la persona correcta en el momento preciso:

**Flujo Administrativo**: Registro de un nuevo dispositivo IoT y asignación a la cama de un residente.

**Flujo Médico**: Consulta del historial de eventos de las últimas 24 horas para ajustar tratamientos.

**Flujo de Asistencia**: Notificación de alerta enviada al personal de cuidado cuando un sensor detecta una anomalía.

**Flujo Informativo**: Consulta del estado diario del residente por parte del familiar.
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

## 5.5. Applications Prototyping

## 5.6. IoT Device Design
