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
| Sprint 1 Goal                   | Our focus is on delivering the first version of Veyra's landing page to the visitors, that clearly communicates the business value and clearly communicates the value proposition and service offerings to first-time visitors to the site. Also the first version of Veyra's web application with core features and views such as nursing, activities and communications and <br> We believe it delivers a clear definition of Veyra and our goal and commitment with our customers, giving them the core features of Veyra's web application <br> This will be confirmed when visitors access to the landing page and web application to try the features added and implemented by the Veyra development team |
| Sprint 1 Velocity               | Velocity                                                                                                                                                                                                                                                                                                  |
| Sum of Story Points             |  Story Points.                                                                                                                                                                                                                                                                                             |

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


Backend:



#### 6.2.1.5. Testing Suite Evidence for Sprint Review

#### 6.2.1.6. Execution Evidence for Sprint Review

Landing page:

Se desarrolló la landing page de VEYRA, la cual se publicó utilizando GitHub Pages para garantizar su accesibilidad inmediata. Además, se avanzó en el desarrollo del backend y la interfaz web de la aplicación, sentando las bases tecnológicas para futuras iteraciones. Durante este sprint, se implementaron las funcionalidades básicas y se realizaron pruebas iniciales para asegurar la calidad del producto.


![Landing Page](/assets/img/chapter-VI/execution-evidence-landing.png)

<br>

![Landing Page](/assets/img/chapter-VI/execution-evidence-landing-2.png)

Aplicación web:


Backend:



#### 6.2.1.7. Services Documentation Evidence for Sprint Review

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

#### 6.2.1.9. Team Collaboration Insights during Sprint

## 6.3. Validation Interviews

### 6.3.1. Diseño de Entrevistas

### 6.3.2. Registro de Entrevistas

### 6.3.3. Evaluaciones según heurísticas

## 6.4. Video About-the-Product