# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

En esta sección se describen las decisiones, convenciones y principios adoptados por el equipo para garantizar la coherencia, trazabilidad y control de versiones durante el ciclo de vida del desarrollo de la solución Veyra. Se establecen los lineamientos para la configuración del entorno de desarrollo, gestión del código fuente, convenciones de estilo y configuración de despliegue.

### 5.1.1. Software Development Environment Configuration

En esta sección se especifican los productos de software utilizados durante el ciclo de vida del proyecto, incluyendo el nombre de cada herramienta, su propósito técnico específico dentro del proyecto Veyra, y la ruta de referencia (para software SaaS) o ruta de descarga (para productos de instalación local). Las herramientas se organizan según las siguientes disciplinas:

1. Project Management
2. Requirements Management
3. Product UX/UI Design
4. Software Development
5. Software Testing
6. Software Documentation

#### Project Management

Esta disciplina se centra en la planificación, seguimiento y control de las actividades del proyecto, asegurando el cumplimiento de los objetivos dentro del tiempo y recurso establecidos

- **Jira:** Plataforma de gestión de proyectos ágiles utilizada para la administración del Product Backlog, planificación de Sprints, asignación de User Stories y Tasks a los miembros del equipo, y seguimiento del progreso mediante tableros Scrum con estados To-Do, In-Process, To-Review y Done.  
  **Ruta de referencia:** https://www.atlassian.com/software/jira

#### Requirements Management:

Este proceso se enfoca en la documentación, verificación y seguimiento de los requisitos del proyecto, asegurando que las necesidades de los stakeholders sean satisfechas.

- **Trello:** Plataforma de gestión visual basada en tableros, listas y tarjetas, utilizada para la organización del Sprint Backlog, gestión de User Stories por estado (To-Do, In-Progress, Done) y colaboración del equipo en la priorización de requisitos del proyecto Veyra.  
  **Ruta de referencia:** https://trello.com

#### Product UX/UI Design

El diseño de la experiencia de usuario y la interfaz de usuario para Veyra contempla un modelo de sitio web responsivo, compatible con navegadores de escritorio y dispositivos móviles. Se utilizan las siguientes herramientas.

1. **UXPressia:** Plataforma para la elaboración de User Personas, Empathy Maps, Customer Journey Maps e Impact Maps de los segmentos objetivos del proyecto Veyra (Administradores de casas de reposo y Familiares de adultos mayores).  
   **Ruta de referencia:** https://uxpressia.com/

2. **Miro:** Pizarra digital colaborativa utilizada para sesiones de Big Picture EventStorming y Design-Level EventStorming, facilitando la identificación de Bounded Contexts, Events, Commands y Aggregates del dominio Veyra.  
   **Ruta de referencia:** https://miro.com/es/

3. **Figma:** Herramienta de diseño colaborativo para la creación de Wireframes, Mock-ups y Prototipos interactivos de la Landing Page y Web Applications de Veyra, aplicando el Design System basado en Material Design.  
   **Ruta de referencia:** https://www.figma.com/es-es/

4. **LucidChart:** Aplicación de diagramación colaborativa para la creación de Wireflows, User Flows, diagramas UML (Class Diagrams) y Database Diagrams de la arquitectura de Veyra.  
   **Ruta de referencia:** https://www.lucidchart.com/pages/es

5. **Overflow:** Herramienta para la elaboración de User Flow Diagrams detallados, ilustrando las rutas de navegación (happy paths y unhappy paths) de los usuarios en las aplicaciones web de Veyra.  
   **Ruta de referencia:** https://overflow.io/

#### Software Development:

El desarrollo de software del proyecto Veyra abarca la implementación del Langin Page, Frontend Web Application y Backend Web Services. Se utilizan las siguientes herramientas y tecnologías.

1. **GitHub:** Sistema de control de versiones distribuido y plataforma de hosting para repositorios de código fuente. Gestión de la organización NovaPeru-Tech, implementación de GitFlow Workflow, Conventional Commits y Semantic Versioning.  
   **Ruta de referencia:** https://github.com  
   **Organización del proyecto:** https://github.com/NovaPeru-Tech

2. **WebStorm:** Entorno de desarrollo integrado (IDE) de JetBrains para la implementación del Frontend utilizando Angular Framework, HTML5, CSS3, JavaScript y TypeScript. Incluye integración con GitHub para control de versiones.  
   **Ruta de descarga:** https://www.jetbrains.com/webstorm/  
   **Licencia de estudiante:** https://www.jetbrains.com/community/education/

3. **IntelliJ IDEA:** Entorno de desarrollo integrado (IDE) de JetBrains para la implementación del Backend con Spring Boot Framework y Java. Incluye integración con Azure para despliegue de Web Services.  
   **Ruta de descarga:** https://www.jetbrains.com/idea/  
   **Licencia de estudiante:** https://www.jetbrains.com/community/education/

4. **Angular Framework:** Framework de desarrollo para Frontend Web Applications. Construcción de componentes reutilizables, gestión de estado mediante Services y RxJS, enrutamiento entre vistas y consumo de API REST.  
   **Ruta de referencia:** https://angular.io/

5. **Angular Material:** Biblioteca de componentes UI basada en Material Design para Angular. Proporciona componentes pre-construidos (buttons, forms, tables, dialogs) que garantizan consistencia visual en la interfaz de VEYRA.  
   **Ruta de referencia:** https://material.angular.io/

6. **Spring Boot Framework:** Framework para desarrollo de Web Services RESTful del Backend de VEYRA. Implementación de lógica de negocio, persistencia de datos con JPA/Hibernate, y documentación de API con OpenAPI/Swagger.  
   **Ruta de referencia:** https://spring.io/projects/spring-boot

7. **HTML5, CSS3, JavaScript:** Tecnologías fundamentales para la implementación de la Landing Page y estructura base de las Web Applications.  
   **Referencias:**
    - HTML5: https://html.spec.whatwg.org/
    - CSS3: https://www.w3.org/Style/CSS/
    - JavaScript: https://developer.mozilla.org/es/docs/Web/JavaScript

8. **TypeScript:** Lenguaje de programación tipado para desarrollo de Frontend Web Applications con Angular. Proporciona tipado estático, detección temprana de errores y mejor soporte de IDE.  
   **Ruta de referencia:** https://www.typescriptlang.org/

9. **Java:** Lenguaje de programación para el desarrollo del Backend con Spring Boot. Se utiliza Java 17 para compatibilidad con Azure App Service.  
   **Ruta de referencia:** https://openjdk.org/

#### Software Testing:

Las pruebas de software permiten evaluar y verificar que los productos desarrollados cumplen con los requisitos especificados y funcionan correctamente.

- **Lenguaje Gherkin:** Lenguaje de dominio específico (DSL) para la redacción de Acceptance Criteria de User Stories en formato estructurado Given-When-Then. Permite definir escenarios de prueba legibles por stakeholders y ejecutables por herramientas de automatización. Los keywords principales son: Feature, Scenario, Given, When, Then, And, But.  
  **Ruta de referencia:** https://cucumber.io/docs/gherkin/

#### Software Documentation

La documentación de software permite explicar el funcionamiento, uso y arquitectura de los productos desarrollados, facilitando su mantenimiento y evolución.

- **OpenAPI Specification / Swagger:** Estándar para la documentación interactiva y machine-readable de los Web Services RESTful del Backend de Veyra. Especificación de endpoints, parámetros, request/response bodies, códigos de estado HTTP y ejemplos de uso.  
  **Ruta de referencia:** https://swagger.io/  
  **URL de documentación desplegada:** https://veyrav01.azurewebsites.net/swagger-ui/index.html

- **Markdown:** Lenguaje de marcado ligero para la elaboración del Project Report en el repositorio GitHub. Permite estructurar documentación con formato consistente y compatible con control de versiones.  
  **Ruta de referencia:** https://www.markdownguide.org/

---

### 5.1.2. Source Code Management

En esta sección se establecen los medios y esquemas de organización aplicados para el seguimiento de modificaciones del código fuente. Se utiliza GitHub como plataforma y sistema de control de versiones distribuido.

#### Repositorios del Proyecto

| Producto                   | URL del Repositorio                                            |
|----------------------------|----------------------------------------------------------------|
| Organización NovaPeru-Tech | https://github.com/NovaPeru-Tech                               |
| Landing Page               | https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage     |
| Frontend Web Application   | https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend         |
| Backend Web Services       | https://github.com/NovaPeru-Tech/NovaPeruTech-Backend          |
| Project Report             | https://github.com/NovaPe ru-Tech/NovaPeru-Tech-Project-Report |

#### GitFlow Workflow

Se implementa GitFlow como modelo de flujo de trabajo para el control de versiones, estableciendo una estructura de ramas que facilita el desarrollo paralelo y la gestión de releases.

**Ramas Principales:**

- **main:** Rama principal que contiene el historial oficial de versiones estables listas para producción. Solo recibe merges de release branches y hotfix branches.
- **develop:** Rama de integración donde se consolidan los features completados y probados. Sirve como base para la creación de release branches.

**Ramas de Soporte:**

- **feature/\<feature-name\>:** Ramas creadas a partir de develop para implementar nuevas funcionalidades. Se fusionan de vuelta a develop una vez completadas y revisadas.
- **release/\<version\>:** Ramas creadas a partir de develop para preparar una nueva versión de producción. Permiten correcciones menores y ajustes antes del merge a main.
- **hotfix/\<issue\>:** Ramas creadas a partir de main para correcciones urgentes en producción. Se fusionan tanto a main como a develop.

#### Convenciones de Nomenclatura para Ramas

| Tipo de Rama | Formato                                           | Ejemplo                                 |
|--------------|---------------------------------------------------|-----------------------------------------|
| Feature      | `feature/<bounded-context>-<feature-description>` | `feature/residents-add-medical-history` |
| Release      | `release/<major.minor.patch>`                     | `release/1.0.0`                         |
| Hotfix       | `hotfix/<issue-description>`                      | `hotfix/fix-login-validation`           |

#### Conventional Commits

Se aplica la especificación Conventional Commits para los mensajes de commit, siguiendo la estructura:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

**Tipos de Commit:**

| Tipo       | Descripción                                                   |
|------------|---------------------------------------------------------------|
| `feat`     | Nueva funcionalidad para el usuario                           |
| `fix`      | Corrección de un bug                                          |
| `docs`     | Cambios en documentación                                      |
| `style`    | Cambios de formato (espacios, comas, etc.) sin afectar lógica |
| `refactor` | Refactorización de código sin cambiar funcionalidad           |
| `perf`     | Mejoras de rendimiento                                        |
| `test`     | Adición o corrección de pruebas                               |
| `build`    | Cambios en sistema de build o dependencias externas           |
| `chore`    | Tareas de mantenimiento sin afectar código de producción      |

**Ejemplos de Commits:**

```
feat(residents): add medical history registration form
fix(auth): resolve token expiration validation issue
docs(readme): update deployment instructions
build(deps): upgrade Angular to version 17
chore(config): update environment variables for production
```

#### Semantic Versioning

Se aplica Semantic Versioning 2.0.0 para el versionado de releases, siguiendo el formato `MAJOR.MINOR.PATCH`:

- **MAJOR:** Cambios incompatibles con versiones anteriores (breaking changes)
- **MINOR:** Nuevas funcionalidades compatibles con versiones anteriores
- **PATCH:** Correcciones de bugs compatibles con versiones anteriores

**Ejemplo de evolución de versiones:**

- `1.0.0` → Primera versión estable
- `1.1.0` → Nueva funcionalidad agregada
- `1.1.1` → Corrección de bug
- `2.0.0` → Cambio incompatible en API

#### Configuración de GitHub en WebStorm

Instrucciones para vincular WebStorm con GitHub:

1. Abrir WebStorm y navegar a **VCS > Enable Version Control Integration**, seleccionar Git.
2. Ir a **File > Settings > Version Control > GitHub** y agregar la cuenta de GitHub.
3. Configurar el nombre de usuario en **File > Settings > Version Control > Git**.
4. Para conectar con el repositorio remoto: **Git > Manage Remotes** y agregar la URL del repositorio.
5. Realizar commits con **Ctrl+K** y push con **Ctrl+Shift+K**.

### 5.1.3. Source Code Style Guide & Conventions

En esta sección se establecen las convenciones de estilo y nomenclatura adoptadas para los lenguajes utilizados en el proyecto Veyra: HTML, CSS, JavaScript, TypeScript, Java y Gherkin. Se aplica nomenclatura en inglés para todos los elementos del código, siguiendo el Ubiquitous Language definido para el dominio.

#### Referencias de Guías de Estilo Adoptadas

| Lenguaje/Tecnología | Guía de Estilo                                                                                                      |
|---------------------|---------------------------------------------------------------------------------------------------------------------|
| HTML/CSS            | [Google HTML/CSS Style Guide](https://google.github.io/styleguide/htmlcssguide.html)                                |
| JavaScript          | [Google JavaScript Style Guide](https://google.github.io/styleguide/jsguide.html)                                   |
| TypeScript          | [Google TypeScript Style Guide](https://google.github.io/styleguide/tsguide.html)                                   |
| Angular             | [Angular Coding Style Guide](https://angular.io/guide/styleguide)                                                   |
| Java                | [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html)                                       |
| Spring Boot         | [Spring Boot Reference Documentation](https://docs.spring.io/spring-boot/docs/current/reference/html/features.html) |
| Gherkin             | [Gherkin Reference](https://cucumber.io/docs/gherkin/reference/)                                                    |

#### Nomenclatura General

Se utiliza nomenclatura en inglés para todos los elementos del código, relacionada con la entidad que representan dentro del dominio del negocio.

| Elemento                        | Convención           | Ejemplo                                    |
|---------------------------------|----------------------|--------------------------------------------|
| Clases (Java/TypeScript)        | PascalCase           | `ResidentService`, `MedicationController`  |
| Interfaces (TypeScript)         | PascalCase           | `IResidentRepository`, `Resident`          |
| Métodos/Funciones               | camelCase            | `getResidentById()`, `createMedication()`  |
| Variables                       | camelCase            | `residentName`, `medicationList`           |
| Constantes                      | SCREAMING_SNAKE_CASE | `MAX_RESIDENTS`, `API_BASE_URL`            |
| Archivos de componentes Angular | kebab-case           | `resident-list.component.ts`               |
| Clases CSS                      | kebab-case           | `.resident-card`, `.medication-form`       |
| Endpoints REST                  | kebab-case (plural)  | `/api/v1/residents`, `/api/v1/medications` |

#### Sangría

Se aplica un espaciado de dos espacios para la indentación en todos los archivos HTML, CSS, JavaScript y TypeScript.

**Ejemplo HTML:**

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>VEYRA - Nursing Home Management</title>
  </head>
  <body>
    <header>
      <h1>Welcome to VEYRA</h1>
    </header>
    <main>
      <p>Comprehensive care management platform.</p>
    </main>
  </body>
</html>
```

#### Convenciones por Lenguaje

##### HTML

- Declarar `<!DOCTYPE html>` en la primera línea.
- Utilizar minúsculas para nombres de elementos y atributos.
- Utilizar comillas dobles para valores de atributos: `<div class="container">`
- Incluir atributos `alt` en todas las imágenes para accesibilidad.
- No omitir elementos `<title>` y meta tags.
- Usar líneas en blanco para separar bloques de código extensos.

##### CSS

- Utilizar shorthand properties cuando sea posible: `margin: 10px 20px;`
- Terminar todas las declaraciones con punto y coma.
- Un espacio después de los dos puntos en propiedades: `color: #333;`
- Usar comillas simples para valores de font-family: `font-family: 'Open Sans', sans-serif;`
- Organizar propiedades alfabéticamente dentro de cada selector.

##### JavaScript / TypeScript

- Usar `const` y `let` en lugar de `var`.
- Espacios alrededor de operadores: `const result = a + b;`
- Punto y coma al final de instrucciones.
- Llaves de apertura en la misma línea de la declaración.
- Usar arrow functions para callbacks: `items.map(item => item.name)`

**Ejemplo TypeScript:**

```typescript
export class ResidentService {
  private residents: Resident[] = [];

  getResidentById(id: number): Resident | undefined {
    return this.residents.find(resident => resident.id === id);
  }

  createResident(resident: Resident): void {
    this.residents.push(resident);
  }
}
```

##### Java

- Seguir convenciones de nomenclatura de Spring Boot.
- Documentar clases y métodos públicos con Javadoc.
- Organizar imports alfabéticamente, separando imports de java.*, javax.*, org.*, com.*
- Máximo 120 caracteres por línea.
- Usar anotaciones de Spring en líneas separadas.

**Ejemplo Java:**

```java
@RestController
@RequestMapping("/api/v1/residents")
public class ResidentController {

    private final ResidentService residentService;

    public ResidentController(ResidentService residentService) {
        this.residentService = residentService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Resident> getResidentById(@PathVariable Long id) {
        return residentService.findById(id)
            .map(ResponseEntity::ok)
            .orElse(ResponseEntity.notFound().build());
    }
}
```

##### Gherkin

- Escribir escenarios en inglés.
- Un escenario por comportamiento específico.
- Mantener pasos atómicos y reutilizables.
- Usar indentación de dos espacios para los pasos.

**Ejemplo Gherkin:**

```gherkin
Feature: Resident Management

  Scenario: Successfully register a new resident
    Given the administrator is authenticated
    And the administrator is on the resident registration form
    When the administrator enters valid resident information
    And clicks the "Register" button
    Then the system should display a success message
    And the new resident should appear in the residents list

  Scenario: Attempt to register resident with missing required fields
    Given the administrator is authenticated
    And the administrator is on the resident registration form
    When the administrator submits the form with empty required fields
    Then the system should display validation error messages
    And the resident should not be registered
```

---

### 5.1.4. Software Deployment Configuration

En esta sección se especifica la configuración de despliegue para cada uno de los producto digitales de la solución Veyra: Landing Page, Frontend Web Application y Backend Web Services.

#### Landing Page - GitHub Pages

La Landing Page se despliega mediante GitHub Pages directamente desde el repositorio, aprovechando el hosting gratuito para sitios estáticos.

**Pasos de configuración:**

1. Acceder al repositorio `NovaPeru-Tech-LandingPage` en GitHub.
2. Navegar a **Settings > Pages** en el menú lateral.
3. En la sección "Source", seleccionar la rama `main` y carpeta `/ (root)`.
4. Hacer clic en **Save** y esperar la generación del sitio (1-2 minutos).
5. Verificar el despliegue accediendo a la URL generada.

**URL de despliegue:** https://novaperu-tech.github.io/NovaPeru-Tech-LandingPage/

#### Frontend Web Application - Vercel

El Frontend desarrollado con Angular se despliega en Vercel, plataforma que ofrece hosting optimizado para aplicaciones frontend con CDN global y despliegue automático.

**Pasos de configuración:**

1. Crear cuenta en [Vercel](https://vercel.com) y vincular con GitHub.
2. Importar el repositorio `NovaPeruTech-Frontend` desde GitHub.
3. Configurar el proyecto:
    - **Framework Preset:** Angular
    - **Build Command:** `ng build --configuration production`
    - **Output Directory:** `dist/nova-peru-tech-frontend`
4. Configurar variables de entorno:
    - `API_BASE_URL`: URL del Backend API
5. Habilitar despliegue automático en cada push a la rama `main`.
6. Hacer clic en **Deploy** y esperar la compilación.

**URL de despliegue:** https://nova-peru-tech-frontend-v1-2w9r.vercel.app/home

#### Backend Web Services - Azure App Service

El Backend desarrollado con Spring Boot se despliega en Azure App Service, servicio de plataforma como servicio (PaaS) que facilita el hosting de aplicaciones web Java.

**Pasos de configuración:**

**1. Creación del Azure App Service:**

1. Acceder al [Portal de Azure](https://portal.azure.com).
2. Crear un nuevo recurso: **App Service**.
3. Configurar:
    - **Runtime stack:** Java 17
    - **Operating System:** Linux
    - **Region:** East US (o región más cercana)
    - **App Service Plan:** Seleccionar o crear plan según necesidades

**2. Configuración de Base de Datos (Azure SQL Database):**

1. Crear instancia de Azure SQL Database o MySQL.
2. Configurar reglas de firewall para permitir conexiones desde App Service.
3. Obtener cadena de conexión JDBC.

**3. Configuración de Variables de Entorno:**

En **App Service > Configuration > Application settings**, agregar:

| Variable                     | Descripción                                |
|------------------------------|--------------------------------------------|
| `SPRING_DATASOURCE_URL`      | Cadena de conexión JDBC a la base de datos |
| `SPRING_DATASOURCE_USERNAME` | Usuario de la base de datos                |
| `SPRING_DATASOURCE_PASSWORD` | Contraseña de la base de datos             |
| `SPRING_PROFILES_ACTIVE`     | `prod`                                     |

**4. Despliegue desde IntelliJ IDEA:**

1. Instalar el plugin **Azure Toolkit for IntelliJ**.
2. Autenticarse con la cuenta de Azure.
3. Clic derecho en el proyecto > **Azure > Deploy to Azure Web Apps**.
4. Seleccionar el App Service de destino.
5. Ejecutar el despliegue y verificar en los logs.

**URLs de despliegue:**

- **API Base URL:** https://veyrav01.azurewebsites.net
- **Documentación Swagger UI:** https://veyrav01.azurewebsites.net/swagger-ui/index.html
- 
## 5.2. Landing Page, Services & Applications Implementation

### 5.2.1. Sprint 1

Durante el Sprint 1, el equipo se enfocó en el desarrollo e implementación de la Landing Page de VEYRA, incluyendo todas las secciones de presentación del negocio con soporte bilingüe (español/inglés) y despliegue mediante GitHub Pages.

**Repositorio:** https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage

**Landing Page Desplegada:** https://novaperu-tech.github.io/NovaPeru-Tech-LandingPage/

#### 5.2.1.1. Sprint Planning

| Sprint Planning Sprint 1           |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Sprint Planning Background**     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Date                               | 14/09/2025                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Time                               | 10:00 p.m.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Location                           | Discord                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Prepared By                        | Renato Calvo Yalan                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Attendees (to planning meeting)    | Calvo Yalan, Renato Guillermo<br>Armas Sánchez, Oscar Javier<br>Ramirez Carrasco, Ariana Lizeth<br>Roman Lopez, Miguel Angel Junior<br>Ruiz Madrid, Billy Jake                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| **Sprint 0 Review Summary**        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                    | N/A (Este es el primer sprint del proyecto)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| **Sprint 0 Retrospective Summary** |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                    | N/A (Este es el primer sprint del proyecto)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| **Sprint Goal & User Stories**     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                    | **Sprint 1 Goal (Outcome–Impact–Customer–Confirmation):**<br><br>*Our focus is on delivering the first bilingual marketing Landing Page of VEYRA that clearly communicates the value proposition and service offering to first-time visitors.*<br><br>*We believe it delivers a clear and trustworthy first impression for Nursing Home Administrators and Family Members, helping them quickly understand what VEYRA does and how to contact the team.*<br><br>*This will be confirmed when users from both segments can navigate through all core sections (Hero, Services, Pricing, About Us, Team, Contact) in Spanish and English and can reach the Contact section in no more than three clicks from the home view.* |
| Sprint 1 Velocity                  | 13 Story Points                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Sum of Story Points                | 13 SP (≈ 53 horas estimadas)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |

#### 5.2.1.2. Aspect Leaders and Collaborators

En esta sección se presenta la matriz **Leadership-and-Collaboration Matrix (LACX)** correspondiente al Sprint 1. Su propósito es identificar claramente los aspectos principales del sprint y asignar responsabilidades de liderazgo (**L**) y colaboración (**C**) para fortalecer la comunicación, coordinación y trazabilidad del trabajo dentro del equipo.

Estos aspectos se derivan directamente de los objetivos definidos en el Sprint 1 Goal, asegurando cobertura total de los entregables planificados.

- **Landing Page Development & Deployment:** Diseño, estructura, contenido y funcionalidad de la página principal del proyecto, incluyendo su despliegue.
- **Report Module Implementation:** Desarrollo y presentación del módulo que permitirá crear, visualizar y exportar el reporte requerido.

| Team Member (Last Name, First Name) | Aspect: Landing Page | Aspect: Report Module |
|-------------------------------------|----------------------|-----------------------|
| Calvo Yalan, Renato Guillermo       | L                    | C                     |
| Armas Sánchez, Oscar Javier         | C                    | L                     |
| Ramirez Carrasco, Ariana Lizeth     | C                    | C                     |
| Roman Lopez, Miguel Angel Junior    | C                    | C                     |
| Ruiz Madrid, Billy Jake             | C                    | C                     |

- **L** = Líder del aspecto
- **C** = Colaborador en el aspecto

Esta organización de roles está alineada con la posterior asignación de tareas del Sprint Backlog, permitiendo que cada líder supervise la ejecución de su aspecto con apoyo de sus colaboradores. Con ello, se garantiza una gestión más eficiente del progreso y una mejor sincronización entre los miembros del equipo.

### 5.2.1.3. Sprint Backlog 1

El Sprint Backlog 1 reúne las historias de usuario y tareas necesarias para implementar la primera versión de la landing page, incluyendo el menú de navegación, la visualización de planes, la sección de creadores, redes sociales, el formulario de contacto y el cambio de idioma.

Todas las tareas son monitoreadas y actualizadas mediante **Jira Software**.

![Sprint 1 Board Screenshot](../assets/img/chapter-V/sprints/sprint-backlog-I/sprint-table/sprint1-board.jpg)

*Figura: Tablero del Sprint 1 en Jira Software (Proyecto VEYRA)*


A continuación, la estructura de la tabla de control de estado para el Sprint:
**Sprint # | Sprint 1**

| **User Story Id** | **User Story Title**              | **Work-Item Id** | **Work-Item Title**                  | **Description**                                                        | **Estimation (Hours)** | **Assigned To** | **Status (To-do / In-Process / To-Review / Done)** |
|-------------------|-----------------------------------|------------------|--------------------------------------|------------------------------------------------------------------------|------------------------|-----------------|----------------------------------------------------|
| US-001            | Menú de navegación                | T001             | Definir estructura del menú          | Definir la estructura del menú de navegación para la landing page.     | 2h                     | Billy Ruiz      | To-do                                              |
| US-001            | Menú de navegación                | T002             | Implementar menú en HTML             | Implementar el menú de navegación utilizando HTML.                     | 3h                     | Billy Ruiz      | To-do                                              |
| US-001            | Menú de navegación                | T003             | Estilos del menú                     | Aplicar estilos CSS al menú de navegación.                             | 2h                     | Billy Ruiz      | To-do                                              |
| US-001            | Menú de navegación                | T004             | Pruebas de navegación                | Realizar pruebas de navegación del menú.                               | 2h                     | Billy Ruiz      | To-do                                              |
| US-002            | Visualización de planes           | T005             | Diseñar estructura de planes         | Diseñar la estructura de la sección de planes.                         | 3h                     | Renato Calvo    | To-do                                              |
| US-002            | Visualización de planes           | T006             | Implementar sección de planes        | Implementar la sección de planes en la landing page.                   | 4h                     | Renato Calvo    | To-do                                              |
| US-002            | Visualización de planes           | T007             | Pruebas de planes                    | Realizar pruebas de carga y visualización de los planes.               | 2h                     | Renato Calvo    | To-do                                              |
| US-003            | Selección de plan en Landing Page | T008             | Diseñar formulario de confirmación   | Diseñar el formulario de confirmación de selección de plan.            | 3h                     | Billy Ruiz      | To-do                                              |
| US-003            | Selección de plan en Landing Page | T009             | Implementar selección y confirmación | Implementar la lógica de selección y confirmación del plan.            | 4h                     | Billy Ruiz      | To-do                                              |
| US-003            | Selección de plan en Landing Page | T010             | Pruebas de validación                | Realizar pruebas de validación del flujo de selección.                 | 2h                     | Billy Ruiz      | To-do                                              |
| US-004            | Visualización de creadores        | T011             | Definir información de creadores     | Definir la información a mostrar de los creadores/equipo.              | 2h                     | Miguel Román    | To-do                                              |
| US-004            | Visualización de creadores        | T012             | Implementar sección del equipo       | Implementar la sección del equipo/creadores.                           | 3h                     | Miguel Román    | To-do                                              |
| US-004            | Visualización de creadores        | T013             | Pruebas de visualización             | Realizar pruebas de visualización de la sección del equipo.            | 2h                     | Miguel Román    | To-do                                              |
| US-005            | Redes sociales                    | T014             | Implementar íconos de redes sociales | Implementar los íconos de redes sociales en la landing page.           | 2h                     | Oscar Armas     | To-do                                              |
| US-005            | Redes sociales                    | T015             | Pruebas de enlaces sociales          | Realizar pruebas de los enlaces hacia redes sociales.                  | 1h                     | Oscar Armas     | To-do                                              |
| US-006            | Formulario de contacto            | T016             | Diseñar formulario de contacto       | Diseñar el formulario de contacto.                                     | 2h                     | Ariana Ramirez  | To-do                                              |
| US-006            | Formulario de contacto            | T017             | Implementar formulario               | Implementar el formulario de contacto en la landing page.              | 3h                     | Ariana Ramirez  | To-do                                              |
| US-006            | Formulario de contacto            | T018             | Pruebas de envío                     | Realizar pruebas de envío y funcionamiento del formulario.             | 2h                     | Ariana Ramirez  | To-do                                              |
| US-007            | Cambio de idioma                  | T019             | Implementar botón de idioma          | Implementar el botón o selector de cambio de idioma.                   | 3h                     | Billy Ruiz      | To-do                                              |
| US-007            | Cambio de idioma                  | T020             | Definir textos traducidos            | Definir y registrar los textos traducidos para los idiomas soportados. | 4h                     | Billy Ruiz      | To-do                                              |
| US-007            | Cambio de idioma                  | T021             | Pruebas de funcionalidad             | Realizar pruebas de funcionamiento del cambio de idioma.               | 2h                     | Billy Ruiz      | To-do                                              |


El seguimiento y la actualización del Sprint Backlog se realizan en **Jira Software** mediante el tablero Scrum del proyecto, donde se registran los estados de cada tarea (To-do, In-Process, To-Review, Done). Durante las reuniones diarias (**Daily Scrum**), el equipo revisa el avance, actualiza el estado de las tareas y gestiona posibles bloqueos.

#### 5.2.1.4. Development Evidence for Sprint Review

En esta sección se explican y presentan los avances en la implementación logrados durante el Sprint 1
en relación con el producto de la solución incluido en su alcance: la **Landing Page** pública de VEYRA.
A lo largo de este sprint se construyó la primera versión navegable del sitio, incluyendo las secciones
Home/Hero, Services, Features, About the App, Pricing, Testimonials, About the Team y Contact, con sus
estilos CSS y ajustes de responsive.

La tabla siguiente resume los commits más relevantes realizados en el repositorio de la Landing Page,
indicando la rama, el identificador del commit, el mensaje asociado y una breve explicación del cambio
introducido en la implementación.

| Repository                                                 | Branch | Commit Id                                | Commit Message                                      | Commit Message Body                                                                                                                          | Committed on (Date) |
|------------------------------------------------------------|--------|------------------------------------------|-----------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | 5499fe0fb5d24b7e18b29f76616d3751d1b05056 | Initial commit                                      | Commit inicial del repositorio, creando la estructura base del proyecto de Landing Page y la configuración de dependencias.                  | 10-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | 741b864bf4d3adb5c285c2b57266cc2eef9aad35 | chore: add hero and home section                    | Implementa la sección Hero/Home con el mensaje principal de VEYRA y el llamado a la acción para los usuarios.                                | 12-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | 84569edd53373a0dda20fae41a127d0a6573953f | chore: add home and services section styling        | Aplica estilos CSS a las secciones Home y Services, mejorando la disposición del contenido y la legibilidad.                                 | 13-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | 66d1d439ba86f7a9f2be00a27b65f59550b595f7 | feat(section): add features section with CSS        | Agrega la sección de Features con estilos, mostrando las funcionalidades destacadas de la plataforma VEYRA.                                  | 14-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | e3f8b84b35396c70673120464c4eebc57a843fd3 | chore: add features section                         | Refina el contenido y la estructura HTML de la sección de Features para resaltar mejor los beneficios del producto.                          | 15-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | cfe8b66050e1c25e4b62a06c413192ef09406a45 | chore: add about us section and benefits            | Incorpora la sección About Us/About the App con los beneficios principales para los usuarios de casas de reposo.                             | 16-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | fe01ab208e248862dd8f260f18750bed27d0d528 | chore: add team section                             | Incluye la sección About the Team con información de los integrantes del equipo de desarrollo.                                               | 17-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | f3da531e6de86e8d2737d29d0586d7947f8eb0e9 | feat(section): add pricing section with CSS         | Crea la sección de Pricing con tarjetas de planes y estilos CSS para comunicar los niveles de servicio.                                      | 18-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | ca8bf2e835f2ad94d068573c5fc7533e38c68f04 | chore: add hero section styling                     | Ajusta la apariencia de la sección Hero agregando estilos adicionales para mejorar el impacto visual.                                        | 19-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | ea08eae9d315d89fa351c5abf6bfd4cda57fd278 | chore: add responsive styling improvements          | Realiza mejoras de estilos responsivos para que la Landing Page se visualice correctamente en distintos tamaños de pantalla.                 | 20-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage | main   | dcd349d3cb0a5f40146aac3fd9edf1684b39d308 | fix: update asset paths to include public directory | Corrige las rutas de los recursos estáticos (imágenes y otros assets) apuntando al directorio público para evitar errores 404 en despliegue. | 21-09-2025          |


<div style="page-break-after: always;"></div>

#### 5.2.1.5. Execution Evidence for Sprint Review
En esta sección se explican y presentan los avances en la implementación logrados durante el Sprint 1
en relación con el producto de la solución incluido en su alcance: la **Landing Page** pública de VEYRA.
A lo largo de este sprint se construyó la primera versión navegable del sitio, incluyendo las secciones
Home/Hero, Services, Features, About the App, Pricing, Testimonials, About the Team y Contact, con sus
estilos CSS y ajustes de responsividad.

La tabla siguiente resume los commits más relevantes realizados en el repositorio de la Landing Page,
indicando la rama, el identificador del commit, el mensaje asociado y una breve explicación del cambio
introducido en la implementación.

##### Video de demostración de la Landing Page:

**URL YouTube:** [[https://youtu.be/OhyEBPV4FuI](https://youtu.be/OhyEBPV4FuI)]
**Duración:** [00:04:32]

##### Capturas de las principales secciones:

**Encabezado y menú de navegación:**
![header landing page](/assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/header-landing-page.png)

**Sección Hero:**
![hero landing page](../assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/hero-landing-page.png)

**Sección Services:**
![services landing page](../assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/services-landing-page.png)

**Sección Pricing:**
![plans landing page](../assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/plans-landing-page.png)

**Sección About the App:**
![about the app landing page](/assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/about-the-app-landing-page.png)

**Sección Testimonials:**
![testimonials landing page](/assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/testimonials-landing-page.png)

**Sección About the Team:**
![about the team landing page](/assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/about-the-team-landing-page.png)

**Sección Contact:**
![contact landing page](/assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/contact-landing-page.png)

**Footer:**
![footer landing page](/assets/img/chapter-V/sprints/sprint-backlog-I/execution-evidence-for-sprint-review/footer-landing-page.png)

#### 5.2.1.6. Services Documentation Evidence for Sprint Review

En el Sprint 1, el equipo diseñó, programó y desplegó la Landing Page de VEYRA. Esta es una página web estática,
por lo que no hay Web Services disponibles en este sprint.

| End Point | Funciones                                                                |
|-----------|--------------------------------------------------------------------------|
| N/A       | No hay Web Services implementados en el Sprint 1 (Landing Page estático) |

#### 5.2.1.7. Software Deployment Evidence for Sprint Review

[Landing Page NovaPeru-Tech](https://novaperu-tech.github.io/NovaPeru-Tech-LandingPage/) —
[https://novaperu-tech.github.io/NovaPeru-Tech-LandingPage/](https://novaperu-tech.github.io/NovaPeru-Tech-LandingPage/)

---

#### 5.2.1.8. Team Collaboration Insights during Sprint

Durante el Sprint 1, los analíticos de colaboración de GitHub muestran una participación activa y continua de todos los miembros del equipo sobre el repositorio de la Landing Page. En el panel de Overview se observa un flujo constante de commits distribuidos a lo largo de los días del sprint, lo que evidencia que las tareas de implementación de las distintas secciones (hero, servicios, planes, equipo, testimonios, contacto y footer) se desarrollaron de manera incremental y coordinada. Cada integrante realizó aportes directos al código, ya sea mediante la creación de nuevas secciones, ajustes de estilos responsivos o correcciones derivadas de las revisiones entre pares, asegurando así que el entregable del sprint se construyera de forma colaborativa y no centralizada en una sola persona.

![overview-spring1.png](../assets/img/chapter-V/sprints/sprint-backlog-I/team-collaboration-insights-during-sprint/overview-spring1.png)

El Network Graph refleja esta dinámica mediante la presencia de ramas que nacen desde main y regresan a ella una vez integradas, siguiendo el flujo definido por GitFlow. Esta visualización confirma que las contribuciones individuales se alinearon con el marco de trabajo acordado: se desarrollaron cambios en ramas aisladas, se realizaron pruebas locales y posteriormente se integraron al tronco principal, lo que redujo conflictos y facilitó el seguimiento de la trazabilidad de cada cambio. De este modo, la colaboración no solo se dio a nivel de cantidad de commits, sino también en la forma de trabajo estructurada y compatible con las prácticas ágiles del equipo.

![network-graph-sprint1.png](../assets/img/chapter-V/sprints/sprint-backlog-I/team-collaboration-insights-during-sprint/network-graph-sprint1.png)

Finalmente, el gráfico de Visitors evidencia que, conforme avanzaba el desarrollo y se consolidaban las funcionalidades de la Landing Page, el repositorio comenzó a recibir visitas y visualizaciones, lo que sugiere interés progresivo en el producto por parte de stakeholders y del propio equipo durante las actividades de revisión y validación. En conjunto, estos analíticos de colaboración y actividad en GitHub demuestran que todos los integrantes tuvieron participación efectiva en la implementación del producto del Sprint (Landing Page) y sientan la base para replicar este mismo patrón de trabajo en los siguientes sprints, donde se abordarán la Web Application y los Web Services.

![visitors-sprint1.png](../assets/img/chapter-V/sprints/sprint-backlog-I/team-collaboration-insights-during-sprint/visitors-sprint1.png)

### 5.2.2. Sprint 2

Durante el Sprint 2, el equipo se enfocó en el desarrollo del módulo frontend de gestión de tareas,
miembros y grupos de la aplicación web VEYRA. Este sprint se centró en integrar componentes con el
backend mediante servicios REST, crear flujos de navegación funcionales entre vistas y aplicar mejoras
en la interfaz visual con Angular y Angular Material.

**Repositorio Frontend:** [https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend](https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend)

**Backend API (Local):** [http://localhost:8080/swagger-ui/index.html](http://localhost:8080/swagger-ui/index.html)

#### 5.2.2.1. Sprint Planning 2

**Sprint Planning Sprint 2**

| Field                           | Value                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Sprint Planning Background      | **Sprint Planning Background**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Date                            | 28/09/2025                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Time                            | 09:30 p.m.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Location                        | Discord                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Prepared By                     | Oscar Javier Armas Sánchez                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Attendees (to planning meeting) | Calvo Yalan, Renato Guillermo<br>Armas Sánchez, Oscar Javier<br>Ramirez Carrasco, Ariana Lizeth<br>Roman Lopez, Miguel Angel Junior<br>Ruiz Madrid, Billy Jake                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Sprint 1 Review Summary         | Se completó el desarrollo y despliegue de la Landing Page, incluyendo todas las secciones planificadas y la funcionalidad de cambio de idioma. Quedaron pendientes pequeños ajustes visuales en la sección de "Planes" y optimizaciones de carga, los cuales se trasladarán al Sprint 2 para su refinamiento.                                                                                                                                                                                                                                                                                                                                                        |
| Sprint 1 Retrospective Summary  | El equipo identificó la necesidad de mejorar la comunicación diaria y la asignación de sub-tareas en Jira para evitar solapamientos. Se acordó utilizar etiquetas más claras por responsable y realizar revisiones de código colaborativas al cierre de cada día.                                                                                                                                                                                                                                                                                                                                                                                                    |
| Sprint Goal & User Stories      | **Sprint 2 Goal (Outcome–Impact–Customer–Confirmation):**  <br><br>*Our focus is on enabling administrators to manage tasks, members, and groups from a unified web interface connected to VEYRA’s backend services.*  <br><br>*We believe it delivers better visibility and coordination of daily activities to Nursing Home Administrators and internal staff, by centralizing operational information in a single place.*  <br><br>*This will be confirmed when an administrator can create, update, and view tasks linked to members and groups, and filter them by status from the web application, with data persisted and retrieved through the backend API.* |
| Sprint 2 Velocity               | 16 Story Points                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Sum of Story Points             | 16 SP (≈ 64 horas estimadas)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |


#### 5.2.2.2. Aspect Leaders and Collaborators

Para el Sprint 2 se presenta la matriz **Leadership-and-Collaboration Matrix (LACX)**, donde se definen los roles de liderazgo (**L**) y colaboración (**C**) por aspecto técnico y funcional del desarrollo frontend basado en Angular.

Estos aspectos se derivan directamente de los objetivos establecidos en el *Sprint 2 Goal*, garantizando que cada componente clave del módulo frontend cuente con un responsable principal y con el apoyo colaborativo necesario para su implementación efectiva.

- **Integración Frontend–Backend:** Consumo de endpoints, configuración de servicios HTTP y validación de la conexión con la API local.
- **Gestión de Tareas (UI):** Desarrollo de componentes Angular para la visualización, filtrado y navegación entre tareas.
- **Gestión de Miembros y Grupos:** Creación de componentes de detalle y listado de miembros y grupos asociados al proyecto.

| Team Member (Last Name, First Name) | Aspect: API Integration | Aspect: Task UI | Aspect: Members & Groups |
|-------------------------------------|-------------------------|-----------------|--------------------------|
| Armas Sánchez, Oscar Javier         | L                       | C               | C                        |
| Calvo Yalan, Renato Guillermo       | C                       | L               | C                        |
| Ramirez Carrasco, Ariana Lizeth     | C                       | C               | L                        |
| Roman Lopez, Miguel Angel Junior    | C                       | C               | C                        |
| Ruiz Madrid, Billy Jake             | C                       | C               | C                        |

- **L** = Líder del aspecto
- **C** = Colaborador en el aspecto

La asignación de roles busca optimizar la ejecución del sprint, favoreciendo la especialización técnica y la cooperación entre los miembros. Cada líder coordina las tareas relacionadas con su aspecto a través de **Jira Software**, supervisando avances, revisiones de código y validaciones funcionales con sus colaboradores.

### 5.2.2.3. Sprint Backlog 2

El siguiente Sprint Backlog presenta las historias de usuario y tareas planificadas para el **Sprint 2**, orientado a la implementación del frontend en Angular y Angular Material, la integración con el backend, la mejora de la experiencia de usuario y la consistencia visual de la landing page.

Todas las tareas son monitoreadas y actualizadas mediante **Jira Software**.

![Sprint 2 Board Screenshot](../assets/img/chapter-V/sprints/sprint-backlog-II/sprint-table/sprint2-board.jpg)

*Figura: Tablero del Sprint 2 en Jira Software (Proyecto VEYRA)*

![Sprint 2 Board Screenshot](../assets/img/chapter-V/sprints/sprint-backlog-II/sprint-table/sprint2-board-2.jpg)

*Figura: Tablero del Sprint 2 en Jira Software (Proyecto VEYRA)*


A continuación, la estructura de la tabla de control de estado para el Sprint:

| Sprint #       | Sprint 2                          |                      |                                                     |                                                                                 |                        |                 |                                                    |
|----------------|-----------------------------------|----------------------|-----------------------------------------------------|---------------------------------------------------------------------------------|------------------------|-----------------|----------------------------------------------------|
| **User Story** |                                   | **Work-Item / Task** |                                                     |                                                                                 |                        |                 |                                                    |
| **Id**         | **Title**                         | **Id**               | **Title**                                           | **Description**                                                                 | **Estimation (Hours)** | **Assigned To** | **Status (To-do / In-Process / To-Review / Done)** |
| US-01          | Menú de navegación                | T022                 | Definir estructura del menú para frontend           | Definir la estructura del menú de navegación en Angular para la landing page.   | 2h                     | [Asignado]      | To-do                                              |
| US-01          | Menú de navegación                | T023                 | Implementar menú en Angular y Angular Material      | Implementar el menú de navegación utilizando Angular y Angular Material.        | 3h                     | [Asignado]      | To-do                                              |
| US-01          | Menú de navegación                | T024                 | Añadir navegación dinámica y pruebas                | Añadir navegación dinámica entre secciones y ejecutar pruebas básicas del menú. | 2h                     | [Asignado]      | In-Process                                         |
| US-02          | Visualización de Planes           | T025                 | Crear componentes para mostrar planes               | Crear componentes de Angular para visualizar los planes disponibles.            | 3h                     | [Asignado]      | To-do                                              |
| US-02          | Visualización de Planes           | T026                 | Integrar datos de planes desde backend              | Integrar los datos de planes consumiendo los servicios del backend.             | 4h                     | [Asignado]      | In-Process                                         |
| US-02          | Visualización de Planes           | T027                 | Pruebas funcionales y de UI                         | Realizar pruebas funcionales y de interfaz sobre la visualización de planes.    | 2h                     | [Asignado]      | To-do                                              |
| US-03          | Selección de Plan en Landing Page | T028                 | Implementar formulario de selección y validación    | Implementar el formulario de selección de plan con validaciones en Angular.     | 3h                     | [Asignado]      | To-do                                              |
| US-03          | Selección de Plan en Landing Page | T029                 | Manejar envío y confirmación de plan                | Implementar la lógica de envío y confirmación del plan seleccionado.            | 4h                     | [Asignado]      | To-do                                              |
| US-03          | Selección de Plan en Landing Page | T030                 | Validar interacción usuario y feedback visual       | Probar la interacción del usuario y el feedback visual al seleccionar un plan.  | 2h                     | [Asignado]      | To-do                                              |
| US-04          | Visualización de creadores        | T031                 | Diseñar componente para mostrar equipo              | Diseñar el componente para mostrar la información del equipo/creadores.         | 2h                     | [Asignado]      | To-do                                              |
| US-04          | Visualización de creadores        | T032                 | Integrar datos y pruebas                            | Integrar datos del equipo y realizar pruebas de visualización.                  | 3h                     | [Asignado]      | To-do                                              |
| US-04          | Visualización de creadores        | T033                 | Ajustar estilos para responsividad                  | Ajustar estilos para asegurar que la sección del equipo sea responsive.         | 2h                     | [Asignado]      | To-do                                              |
| US-05          | Redes sociales                    | T034                 | Incorporar íconos sociales en header y footer       | Incorporar íconos de redes sociales en el header y footer de la landing page.   | 2h                     | [Asignado]      | To-do                                              |
| US-05          | Redes sociales                    | T035                 | Configurar enlaces y pruebas                        | Configurar los enlaces a redes sociales y realizar pruebas de navegación.       | 1h                     | [Asignado]      | To-do                                              |
| US-06          | Formulario de contacto            | T036                 | Crear formulario con validación Angular             | Crear el formulario de contacto con validaciones en Angular.                    | 2h                     | [Asignado]      | To-do                                              |
| US-06          | Formulario de contacto            | T037                 | Integrar envío y confirmación                       | Integrar el envío de datos y mensajes de confirmación del formulario.           | 3h                     | [Asignado]      | To-do                                              |
| US-06          | Formulario de contacto            | T038                 | Test de funcionalidad y usabilidad                  | Realizar pruebas de funcionamiento y usabilidad del formulario de contacto.     | 2h                     | [Asignado]      | To-do                                              |
| US-07          | Cambio de idioma                  | T039                 | Añadir selector de idioma en menú                   | Añadir un selector de idioma en el menú principal.                              | 3h                     | [Asignado]      | To-do                                              |
| US-07          | Cambio de idioma                  | T040                 | Configurar textos traducidos en frontend            | Configurar y gestionar los textos traducidos en el frontend.                    | 4h                     | [Asignado]      | In-Process                                         |
| US-07          | Cambio de idioma                  | T041                 | Validar cambio dinámico y pruebas                   | Probar el cambio dinámico de idioma y validar su comportamiento.                | 2h                     | [Asignado]      | To-do                                              |
| US-40          | Menú de navegación consistente    | T042                 | Asegurar estilo uniforme en todas las páginas       | Asegurar que el menú mantenga un estilo uniforme en todas las páginas.          | 2h                     | [Asignado]      | To-do                                              |
| US-40          | Menú de navegación consistente    | T043                 | Ajustar comportamiento de menú en rutas             | Ajustar el comportamiento del menú al navegar entre diferentes rutas.           | 2h                     | [Asignado]      | To-do                                              |
| US-41          | Paleta de colores y tipografía    | T044                 | Aplicar esquema de colores accesible                | Aplicar un esquema de colores accesible conforme a buenas prácticas de UX.      | 2h                     | [Asignado]      | To-do                                              |
| US-41          | Paleta de colores y tipografía    | T045                 | Configurar tipografía coherente en estilos globales | Configurar tipografías coherentes en los estilos globales del proyecto.         | 2h                     | [Asignado]      | To-do                                              |
| US-42          | Diseño de formularios usables     | T046                 | Crear formularios con validación clara              | Diseñar formularios con validación clara y mensajes comprensibles.              | 3h                     | [Asignado]      | To-do                                              |
| US-42          | Diseño de formularios usables     | T047                 | Pruebas de usabilidad y accesibilidad               | Realizar pruebas de usabilidad y accesibilidad en los formularios.              | 2h                     | [Asignado]      | To-do                                              |
| US-43          | Patrones de diseño coherentes     | T048                 | Definir y aplicar patrones UI comunes               | Definir y aplicar patrones de interfaz reutilizables en el frontend.            | 2h                     | [Asignado]      | To-do                                              |
| US-43          | Patrones de diseño coherentes     | T049                 | Revisar consistencia en todos los componentes       | Revisar la consistencia visual y de interacción en todos los componentes.       | 2h                     | [Asignado]      | To-do                                              |
| US-44          | Manejo de errores comprensible    | T050                 | Implementar mensajes de error amigables             | Implementar mensajes de error claros y amigables para el usuario.               | 3h                     | [Asignado]      | To-do                                              |
| US-44          | Manejo de errores comprensible    | T051                 | Pruebas de errores y soluciones claras              | Probar escenarios de error y validar que las soluciones mostradas sean claras.  | 2h                     | [Asignado]      | To-do                                              |

El seguimiento y la actualización del Sprint Backlog se realizan en **Jira Software** mediante el tablero Scrum del proyecto, donde se registran los estados de cada tarea (**To-do, In-Process, To-Review, Done**). Durante las reuniones diarias (**Daily Scrum**), el equipo actualiza el progreso y revisa posibles bloqueos para garantizar el cumplimiento.

#### 5.2.2.4. Development Evidence for Sprint Review

| Repository                                             | Branch  | Commit Id | Commit Message                                                | Committed on (Date) |
|--------------------------------------------------------|---------|-----------|---------------------------------------------------------------|---------------------|
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | d2e8b00   | feat(jam): add JAM module scaffolding                         | 29-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | ff01fea   | feat: add SignIn component with validation                    | 29-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | fa75547   | feat: add Familiar and SignUpFamiliar components              | 29-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | ec5cece   | feat: add Welcome component with greeting                     | 29-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | 0fbc1ac   | feat: add AuthenticationSection component                     | 29-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | b8cb684   | feat: add Administrator and SignUpAdministrator components    | 29-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | 4e12667   | feat(i18n): add English and Spanish language support          | 29-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | 9763508   | feat: add language switcher and layout components             | 29-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | main    | 4ccacbc   | chore: default Angular setup                                  | 28-09-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | develop | 5f14512   | feat(env): update API base URL for development and production | 10-10-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | develop | 2886e0b   | feat(firebase): update hosting configuration                  | 10-10-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | develop | 251c8a9   | feat(env): add employee endpoint to development               | 10-10-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend | develop | ee86134   | feat(firebase): configure Firebase hosting                    | 10-10-2025          |

#### 5.2.2.5. Execution Evidence for Sprint Review

Durante el Sprint 2, se logró implementar completamente el módulo de gestión de tareas con integración a la API Backend. El frontend permite listar, filtrar y navegar entre tareas por miembro y estado, así como visualizar detalles asociados. Además, se mejoró la navegación y el diseño visual adaptando elementos con Angular Material.

##### Video de demostración de funcionalidad:

**URL YouTube:** https://youtu.be/CEzlIzeI3Cc  
**Duración:** [10:23:00]

##### Capturas de pantalla principales:

**Módulo de Residentes - Nueva entrada:**

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/execution-evidence-for-sprint-review/New-Resident1.jpg" alt="New-Resident1">

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/execution-evidence-for-sprint-review/New-Resident2.jpg" alt="New-Resident2">

**Módulo de Residentes - Listado:**

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/execution-evidence-for-sprint-review/Resident-List.jpg" alt="Resident-List">

**Módulo de Residentes - Detalle:**

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/execution-evidence-for-sprint-review/Resident.jpg" alt="Resident">

**Módulo de Medicamentos - Listado:**

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/execution-evidence-for-sprint-review/Medication-List.jpg" alt="Medication-List">

**Módulo de Medicamentos - Detalle:**

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/execution-evidence-for-sprint-review/Medication.jpg" alt="Medication">

#### 5.2.2.6. Services Documentation Evidence for Sprint Review

En el Sprint 2, el equipo diseñó, programó e integró el módulo frontend con la API Backend de VEYRA. Se estableció la comunicación con éxito entre el Frontend y los servicios REST proporcionados por el Backend, implementando las operaciones CRUD (Crear, Leer, Actualizar, Eliminar) para las principales entidades. La documentación del servicio se presenta a continuación, cumpliendo con los lineamientos de especificación de Endpoints, verbos HTTP, sintaxis de llamada y explicación del response.

| End Point Base                               | Método HTTP | Acción Implementada (Funciones)                              | Sintaxis de Llamada (Ejemplo y Parámetros)                              | Explicación del Response                                                                |
|----------------------------------------------|-------------|--------------------------------------------------------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **http://localhost:8080/api/v1/residents**   | **GET**     | Obtener el listado completo de residentes.                   | `GET /api/v1/residents`                                                 | `200 OK`: Retorna un array JSON con la lista de objetos Residentes.                     |
| **http://localhost:8080/api/v1/residents**   | **GET**     | Obtener el detalle de un residente por su ID.                | `GET /api/v1/residents/{id}` (Ej: `/api/v1/residents/123`)              | `200 OK`: Retorna el objeto Residente solicitado. `404 Not Found` si el ID no existe.   |
| **http://localhost:8080/api/v1/residents**   | **POST**    | Crear un nuevo residente.                                    | `POST /api/v1/residents` (Requiere Objeto Residente en el Body)         | `201 Created`: Retorna el objeto Residente creado, incluyendo el ID asignado.           |
| **http://localhost:8080/api/v1/residents**   | **PUT**     | Actualizar completamente un residente existente por su ID.   | `PUT /api/v1/residents/{id}` (Requiere Objeto Residente en el Body)     | `200 OK`: Retorna el objeto Residente actualizado.                                      |
| **http://localhost:8080/api/v1/residents**   | **DELETE**  | Eliminar un residente por su ID.                             | `DELETE /api/v1/residents/{id}`                                         | `204 No Content`: Indica la eliminación exitosa.                                        |
| **http://localhost:8080/api/v1/medications** | **GET**     | Obtener el listado completo de medicamentos.                 | `GET /api/v1/medications`                                               | `200 OK`: Retorna un array JSON con la lista de objetos Medicamentos.                   |
| **http://localhost:8080/api/v1/medications** | **GET**     | Obtener el detalle de un medicamento por su ID.              | `GET /api/v1/medications/{id}` (Ej: `/api/v1/medications/456`)          | `200 OK`: Retorna el objeto Medicamento solicitado. `404 Not Found` si el ID no existe. |
| **http://localhost:8080/api/v1/medications** | **POST**    | Crear un nuevo medicamento.                                  | `POST /api/v1/medications` (Requiere Objeto Medicamento en el Body)     | `201 Created`: Retorna el objeto Medicamento creado, incluyendo el ID asignado.         |
| **http://localhost:8080/api/v1/medications** | **PUT**     | Actualizar completamente un medicamento existente por su ID. | `PUT /api/v1/medications/{id}` (Requiere Objeto Medicamento en el Body) | `200 OK`: Retorna el objeto Medicamento actualizado.                                    |
| **http://localhost:8080/api/v1/medications** | **DELETE**  | Eliminar un medicamento por su ID.                           | `DELETE /api/v1/medications/{id}`                                       | `204 No Content`: Indica la eliminación exitosa.                                        |
| **http://localhost:8080/api/v1/staff**       | **GET**     | Obtener el listado completo de empleados.                    | `GET /api/v1/staff`                                                     | `200 OK`: Retorna un array JSON con la lista de objetos Empleados.                      |
| **http://localhost:8080/api/v1/staff**       | **GET**     | Obtener el detalle de un empleado por su ID.                 | `GET /api/v1/staff/{id}` (Ej: `/api/v1/staff/789`)                      | `200 OK`: Retorna el objeto Empleado solicitado. `404 Not Found` si el ID no existe.    |
| **http://localhost:8080/api/v1/staff**       | **POST**    | Crear un nuevo empleado.                                     | `POST /api/v1/staff` (Requiere Objeto Empleado en el Body)              | `201 Created`: Retorna el objeto Empleado creado, incluyendo el ID asignado.            |
| **http://localhost:8080/api/v1/staff**       | **PUT**     | Actualizar completamente un empleado.                        | `PUT /api/v1/staff/{id}` (Requiere Objeto Empleado en el Body)          | `200 OK`: Retorna el objeto Empleado actualizado.                                       |
| **http://localhost:8080/api/v1/staff**       | **DELETE**  | Eliminar un empleado.                                        | `DELETE /api/v1/staff/{id}`                                             | `204 No Content`: Indica la eliminación exitosa.                                        |

#### 5.2.2.7. Software Deployment Evidence for Sprint Review

[Frontend NovaPeru-Tech](https://nova-peru-tech-frontend-v1-2w9r.vercel.app/home) — https://nova-peru-tech-frontend-v1-2w9r.vercel.app/home

#### 5.2.2.8. Team Collaboration Insights during Sprint

Durante el Sprint 2, los analíticos de colaboración del repositorio NovaPeruTech-Frontend evidencian una participación constante de todos los integrantes del equipo sobre el código de la aplicación web VEYRA. A lo largo del sprint se registran commits frecuentes asociados a la implementación de los módulos de gestión de tareas, miembros y grupos, así como a la integración con los servicios REST del backend y a las mejoras visuales con Angular y Angular Material. Esta actividad distribuida confirma que la construcción de la Web Application se realizó de forma incremental, respetando las responsabilidades definidas en el Sprint 2 Goal y la matriz LACX (API Integration, Task UI, Members & Groups), y evitando la concentración del desarrollo en un solo miembro.

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/team-collaboration-insights-during-sprint/overview-sprint2.jpg" alt="overview-sprint2">

El Network Graph correspondiente al Sprint 2 muestra un uso activo del flujo de trabajo basado en GitFlow, con ramas de características (features) creadas para la integración Frontend–Backend, la interfaz de gestión de tareas y los componentes de miembros y grupos, que luego son fusionadas a la rama principal tras las respectivas revisiones de código. Este patrón de ramas y merges refleja que los líderes de cada aspecto coordinaron el trabajo con sus colaboradores, alineados con las prácticas definidas para el proyecto (feature branches, revisiones colaborativas y consolidación en main/develop), reforzando la trazabilidad y la calidad del código entregado durante el sprint.

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/team-collaboration-insights-during-sprint/network-graph-sprint2.jpg" alt="network-graph-sprint2">

Finalmente, el gráfico de Visitors del repositorio frontend muestra un incremento de visitas y vistas de página conforme se acercan las fechas de integración y despliegue del producto, lo que sugiere que el equipo utilizó activamente el repositorio como punto central para revisar avances, validar funcionalidades y preparar el Sprint Review. En conjunto, estos analíticos de overview, network graph y visitors demuestran que, durante el Sprint 2, todos los miembros del equipo participaron efectivamente en la implementación del producto web (Web Application) y en su integración con los Web Services, cumpliendo con el principio de que cada integrante contribuya a los distintos productos definidos en el proyecto (Landing Page, Web Applications, Web Services) según el alcance de cada sprint.

<img src="../assets/img/chapter-V/sprints/sprint-backlog-II/team-collaboration-insights-during-sprint/visitors-sprint2.jpg" alt="visitors-sprint2">

### 5.2.3. Sprint 3

En esta sección se registra y explica el avance logrado durante el Sprint 3 tanto en términos de producto como de trabajo colaborativo del equipo VEYRA. A lo largo de este sprint se consolidó la primera versión operativa del entorno productivo: se implementó y desplegó la capa de persistencia y lógica de negocio en el Backend con Java Spring Boot, se conectó el Frontend Angular desarrollado en sprints previos y se habilitó la documentación de servicios para soportar la Sprint Review.

Las subsecciones que siguen detallan este avance desde diferentes ángulos: **Sprint Planning 3**, **Aspect Leaders and Collaborators**, **Sprint Backlog 3**, **Development Evidence for Sprint Review**, **Execution Evidence for Sprint Review**, **Services Documentation Evidence for Sprint Review** y **Team Collaboration Insights during Sprint**, mostrando cómo cada integrante contribuyó a los productos de la solución (Web Application y Web Services) y al cumplimiento del objetivo del Sprint 3.

**Repositorio Frontend:** https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend

**Repositorio Backend:** https://github.com/NovaPeru-Tech/NovaPeruTech-Backend

**Backend API (Producción):** https://veyrav01.azurewebsites.net/swagger-ui/index.html#/

#### 5.2.3.1. Sprint Planning 3

| Sprint Planning Sprint 3           |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Sprint Planning Background**     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Date                               | 10/11/2025                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Time                               | 10:00 p.m.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Location                           | Discord                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Prepared By                        | Ariana Lizeth Ramirez Carrasco                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Attendees (to planning meeting)    | Calvo Yalan, Renato Guillermo<br>Armas Sánchez, Oscar Javier<br>Ramirez Carrasco, Ariana Lizeth<br>Roman Lopez, Miguel Angel Junior<br>Ruiz Madrid, Billy Jake<br>Quiroz Caceres, Adrian Alonso                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| **Sprint 2 Review Summary**        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                    | Se completó el desarrollo del Frontend para los módulos de Tareas, Miembros y Grupos. La interfaz está lista para el usuario y se integró satisfactoriamente con los servicios mockeados. Quedó pendiente la implementación del sistema de autenticación y la configuración de las variables de entorno para el despliegue final.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| **Sprint 2 Retrospective Summary** |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                    | Se mejoró la comunicación, pero se identificó la necesidad de estandarizar la nomenclatura de los servicios y DTOs en el Backend, lo cual se abordará antes de iniciar la programación. El equipo acordó asignar un "guardián de la calidad" (Quality Keeper) rotativo para el Backend en cada sprint.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| **Sprint Goal & User Stories**     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                    | **Sprint 3 Goal (Outcome–Impact–Customer–Confirmation):**<br><br>*Our focus is on delivering a live VEYRA production environment where authenticated users can sign up, sign in, and manage core nursing-home data (residents, staff, rooms and medications) through the deployed web application connected to the backend.*<br><br>*We believe it delivers a realistic, reliable and secure experience to Nursing Home Administrators and Family Members, allowing them to access updated information about residents' care and activities from anywhere and at any time.*<br><br>*This will be confirmed when the production URL is publicly accessible, at least one test administrator can register and log in, and can successfully perform end-to-end CRUD operations on key entities (for example residents, staff and medications) using the deployed frontend connected to the Azure-hosted backend during the Sprint Review.* |
| Sprint 3 Velocity                  | 18 Story Points                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Sum of Story Points                | 18 SP (≈ 72 horas estimadas)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |

#### 5.2.3.2. Aspect Leaders and Collaborators

Para el Sprint 3 se presenta la matriz **Leadership-and-Collaboration Matrix (LACX)**, donde se definen los roles de liderazgo (**L**) y colaboración (**C**) por aspecto clave del desarrollo.

Los aspectos clave se centran en el despliegue y la implementación del Backend, que son la prioridad de este sprint. El nuevo participante (Adrian Alonso Quiroz Caceres) se integra en el rol de colaboración dentro del equipo.

- **DevOps & Deployment:** Configuración de variables de entorno, pipeline CI/CD y monitoreo del frontend desplegado.
- **Backend Core (CRUD Operations):** Implementación de la arquitectura MVC/Capas para la gestión de datos (Java Spring Boot, JPA).
- **Authentication & Security:** Desarrollo de los endpoints de registro/login, JWT generation y configuración de seguridad.

| Team Member (Last Name, First Name) | Aspect: DevOps & Deploy | Aspect: Backend Core | Aspect: Auth & Security |
|-------------------------------------|-------------------------|----------------------|-------------------------|
| Armas Sánchez, Oscar Javier         | L                       | C                    | C                       |
| Calvo Yalan, Renato Guillermo       | C                       | L                    | C                       |
| Ramirez Carrasco, Ariana Lizeth     | C                       | C                    | L                       |
| Roman Lopez, Miguel Angel Junior    | C                       | C                    | C                       |
| Ruiz Madrid, Billy Jake             | C                       | C                    | C                       |
| Quiroz Caceres, Adrian Alonso       | C                       | C                    | C                       |

- **L** = Líder del aspecto
- **C** = Colaborador en el aspecto

Esta organización de roles garantiza que los aspectos críticos de despliegue y backend sean cubiertos con especialización, mientras se mantiene la flexibilidad para que todos colaboren según sea necesario.
### 5.2.3.3. Sprint Backlog 3  

### 5.2.3.3. Sprint Backlog 3

El Sprint Backlog 3 incluye las historias de usuario y tareas planificadas para el despliegue del frontend en **Vercel** y del backend en **Azure App Service**, con énfasis en la implementación de operaciones **CRUD** y el sistema de autenticación (login/registro).

Todas las tareas son monitoreadas y actualizadas mediante **Jira Software**.

![Sprint 3 Board Screenshot](../assets/img/chapter-V/sprints/sprint-backlog-III/sprint-table/sprint3-board.jpg)
*Figura: Tablero del Sprint 3 en Jira Software (Proyecto VEYRA)*

![Sprint 3 Board Screenshot](../assets/img/chapter-V/sprints/sprint-backlog-III/sprint-table/sprint3-board-2.jpg)
*Figura: Tablero del Sprint 3 en Jira Software (Proyecto VEYRA)*

![Sprint 3 Board Screenshot](../assets/img/chapter-V/sprints/sprint-backlog-III/sprint-table/sprint3-board-3.jpg)
*Figura: Tablero del Sprint 3 en Jira Software (Proyecto VEYRA)*

A continuación, la tabla de control de estado para el Sprint 3:

| Sprint #       | Sprint 3                                   |                      |                                 |                                                                              |                        |                 |                                                    |
|----------------|--------------------------------------------|----------------------|---------------------------------|------------------------------------------------------------------------------|------------------------|-----------------|----------------------------------------------------|
| **User Story** |                                            | **Work-Item / Task** |                                 |                                                                              |                        |                 |                                                    |
| **Id**         | **Title**                                  | **Id**               | **Title**                       | **Description**                                                              | **Estimation (Hours)** | **Assigned To** | **Status (To-do / In-Process / To-Review / Done)** |
| US-015         | Despliegue Frontend en Vercel              | T043                 | Configurar proyecto en Vercel   | Configurar el proyecto del frontend en la plataforma Vercel.                 | 2h                     | [Asignado]      | Done                                               |
| US-015         | Despliegue Frontend en Vercel              | T044                 | Configurar build pipeline       | Configurar el pipeline de build y despliegue automático en Vercel.           | 2h                     | [Asignado]      | Done                                               |
| US-015         | Despliegue Frontend en Vercel              | T045                 | Validar despliegue y DNS        | Validar el despliegue del frontend, dominio y configuración DNS.             | 1h                     | [Asignado]      | Done                                               |
| US-016         | Implementación Backend CRUD - Residentes   | T046                 | Crear Entity y Repository       | Crear la entidad y el repositorio para la gestión de residentes.             | 3h                     | [Asignado]      | Done                                               |
| US-016         | Implementación Backend CRUD - Residentes   | T047                 | Implementar Service layer       | Implementar la capa de servicios para operaciones CRUD de residentes.        | 3h                     | [Asignado]      | Done                                               |
| US-016         | Implementación Backend CRUD - Residentes   | T048                 | Crear Controller y endpoints    | Crear el controlador y endpoints REST para residentes.                       | 3h                     | [Asignado]      | Done                                               |
| US-016         | Implementación Backend CRUD - Residentes   | T049                 | Pruebas unitarias               | Desarrollar y ejecutar pruebas unitarias para los endpoints de residentes.   | 2h                     | [Asignado]      | Done                                               |
| US-017         | Implementación Backend CRUD - Medicamentos | T050                 | Crear Entity y Repository       | Crear la entidad y el repositorio para la gestión de medicamentos.           | 3h                     | [Asignado]      | Done                                               |
| US-017         | Implementación Backend CRUD - Medicamentos | T051                 | Implementar Service layer       | Implementar la capa de servicios para operaciones CRUD de medicamentos.      | 3h                     | [Asignado]      | Done                                               |
| US-017         | Implementación Backend CRUD - Medicamentos | T052                 | Crear Controller y endpoints    | Crear el controlador y endpoints REST para medicamentos.                     | 3h                     | [Asignado]      | Done                                               |
| US-017         | Implementación Backend CRUD - Medicamentos | T053                 | Pruebas unitarias               | Desarrollar y ejecutar pruebas unitarias para los endpoints de medicamentos. | 2h                     | [Asignado]      | Done                                               |
| US-018         | Implementación Backend CRUD - Empleados    | T054                 | Crear Entity y Repository       | Crear la entidad y el repositorio para la gestión de empleados.              | 3h                     | [Asignado]      | Done                                               |
| US-018         | Implementación Backend CRUD - Empleados    | T055                 | Implementar Service layer       | Implementar la capa de servicios para operaciones CRUD de empleados.         | 3h                     | [Asignado]      | Done                                               |
| US-018         | Implementación Backend CRUD - Empleados    | T056                 | Crear Controller y endpoints    | Crear el controlador y endpoints REST para empleados.                        | 3h                     | [Asignado]      | Done                                               |
| US-018         | Implementación Backend CRUD - Empleados    | T057                 | Pruebas unitarias               | Desarrollar y ejecutar pruebas unitarias para los endpoints de empleados.    | 2h                     | [Asignado]      | Done                                               |
| US-019         | Sistema de Autenticación (Login/Registro)  | T058                 | Implementar generación de JWT   | Implementar la generación y validación de tokens JWT para autenticación.     | 3h                     | [Asignado]      | Done                                               |
| US-019         | Sistema de Autenticación (Login/Registro)  | T059                 | Crear endpoint de registro      | Crear el endpoint para registro de usuarios.                                 | 3h                     | [Asignado]      | Done                                               |
| US-019         | Sistema de Autenticación (Login/Registro)  | T060                 | Crear endpoint de login         | Crear el endpoint para inicio de sesión de usuarios.                         | 3h                     | [Asignado]      | Done                                               |
| US-019         | Sistema de Autenticación (Login/Registro)  | T061                 | Configurar Spring Security      | Configurar Spring Security para proteger los endpoints del backend.          | 2h                     | [Asignado]      | Done                                               |
| US-020         | Despliegue Backend en Azure App Service    | T062                 | Crear Azure App Service         | Crear el recurso de Azure App Service para el backend.                       | 2h                     | [Asignado]      | Done                                               |
| US-020         | Despliegue Backend en Azure App Service    | T063                 | Configurar Azure SQL Database   | Configurar la base de datos Azure SQL para la aplicación.                    | 2h                     | [Asignado]      | Done                                               |
| US-020         | Despliegue Backend en Azure App Service    | T064                 | Configurar variables de entorno | Configurar variables de entorno y cadenas de conexión en Azure.              | 1h                     | [Asignado]      | Done                                               |
| US-020         | Despliegue Backend en Azure App Service    | T065                 | Validar despliegue y acceso     | Validar el despliegue del backend y el acceso a los servicios.               | 1h                     | [Asignado]      | Done                                               |

El seguimiento y la actualización del Sprint Backlog se realizan en **Jira Software** mediante el tablero Scrum del proyecto, donde se registran los estados de cada tarea (**To-do, In-Process, To-Review, Done**). Durante las reuniones diarias (**Daily Scrum**), el equipo actualiza el progreso y revisa posibles bloqueos para garantizar el cumplimiento de los objetivos del **Sprint 3**.

#### 5.2.3.4. Development Evidence for Sprint Review

| Repository                                            | Branch | Commit Id | Commit Message                                                | Committed on (Date) |
|-------------------------------------------------------|--------|-----------|---------------------------------------------------------------|---------------------|
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 3a8c12f   | feat(init): initialize Spring Boot project scaffolding        | 02-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 7b2e45c   | feat(entities): add Resident entity with JPA annotations      | 03-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 9d6f89e   | feat(repository): add ResidentRepository interface            | 03-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 1c4d67a   | feat(service): implement ResidentService with CRUD operations | 04-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 8e5a23b   | feat(controller): add ResidentController with REST endpoints  | 04-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 5f3c90d   | feat(medication): add Medication entity and CRUD operations   | 05-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 2a7b18f   | feat(employee): add Employee entity and CRUD operations       | 05-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | c8e3a19   | feat(auth): implement JWT token generation and validation     | 06-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 4f9d52e   | feat(auth): add authentication endpoints (login/register)     | 06-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 6a2c71b   | feat(security): configure Spring Security with JWT filters    | 07-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 9e4f63c   | feat(docs): add Swagger/OpenAPI documentation                 | 07-11-2025          |
| https://github.com/NovaPeru-Tech/NovaPeruTech-Backend | main   | 3d8f94c   | chore(deploy): configure Azure deployment pipeline            | 08-11-2025          |

#### 5.2.3.5. Execution Evidence for Sprint Review

Durante el Sprint 3, se completó exitosamente la implementación del Backend con Spring Boot, incluyendo todos los módulos de gestión de residentes, medicamentos, empleados y sistema de autenticación. Se logró el despliegue en Azure App Service con base de datos en Azure SQL Database.

##### Video de demostración de los Endpoints:

**URL Microsoft Stream / YouTube:** [Incluir URL del video de demostración del Sprint 3]  
**Duración:** [HH:MM:SS]

##### Capturas de pantalla - Swagger UI del Backend:

**Endpoints de Medications:**

![swagger-medications-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-medications-endpoints.jpg)

**Endpoints de Person profiles:**

![swagger-person-profiles-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-person-profiles-endpoints.jpg)

**Endpoints de Nursing Homes:**

![swagger-nursing-homes-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-nursing-homes-endpoints.jpg)

**Endpoints de Staff:**

![swagger-staff-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-staff-endpoints.jpg)

**Endpoints de Roles:**

![swagger-roles-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-roles-endpoints.jpg)

**Endpoints de Autenticación:**

![swagger-auth-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-auth-endpoints.jpg)

**Endpoints de Measurements:**

![swagger-measurements-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-measurements-endpoints.jpg)

**Endpoints de Activities:**

![swagger-activities-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-activities-endpoints.jpg)

**Endpoints de Business Profiles:**

![swagger-business-profiles-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-business-profiles-endpoints.jpg)

**Endpoints de Residentes:**

![swagger-residents-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-residents-endpoints1.jpg)

**Endpoints de Administrators:**

![swagger-administrators-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-administrators-endpoints.jpg)

**Endpoints de Users:**

![swagger-user-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-III/execution-evidence-for-sprint-review/swagger-user-endpoints.jpg)

#### 5.2.3.6. Services Documentation Evidence for Sprint Review

Durante el Sprint 3, se implementó la capa de servicios REST del Backend de VEYRA, con documentación completa en Swagger/OpenAPI. Todos los endpoints están disponibles y descritos en el documento `/v3/api-docs` del entorno de producción de NovaPeruTech, incluyendo parámetros, códigos de respuesta y modelos de datos.

La tabla siguiente resume los principales endpoints expuestos, organizados por recurso y operación, indicando el verbo HTTP, la acción implementada, la sintaxis de la llamada y el tipo de respuesta que devuelve el servicio.

| End Point Base                | Método HTTP | Acción Implementada                                     | Sintaxis de Llamada                                                        | Explicación del Response                                                                           |
|-------------------------------|-------------|---------------------------------------------------------|----------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| **/api/v1/medications**       | **GET**     | Obtener medicamento por ID.                             | `GET /api/v1/medications/{medicationId}`                                   | `200 OK`: Objeto `MedicationResource` con la información del medicamento.                          |
| **/api/v1/person-profiles**   | **GET**     | Obtener listado de perfiles de persona.                 | `GET /api/v1/person-profiles`                                              | `200 OK`: Array JSON de `PersonProfileResource`.                                                   |
| **/api/v1/person-profiles**   | **GET**     | Obtener perfil de persona por ID.                       | `GET /api/v1/person-profiles/{personProfileId}`                            | `200 OK`: Objeto `PersonProfileResource` o `404 Not Found` si no existe.                           |
| **/api/v1/person-profiles**   | **POST**    | Crear un nuevo perfil de persona.                       | `POST /api/v1/person-profiles`                                             | `201 Created`: Objeto creado con sus datos normalizados.                                           |
| **/api/v1/person-profiles**   | **PUT**     | Actualizar un perfil de persona.                        | `PUT /api/v1/person-profiles/{personProfileId}`                            | `200 OK`: Objeto actualizado o `404 Not Found`.                                                    |
| **/api/v1/person-profiles**   | **DELETE**  | Eliminar un perfil de persona.                          | `DELETE /api/v1/person-profiles/{personProfileId}`                         | `204 No Content`: Eliminación exitosa.                                                             |
| **/api/v1/nursing-homes**     | **GET**     | Listar todas las casas de reposo.                       | `GET /api/v1/nursing-homes`                                                | `200 OK`: Array de `NursingHomeResource`.                                                          |
| **/api/v1/nursing-homes**     | **GET**     | Obtener casa de reposo por ID.                          | `GET /api/v1/nursing-homes/{nursingHomeId}`                                | `200 OK`: `NursingHomeResource` o `404 Not Found`.                                                 |
| **/api/v1/nursing-homes**     | **GET**     | Listar staff de una casa de reposo.                     | `GET /api/v1/nursing-homes/{nursingHomeId}/staff`                          | `200 OK`: Array de `StaffResource`.                                                                |
| **/api/v1/nursing-homes**     | **POST**    | Registrar nuevo miembro de staff en una casa de reposo. | `POST /api/v1/nursing-homes/{nursingHomeId}/staff`                         | `201 Created`: `StaffResource` creado.                                                             |
| **/api/v1/nursing-homes**     | **GET**     | Listar habitaciones de una casa de reposo.              | `GET /api/v1/nursing-homes/{nursingHomeId}/rooms`                          | `200 OK`: Array de `RoomResource`.                                                                 |
| **/api/v1/nursing-homes**     | **POST**    | Agregar nueva habitación a una casa de reposo.          | `POST /api/v1/nursing-homes/{nursingHomeId}/rooms`                         | `201 Created`: `RoomResource` creada.                                                              |
| **/api/v1/nursing-homes**     | **POST**    | Asignar residente a una habitación.                     | `POST /api/v1/nursing-homes/{nursingHomeId}/rooms/{residentId}`            | `200 OK`: `AssignedRoomForResidentResource` con la asignación.                                     |
| **/api/v1/nursing-homes**     | **GET**     | Listar habitaciones por estado.                         | `GET /api/v1/nursing-homes/{nursingHomeId}/rooms/{roomStatus}`             | `200 OK`: Array de habitaciones filtradas por estado.                                              |
| **/api/v1/nursing-homes**     | **GET**     | Listar residentes de una casa de reposo.                | `GET /api/v1/nursing-homes/{nursingHomeId}/residents`                      | `200 OK`: Array de `ResidentResource`.                                                             |
| **/api/v1/nursing-homes**     | **POST**    | Registrar nuevo residente en una casa de reposo.        | `POST /api/v1/nursing-homes/{nursingHomeId}/residents`                     | `201 Created`: `ResidentResource` creado.                                                          |
| **/api/v1/nursing-homes**     | **GET**     | Obtener analíticas de terminaciones de staff.           | `GET /api/v1/nursing-homes/{nursingHomeId}/analytics/staff-terminations`   | `200 OK`: Lista de `MetricResource` con estadísticas de terminaciones.                             |
| **/api/v1/nursing-homes**     | **GET**     | Obtener analíticas de contrataciones de staff.          | `GET /api/v1/nursing-homes/{nursingHomeId}/analytics/staff-hires`          | `200 OK`: Lista de métricas de contrataciones.                                                     |
| **/api/v1/nursing-homes**     | **GET**     | Obtener analíticas de admisiones de residentes.         | `GET /api/v1/nursing-homes/{nursingHomeId}/analytics/residents-admissions` | `200 OK`: Lista de métricas de admisiones.                                                         |
| **/api/v1/nursing-homes**     | **GET**     | Listar actividades de una casa de reposo.               | `GET /api/v1/nursing-homes/{nursingHomeId}/activities`                     | `200 OK`: Array de `ActivityResource`.                                                             |
| **/api/v1/nursing-homes**     | **POST**    | Registrar nueva actividad en una casa de reposo.        | `POST /api/v1/nursing-homes/{nursingHomeId}/activities`                    | `201 Created`: `ActivityResource` creada.                                                          |
| **/api/v1/staff**             | **PUT**     | Actualizar datos de un miembro del staff.               | `PUT /api/v1/staff/{staffMemberId}`                                        | `200 OK`: `StaffResource` actualizado.                                                             |
| **/api/v1/staff**             | **GET**     | Listar contratos de un miembro del staff.               | `GET /api/v1/staff/{staffMemberId}/contracts`                              | `200 OK`: Array de `ContractResource`.                                                             |
| **/api/v1/staff**             | **POST**    | Registrar nuevo contrato para un miembro del staff.     | `POST /api/v1/staff/{staffMemberId}/contracts`                             | `201 Created`: `ContractResource` creado.                                                          |
| **/api/v1/staff**             | **GET**     | Obtener contrato específico por ID.                     | `GET /api/v1/staff/{staffMemberId}/contracts/{contractId}`                 | `200 OK`: `ContractResource` o `404 Not Found`.                                                    |
| **/api/v1/staff**             | **PATCH**   | Actualizar estado de un contrato.                       | `PATCH /api/v1/staff/{staffMemberId}/contracts/{contractId}`               | `200 OK`: Contrato actualizado; `400` si la transición es inválida.                                |
| **/api/v1/staff**             | **GET**     | Obtener contrato activo de un miembro del staff.        | `GET /api/v1/staff/{staffMemberId}/contracts/active`                       | `200 OK`: `ContractResource` activo o `404 Not Found`.                                             |
| **/api/v1/roles**             | **GET**     | Listar todos los roles del sistema.                     | `GET /api/v1/roles`                                                        | `200 OK`: Array de `RoleResource`.                                                                 |
| **/api/v1/authentication**    | **POST**    | Registro de nuevo usuario (sign-up).                    | `POST /api/v1/authentication/sign-up`                                      | `201 Created`: `AuthenticatedUserResource` con datos y token.                                      |
| **/api/v1/authentication**    | **POST**    | Inicio de sesión (sign-in).                             | `POST /api/v1/authentication/sign-in`                                      | `200 OK`: `AuthenticatedUserResource` con token JWT; `401 Unauthorized` en credenciales inválidas. |
| **/api/v1/measurements**      | **GET**     | Obtener listado de mediciones registradas.              | `GET /api/v1/measurements`                                                 | `200 OK`: Array de `MeasurementResource` utilizado para monitoreo de salud.                        |
| **/api/v1/business-profiles** | **GET**     | Listar todos los perfiles de negocio.                   | `GET /api/v1/business-profiles`                                            | `200 OK`: Array de `BusinessProfileResource`.                                                      |
| **/api/v1/business-profiles** | **POST**    | Registrar nuevo perfil de negocio.                      | `POST /api/v1/business-profiles`                                           | `201 Created`: `BusinessProfileResource` creado.                                                   |
| **/api/v1/business-profiles** | **GET**     | Obtener perfil de negocio por ID.                       | `GET /api/v1/business-profiles/{businessId}`                               | `200 OK`: Perfil de negocio o `404 Not Found`.                                                     |
| **/api/v1/residents**         | **GET**     | Obtener residente por ID.                               | `GET /api/v1/residents/{residentId}`                                       | `200 OK`: `ResidentResource` o `404 Not Found`.                                                    |
| **/api/v1/residents**         | **PUT**     | Actualizar datos de un residente.                       | `PUT /api/v1/residents/{residentId}`                                       | `200 OK`: Residente actualizado.                                                                   |
| **/api/v1/residents**         | **DELETE**  | Eliminar residente.                                     | `DELETE /api/v1/residents/{residentId}`                                    | `204 No Content`: Eliminación exitosa.                                                             |
| **/api/v1/residents**         | **GET**     | Listar alergias de un residente.                        | `GET /api/v1/residents/{residentId}/allergies`                             | `200 OK`: Array de `AllergyResource`.                                                              |
| **/api/v1/residents**         | **POST**    | Registrar nueva alergia para un residente.              | `POST /api/v1/residents/{residentId}/allergies`                            | `201 Created`: `AllergyResource` creada.                                                           |
| **/api/v1/residents**         | **GET**     | Listar medicamentos asignados a un residente.           | `GET /api/v1/residents/{residentId}/medications`                           | `200 OK`: Array de `MedicationResource`.                                                           |
| **/api/v1/residents**         | **POST**    | Registrar un nuevo medicamento para un residente.       | `POST /api/v1/residents/{residentId}/medications`                          | `201 Created`: Asociación residente–medicamento creada.                                            |
| **/api/v1/administrators**    | **POST**    | Crear administrador del sistema.                        | `POST /api/v1/administrators`                                              | `201 Created`: `AdministratorResource` registrado.                                                 |
| **/api/v1/administrators**    | **POST**    | Crear casa de reposo asociada a un administrador.       | `POST /api/v1/administrators/{administratorId}/nursing-homes`              | `201 Created`: `NursingHomeResource` vinculada al administrador.                                   |
| **/api/v1/users**             | **GET**     | Listar todos los usuarios.                              | `GET /api/v1/users`                                                        | `200 OK`: Array de `UserResource`.                                                                 |
| **/api/v1/users**             | **GET**     | Obtener usuario por ID.                                 | `GET /api/v1/users/{userId}`                                               | `200 OK`: `UserResource` o `404 Not Found`.                                                        |

Adicionalmente, la especificación OpenAPI incluye los esquemas de datos utilizados por la API, tales como `StaffResource`, `ResidentResource`, `PersonProfileResource`, `AllergyResource`, `ContractResource`, `MedicationResource`, `RoomResource`, `ActivityResource`, `BusinessProfileResource`, `UserResource`, `AdministratorResource`, `NursingHomeResource`, `MetricResource`, `MeasurementResource`, `RoleResource`, `SignUpResource`, `SignInResource` y `AuthenticatedUserResource`, entre otros, que describen la estructura de los *request* y *response* intercambiados entre el Frontend y el Backend.

#### 5.2.3.7. Software Deployment Evidence for Sprint Review

Durante el Sprint 3 se consolidó el *deployment* de la solución VEYRA en entornos cloud, abarcando la Web Application (Frontend Angular) y los Web Services (Backend con API REST y documentación Swagger). Las actividades incluyeron la creación y configuración de proyectos en Vercel y Azure App Service, la definición de variables de entorno para separar los ambientes de desarrollo y producción, y la integración del flujo de despliegue continuo basado en los repositorios de GitHub del equipo.

De esta manera, el producto quedó accesible desde una URL pública para los usuarios administradores de casas de reposo y se habilitó, además, la documentación interactiva de la API para facilitar las pruebas funcionales y la validación técnica durante la revisión del Sprint.

---

##### 1) Despliegue de la Web Application (Frontend) en Vercel

Para la Web Application se configuró un proyecto en Vercel enlazado al repositorio *NovaPeruTech-Frontend*. Se definió el comando de build de Angular y la carpeta de salida de artefactos (`dist`), y se registró la variable de entorno con la `BASE_API_URL` apuntando al backend en producción. Con esto, cada vez que se realiza un merge a la rama principal, Vercel ejecuta automáticamente el pipeline de compilación y despliegue.

**Frontend desplegado:** https://nova-peru-tech-frontend-v1-2w9r.vercel.app/home

![Panel de despliegue del Frontend en Vercel](../assets/img/chapter-V/sprints/sprint-backlog-III/software-deployment-evidence-for-sprint-review/deployment-frontend-sprint3.png.jpg)
*Figura: Panel de despliegue de la Web Application de VEYRA en Vercel.*

---

##### 2) Despliegue de los Web Services (Backend) en Azure App Service

El backend de VEYRA se desplegó en Azure App Service utilizando el proyecto *veyrav01*. Para ello se creó un recurso de App Service, se configuró el entorno de ejecución de Spring Boot y se definieron las variables de entorno necesarias (cadena de conexión a la base de datos, perfil `prod` y claves de seguridad). Azure se integró con el repositorio *NovaPeruTech-BackEnd* para automatizar el despliegue cada vez que se actualiza la rama principal.

**Backend desplegado:** https://veyrav01.azurewebsites.net

![Panel de despliegue del Backend en Azure App Service](../assets/img/chapter-V/sprints/sprint-backlog-III/software-deployment-evidence-for-sprint-review/deployment-backend-sprint3.jpg)
*Figura: Vista del recurso de Azure App Service con el backend VEYRA desplegado.*

---

##### 3) Publicación de la documentación de la API (Swagger UI)

Como parte del proceso de deployment, se habilitó la documentación de los Web Services mediante Swagger UI en el mismo App Service de Azure. Esto permite a los miembros del equipo y a los stakeholders explorar todos los endpoints REST (creación, consulta, actualización y eliminación de recursos como residentes, personal, casas de reposo, actividades y métricas de salud), así como probarlos en tiempo real contra el entorno de producción.

**API Documentation (Swagger UI):** https://veyrav01.azurewebsites.net/swagger-ui/index.html

![Swagger UI con la documentación de la API de VEYRA](../assets/img/chapter-V/sprints/sprint-backlog-III/software-deployment-evidence-for-sprint-review/deployment-swagger-sprint3.jpg)
*Figura: Documentación interactiva de los Web Services de VEYRA mediante Swagger UI.*

#### 5.2.3.8. Team Collaboration Insights during Sprint

Durante el Sprint 3, los analíticos de colaboración de los repositorios NovaPeruTech-Frontend y NovaPeruTech-Backend evidencian una participación activa y distribuida de todos los integrantes del equipo sobre los dos productos principales del proyecto: la Web Application (Frontend) y los Web Services (Backend). El gráfico de Overview muestra un volumen sostenido de commits a lo largo del sprint, asociado a la implementación de la capa de persistencia, la lógica de negocio en Spring Boot y los ajustes finales de integración y despliegue del Frontend. Esto refleja que las tareas no se concentraron en una sola persona, sino que cada miembro asumió responsabilidades específicas (servicios, entidades, controladores, componentes de UI, integración con la API en producción) y realizó aportes continuos hasta completar el objetivo del sprint, alineado con el enfoque en Backend y despliegue descrito en la sección de Sprint 3.

![overview-sprint3](../assets/img/chapter-V/sprints/sprint-backlog-III/team-collaboration-insights-during-sprint/overview-sprint3.jpg)

El Network Graph de ambos repositorios refuerza esta visión de trabajo colaborativo mediante la presencia de múltiples ramas de tipo feature/ que parten de develop o main y luego son fusionadas una vez completadas, siguiendo el GitFlow definido para el proyecto. Se observan ciclos de creación de ramas, desarrollo de funcionalidades (endpoints REST, servicios de negocio, integración del Frontend con la API de Azure) y merges controlados, lo que confirma que la coordinación entre líderes y colaboradores permitió avanzar en paralelo sin perder trazabilidad ni calidad del código.

![network-graph-sprint3](../assets/img/chapter-V/sprints/sprint-backlog-III/team-collaboration-insights-during-sprint/network-graph-sprint3.jpg)

Finalmente, el gráfico de Visitors muestra actividad de consulta sobre los repositorios a medida que se acercan las fechas de pruebas e integración con el entorno de producción (https://veyrav01.azurewebsites.net/swagger-ui/index.html#/), indicando que el equipo utilizó GitHub como punto central para revisar avances, validar el comportamiento de la API desplegada y preparar el Sprint Review. En conjunto, estos analíticos de Overview, Network Graph y Visitors demuestran que, durante el Sprint 3, todos los miembros del equipo participaron efectivamente en la implementación y despliegue de los Web Services y la Web Application, cumpliendo con el principio establecido de involucrar a todos los integrantes en los productos clave del proyecto (Landing Page, Web Applications y Web Services) a lo largo de los sprints.

![contributors-sprint3](../assets/img/chapter-V/sprints/sprint-backlog-III/team-collaboration-insights-during-sprint/contributors-sprint3.jpg)

### 5.2.4. Sprint 4

Durante el Sprint 4, el equipo se enfocó en la estabilización final del producto (Release Candidate), priorizando la corrección de los errores de severidad alta detectados durante las entrevistas de validación y la evaluación heurística. Se realizaron optimizaciones de rendimiento en el Backend y se unificó la localización (idioma) en el Frontend para garantizar una experiencia de usuario consistente en el lanzamiento final.

**Repositorio Frontend:** https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend

**Repositorio Backend:** https://github.com/NovaPeru-Tech/NovaPeruTech-Backend

**Backend API (Producción):** https://veyrav01.azurewebsites.net/swagger-ui/index.html#/

#### 5.2.4.1. Sprint Planning 4

| Sprint Planning Sprint 4           |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Sprint Planning Background**     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Date                               | 04/12/2025                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Time                               | 09:00 a.m.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Location                           | Discord                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Prepared By                        | Ruiz Madrid, Billy Jake                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Attendees (to planning meeting)    | Calvo Yalan, Renato Guillermo<br>Armas Sánchez, Oscar Javier<br>Ramirez Carrasco, Ariana Lizeth<br>Roman Lopez, Miguel Angel Junior<br>Ruiz Madrid, Billy Jake<br>Quiroz Caceres, Adrian Alonso                                                                                                                                                                                                                                                                                                                                                                                                       |
| **Sprint 3 Review Summary**        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                    | Se logró el despliegue exitoso del Backend en Azure y la integración base con el Frontend. Sin embargo, las pruebas de usuario revelaron inconsistencias críticas en el idioma (mezcla de inglés/español) y errores técnicos visibles ("Fetch Error") en el módulo de habitaciones que deben ser resueltos antes del lanzamiento.                                                                                                                                                                                                                                                                     |
| **Sprint 3 Retrospective Summary** |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                    | El equipo notó que la calidad del código UI bajó por la prisa del despliegue. Se acordó dedicar este último sprint exclusivamente a "Bug Fixing" y "Polishing" (pulido), deteniendo el desarrollo de nuevas funcionalidades complejas (Code Freeze).                                                                                                                                                                                                                                                                                                                                                  |
| **Sprint Goal & User Stories**     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                    | **Sprint 4 Goal (Outcome–Impact–Customer–Confirmation):**<br><br>*Our focus is on delivering a polished, production-ready version of VEYRA by resolving all critical technical and usability issues identified during validation.*<br><br>*We believe it delivers a professional and trustworthy experience to our end users, eliminating confusion caused by technical errors or mixed languages in the interface.*<br><br>*This will be confirmed when the "Get entities" error is correctly handled, all UI labels are 100% in Spanish, and no Severity 3 or 4 issues remain open in the backlog.* |
| Sprint 4 Velocity                  | 31 Story Points                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Sum of Story Points                | 31 SP (≈ 56 horas estimadas)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |

#### 5.2.4.2. Aspect Leaders and Collaborators

Para el Sprint 4 se presenta la matriz **Leadership-and-Collaboration Matrix (LACX)**, donde se definen los roles de liderazgo (**L**) y colaboración (**C**) por aspecto clave del desarrollo.

Los aspectos clave se centran en el despliegue y la implementación del Backend, que son la prioridad de este sprint.

- **DevOps & Deployment:** Configuración de variables de entorno, pipeline CI/CD y monitoreo del frontend desplegado.
- **Backend Core (CRUD Operations):** Implementación de la arquitectura MVC/Capas para la gestión de datos (Java Spring Boot, JPA).
- **Authentication & Security:** Desarrollo de los endpoints de registro/login, JWT generation y configuración de seguridad.

| Team Member (Last Name, First Name) | Aspect: DevOps & Deploy | Aspect: Backend Core | Aspect: Auth & Security |
|-------------------------------------|-------------------------|----------------------|-------------------------|
| Armas Sánchez, Oscar Javier         | C                       | C                    | C                       |
| Calvo Yalan, Renato Guillermo       | C                       | L                    | C                       |
| Ramirez Carrasco, Ariana Lizeth     | C                       | C                    | C                       |
| Roman Lopez, Miguel Angel Junior    | C                       | C                    | C                       |
| Ruiz Madrid, Billy Jake             | C                       | C                    | L                       |
| Quiroz Caceres, Adrian Alonso       | L                       | C                    | C                       |

- **L** = Líder del aspecto
- **C** = Colaborador en el aspecto

Esta organización de roles garantiza que los aspectos críticos de despliegue y backend sean cubiertos con especialización, mientras se mantiene la flexibilidad para que todos colaboren según sea necesario.

### 5.2.4.3. Sprint Backlog 4

El objetivo principal del Sprint 4 fue realizar actividades de hardening sobre VEYRA antes del despliegue final: corrección de bugs, ajustes de usabilidad y configuración de entorno de producción. En este Sprint se priorizaron refinamientos sobre las historias de usuario US07 (Cambio de idioma), US12 (Registro de residentes), US24 (Registro de medicamentos en inventario), US29 (Registro de personal) y US42 (Diseño de formularios usables) definidas en el Capítulo III, además de una tarea operacional de configuración de entorno.

![Sprint 4 Board Screenshot](../assets/img/chapter-V/sprints/sprint-backlog-IV/sprint-table/sprint4-board.png)
*Figura: Tablero del Sprint 4 en Jira Software (Proyecto VEYRA)*

**URL del Board:** https://ruizbilly320.atlassian.net/jira/software/projects/VEYRA/boards/34/backlog

| Sprint #       |                                        | Sprint 4             |                                                  |                                                                                                                                                                                                                      |                        |                          |                                                    |
|----------------|----------------------------------------|----------------------|--------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------|--------------------------|----------------------------------------------------|
| **User Story** |                                        | **Work-Item / Task** |                                                  |                                                                                                                                                                                                                      |                        |                          |                                                    |
| **Id**         | **Title**                              | **Id**               | **Title**                                        | **Description**                                                                                                                                                                                                      | **Estimation (Hours)** | **Assigned To**          | **Status (To-do / In-Process / To-Review / Done)** |
| US07           | Cambio de idioma                       | T066                 | Estandarizar etiquetas a español                 | Reemplazar etiquetas hardcodeadas en inglés por claves i18n en español en formularios y navegación para garantizar que la Landing Page y el módulo web reflejen correctamente la historia US07.                      | 3h                     | Ramirez Carrasco, Ariana | Done                                               |
| US07           | Cambio de idioma                       | T067                 | Validar archivos de traducción                   | Revisar los archivos de traducciones para asegurar que todas las vistas de la plataforma tengan textos consistentes en ambos idiomas y sin claves huérfanas.                                                         | 1h                     | Ruiz Madrid, Billy       | Done                                               |
| US12           | Registro de residentes                 | T068                 | Corregir ruta de lista de residentes             | Ajustar la ruta y navegación de la vista de residentes para evitar errores al listar perfiles, garantizando que el flujo de registro y consulta de residentes funcione de extremo a extremo.                         | 3h                     | Quiroz Caceres, Adrian   | Done                                               |
| US12           | Registro de residentes                 | T069                 | Implementar asignación de habitación             | Incorporar la asignación de habitación en el flujo de registro del residente y mostrar el número de habitación en la lista, cerrando la brecha entre el registro de residentes y la gestión de habitaciones.         | 4h                     | Renato Cárdenas Yalan    | Done                                               |
| US24           | Registro de medicamentos en inventario | T070                 | Mejorar formulario de medicamentos               | Refactorizar el formulario de medicamentos (layout y validaciones) para evitar registros con valores por defecto no deseados y mejorar la claridad de campos críticos como dosis, lote y fecha de vencimiento.       | 3h                     | Ramirez Carrasco, Ariana | Done                                               |
| US42           | Diseño de formularios usables          | T071                 | Implementar interceptor global de errores        | Configurar un interceptor HTTP para centralizar el manejo de errores 4xx/5xx en los formularios principales (residentes, medicamentos y personal), evitando mensajes técnicos y mejorando la experiencia de usuario. | 4h                     | Renato Cárdenas Yalan    | Done                                               |
| US42           | Diseño de formularios usables          | T072                 | Agregar notificaciones visuales                  | Integrar componentes de notificación (Toastr) para mostrar mensajes de éxito y error en la interacción con la aplicación web, alineados con los criterios de aceptación de formularios claros y manejables.          | 2h                     | Roman Lopez, Miguel      | Done                                               |
| US29           | Registro de personal                   | T073                 | Extender formulario de registro de administrador | Actualizar el formulario de registro para permitir la creación de cuentas de administrador de casa de reposo, diferenciando los flujos de alta para usuarios estándar y personal administrativo.                     | 3h                     | Ruiz Madrid, Billy       | Done                                               |
| Task-OPS-01    | Configuración de entorno de producción | T074                 | Actualizar base URL y endpoints                  | Actualizar la base URL del proveedor de plataforma y registrar el endpoint de administradores en los archivos de configuración de entorno para apuntar a la API de producción.                                       | 2h                     | Racso24k                 | Done                                               |

#### 5.2.4.4. Development Evidence for Sprint Review

Durante el Sprint 4, la actividad de desarrollo se enfocó en el hardening de VEYRA: estabilización de módulos existentes, corrección de bugs críticos y pulido de experiencia de usuario antes del despliegue final a producción. Los cambios priorizados se alinean principalmente con las historias de usuario orientadas a transparencia de información clínica (US08, US13, US14, US24–US28, US45–US47), gestión de residentes y personal (US12, US29–US32) y mejora de la experiencia de navegación y paneles de control (US37, US40–US42).

A continuación, se muestran los commits más relevantes en los repositorios Frontend y Backend que evidencian este trabajo de estabilización y cierre del incremento funcional del producto:

| Repository            | Branch           | Commit Id | Commit Message                                                                                                           | Commit Message Body                                                                                                                                                                                                                                          | Committed on (Date) |
|-----------------------|------------------|-----------|--------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| NovaPeruTech-Frontend | feature/analytic | [HASH]    | feat(analytics): add analytics dashboard with responsive design and metrics visualization                                | Se implementó el dashboard de analítica para el administrador de la casa de reposo con visualizaciones responsivas de métricas de residentes, personal e inventario, aportando evidencia directa de las historias de transparencia y control de gestión.     | 30-11-2025          |
| NovaPeruTech-Frontend | feature/analytic | [HASH]    | feat(analytics): add lazy-loaded route for analytics dashboard                                                           | Se configuró una ruta lazy-loaded para el módulo de Analytics, reduciendo el tiempo de carga inicial de la aplicación y alineándose con los objetivos de optimización del Sprint 4.                                                                          | 30-11-2025          |
| NovaPeruTech-Frontend | feature/analytic | [HASH]    | feat(analytics): clean up analytics dashboard by removing unused styles and components                                   | Se eliminó código muerto (estilos y componentes no utilizados) y se simplificó la estructura del dashboard, disminuyendo deuda técnica y mejorando mantenibilidad del módulo de reportes.                                                                    | 01-12-2025          |
| NovaPeruTech-Frontend | feature/nursing  | [HASH]    | feat(nursing): enhance room form layout and styling                                                                      | Se refactorizó el formulario de habitaciones (layout, estilos y campos) para corregir problemas de usabilidad e inconsistencias visuales detectadas en validación, cerrando el bug crítico asociado al módulo de habitaciones.                               | 01-12-2025          |
| NovaPeruTech-BackEnd  | feature/analytic | [HASH]    | feat(analytics): implement resource, controller and assembler                                                            | Se implementaron recursos, controlador REST y ensambladores para exponer estadísticas generales, de residentes e inventario, permitiendo al frontend consumir métricas consolidadas desde el módulo de Analytics.                                            | 23-11-2025          |
| NovaPeruTech-BackEnd  | feature/tracking | [HASH]    | feat(tracking): add MeasurementResource, MeasurementResourceFromEntityAssembler, and MeasurementsController for REST API | Se expusieron endpoints REST para la lectura de mediciones, incluyendo recursos, ensambladores y controlador, habilitando el consumo de telemetría de salud y soporte a las historias de monitoreo y seguimiento (US45–US47).                                | 23-11-2025          |
| NovaPeruTech-BackEnd  | feature/health   | [HASH]    | feat(health): add aggregates for sign vitales and allergies                                                              | Se modelaron agregados de dominio para signos vitales y alergias, base del historial clínico estructurado del residente y del servicio de comparación de salud, fortaleciendo los requisitos de historial médico y seguimiento de estado (US08, US13, US46). | 01-12-2025          |
| NovaPeruTech-BackEnd  | feature/nursing  | [HASH]    | feat(nursing): implement resources and transforms                                                                        | Se añadieron recursos y transformadores para residentes, familiares y asignación de habitaciones, integrando la lógica de negocio del módulo Nursing con las vistas del administrador y resolviendo inconsistencias identificadas en QA.                     | 04-12-2025          |

#### 5.2.4.5. Execution Evidence for Sprint Review

Durante el Sprint 4, el equipo enfocó sus esfuerzos en la ampliación y documentación de los servicios del Backend, incorporando endpoints para la gestión de pagos y suscripciones, así como ajustes en los recursos de usuarios. Se añadieron y refinaron las operaciones de *Payments*, *Subscriptions* y *Users* en la API REST, asegurando que cada endpoint cuente con ejemplos de request/response claros y consistentes en Swagger UI. A continuación se presentan capturas de los principales grupos de endpoints añadidos y actualizados.

##### Video de demostración:

**URL YouTube:** []  
**Duración:** [00:00:00]

A continuación se presentan las capturas del Swagger UI donde se evidencian los endpoints implementados y ajustados durante el Sprint 4 para la gestión de **pagos**, **suscripciones** y **usuarios**. Estos servicios forman parte del flujo de suscripción y cobranza de la plataforma.

**Endpoints de Payments:**

![swagger-payments-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-IV/execution-evidence-for-sprint-review/swagger-payments-endpoints.jpg)

En esta sección se documenta el endpoint `GET /api/v1/payments/{paymentId}`, utilizado para obtener el detalle de un pago específico por su identificador. Él response devuelve un objeto `PaymentResource` con información como monto, moneda, estado y fecha de procesamiento, lo que permite trazar y auditar transacciones individuales.

**Endpoints de Subscriptions:**

![swagger-subscriptions-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-IV/execution-evidence-for-sprint-review/swagger-subscriptions-endpoints.jpg)

Aquí se muestran los endpoints para gestionar los pagos asociados a una suscripción: `GET /api/v1/subscriptions/{subscriptionId}/payments` para listar todos los pagos de una suscripción, y `POST /api/v1/subscriptions/{subscriptionId}/payments` para procesar un nuevo pago. Ambos endpoints incluyen parámetros de ruta para el `subscriptionId` y devuelven respuestas tipadas que permiten al frontend mostrar el historial de pagos o registrar nuevos cobros de forma consistente.

**Endpoints de Users actualizados:**

![swagger-user1-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-IV/execution-evidence-for-sprint-review/swagger-user1-endpoints.jpg)

Esta captura resume los endpoints disponibles para la gestión de usuarios y sus suscripciones. Entre ellos se encuentran: `GET /api/v1/users` (listado de usuarios), `GET /api/v1/users/{userId}` (detalle de usuario), así como operaciones sobre suscripciones: `GET /api/v1/users/{userId}/subscriptions` para obtener todas las suscripciones de un usuario, `POST /api/v1/users/{userId}/subscriptions` para crear una nueva, `PUT /api/v1/users/{userId}/subscriptions/{subscriptionId}` para actualizarla, `POST /api/v1/users/{userId}/subscriptions/{subscriptionId}/cancel` para cancelarla y `GET /api/v1/users/{userId}/subscriptions/active` para recuperar la suscripción activa. Estos endpoints consolidan el ciclo de vida de la suscripción desde la perspectiva del usuario final.

#### 5.2.4.6. Services Documentation Evidence for Sprint Review
#### 5.2.4.6. Services Documentation Evidence for Sprint Review

Durante el Sprint 4, el foco en Servicios se centró en extender y documentar los endpoints relacionados con el ciclo de facturación de VEYRA: pagos individuales, suscripciones y la gestión de suscripciones por usuario. Se actualizaron las definiciones OpenAPI en Swagger, asegurando descripciones consistentes, ejemplos de request/response y mensajes de error claros para los recursos **Payments**, **Subscriptions** y **Users**. De esta forma, el frontend puede consultar y administrar el estado de las suscripciones y sus pagos de manera confiable.

La siguiente tabla resume los principales endpoints documentados o ajustados durante este Sprint, detallando las acciones soportadas, el verbo HTTP, la sintaxis de llamada y ejemplos de request/response utilizando la documentación generada por Swagger UI.

| Endpoint                                                     | HTTP Verb | Acción / Funcionalidad                              | Parámetros y Ejemplo de Request                                                                                          | Ejemplo y Explicación de Response                                                                                                                                                                                                      | Link a Documentación                                                                               |
|--------------------------------------------------------------|-----------|-----------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| /api/v1/payments/{paymentId}                                 | GET       | Obtener el detalle de un pago por su identificador. | Path param:<br>`paymentId: 120`<br>Ejemplo:<br>`GET /api/v1/payments/120`                                                | `200 OK`<br>`{ "id": 120, "amount": 49.90, "currency": "USD", "status": "COMPLETED", "processedAt": "2025-11-10T09:30:00Z" }`<br>Devuelve la información detallada del pago, permitiendo trazar y auditar una transacción específica.  | [Swagger – Payments](https://veyrav01.azurewebsites.net/swagger-ui/index.html#/Payments)           |
| /api/v1/subscriptions/{subscriptionId}/payments              | GET       | Listar todos los pagos asociados a una suscripción. | Path param:<br>`subscriptionId: 10`<br>Ejemplo:<br>`GET /api/v1/subscriptions/10/payments`                               | `200 OK`<br>`[{ "id": 120, "amount": 49.90, "status": "COMPLETED" }, ...]`<br>Devuelve el historial de pagos de una suscripción, útil para mostrar en el panel de administración o para conciliación.                                  | [Swagger – Subscriptions](https://veyrav01.azurewebsites.net/swagger-ui/index.html#/Subscriptions) |
| /api/v1/subscriptions/{subscriptionId}/payments              | POST      | Procesar un nuevo pago para una suscripción.        | Path param:<br>`subscriptionId: 10`<br>Body (JSON):<br>`{ "amount": 49.90, "currency": "USD", "paymentMethod": "CARD" }` | `201 Created`<br>`{ "id": 121, "amount": 49.90, "status": "PENDING", "subscriptionId": 10 }`<br>Registra un nuevo pago y devuelve el recurso creado, que luego será actualizado cuando el procesador de pagos confirme la transacción. | [Swagger – Subscriptions](https://veyrav01.azurewebsites.net/swagger-ui/index.html#/Subscriptions) |
| /api/v1/users/{userId}/subscriptions                         | GET       | Obtener todas las suscripciones de un usuario.      | Path param:<br>`userId: 5`<br>Ejemplo:<br>`GET /api/v1/users/5/subscriptions`                                            | `200 OK`<br>`[{ "id": 10, "plan": "STANDARD", "status": "ACTIVE" }, ...]`<br>Permite conocer el historial de suscripciones de un usuario y su estado actual.                                                                           | [Swagger – Users](https://veyrav01.azurewebsites.net/swagger-ui/index.html#/Users)                 |
| /api/v1/users/{userId}/subscriptions/{subscriptionId}        | PUT       | Actualizar los datos de una suscripción de usuario. | Path params:<br>`userId: 5, subscriptionId: 10`<br>Body (JSON):<br>`{ "plan": "PREMIUM", "status": "ACTIVE" }`           | `200 OK`<br>`{ "id": 10, "plan": "PREMIUM", "status": "ACTIVE" }`<br>Devuelve la suscripción actualizada, reflejando cambios de plan o estado.                                                                                         | [Swagger – Users](https://veyrav01.azurewebsites.net/swagger-ui/index.html#/Users)                 |
| /api/v1/users/{userId}/subscriptions/{subscriptionId}/cancel | POST      | Cancelar una suscripción de un usuario.             | Path params:<br>`userId: 5, subscriptionId: 10`<br>Ejemplo:<br>`POST /api/v1/users/5/subscriptions/10/cancel`            | `200 OK`<br>`{ "id": 10, "plan": "STANDARD", "status": "CANCELLED" }`<br>Cambia el estado de la suscripción a CANCELLED y la excluye de futuros ciclos de cobro.                                                                       | [Swagger – Users](https://veyrav01.azurewebsites.net/swagger-ui/index.html#/Users)                 |
| /api/v1/users/{userId}/subscriptions/active                  | GET       | Obtener la suscripción activa de un usuario.        | Path param:<br>`userId: 5`<br>Ejemplo:<br>`GET /api/v1/users/5/subscriptions/active`                                     | `200 OK`<br>`{ "id": 10, "plan": "STANDARD", "status": "ACTIVE" }`<br>Devuelve la suscripción que actualmente se encuentra activa para el usuario.                                                                                     | [Swagger – Users](https://veyrav01.azurewebsites.net/swagger-ui/index.html#/Users)                 |

Adicionalmente, se ajustaron descripciones, códigos de respuesta y ejemplos en los recursos relacionados, garantizando que la documentación de la API de facturación sea consistente y pueda ser consumida fácilmente por otros equipos (frontend, integraciones externas, QA).

**Repositorio Web Services (Backend):** https://github.com/NovaPeru-Tech/NovaPeruTech-Backend

Los cambios de documentación de este Sprint se agrupan en commits etiquetados como `feat(payments-docs)` y `feat(subscriptions-docs)`, donde se actualizó el archivo OpenAPI y se sincronizaron los modelos de respuesta con las entidades de dominio (Payments, Subscriptions y Users).

**Capturas de interacción con la documentación (Swagger UI):**

*Swagger UI – Endpoints de Payments:*

![swagger-payments-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-IV/execution-evidence-for-sprint-review/swagger-payments-endpoints.jpg)

*Swagger UI – Endpoints de Subscriptions:*

![swagger-subscriptions-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-IV/execution-evidence-for-sprint-review/swagger-subscriptions-endpoints.jpg)

*Swagger UI – Endpoints de Users y suscripciones de usuario:*

![swagger-user1-endpoints](../assets/img/chapter-V/sprints/sprint-backlog-IV/execution-evidence-for-sprint-review/swagger-user1-endpoints.jpg)

#### 5.2.4.7. Software Deployment Evidence for Sprint Review

En el Sprint 4, las actividades de Deployment se centraron en mantener estable el entorno productivo de VEYRA mientras se aplicaban correcciones de errores y mejoras de usabilidad. Se realizaron despliegues incrementales tanto del Frontend (Vercel) como del Backend (Azure App Service), verificando que las nuevas versiones solucionaran los problemas reportados sin introducir regresiones.

Las principales acciones de Deployment realizadas fueron:

- Actualización del Frontend Angular en Vercel con textos unificados al español y manejo de errores mejorado.
- Redeployment del Backend en Azure App Service luego de corregir mensajes de error y validar los endpoints críticos.
- Verificación de conectividad entre Frontend y Backend en el entorno productivo, confirmando que las llamadas a los servicios ya no generan *Fetch Error*.
- Pruebas de smoke (login, navegación, CRUD básico de residentes y habitaciones) después de cada despliegue.

**URLs de despliegue utilizados en el Sprint Review:**

- **Frontend Web Application (Producción):**  
  [URL Frontend en Vercel Sprint 4]
- **Backend API (Producción – Azure App Service):**  
  https://veyrav01.azurewebsites.net/swagger-ui/index.html#/

**Capturas del proceso de despliegue:**

*Haga clic en el botón para iniciar la configuración del nuevo proyecto:*

![Historial de despliegues Vercel Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/software-deployment-evidence-for-sprint-review/Captura%20de%20pantalla%201.png)

*En la interfaz de configuración, seleccione la opción para conectar o vincular su repositorio de GitHub. Será dirigido a la autenticación de GitHub. Una vez autorizado, deberá seleccionar el repositorio específico que contiene el código fuente del frontend.*

![Azure App Service Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/software-deployment-evidence-for-sprint-review/Captura%20de%20pantalla%202.png)

*Tómese un momento para verificar el resumen de la configuración en la pantalla de revisión final para confirmar que los datos de GitHub y los parámetros sean correctos.*

![Frontend conectado al Backend sin errores Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/software-deployment-evidence-for-sprint-review/Captura%20de%20pantalla%203.png)

*La plataforma comenzará el proceso de construcción y despliegue. Una vez que el proceso se complete exitosamente, la aplicación de frontend estará desplegada y lista para ser accesible a través de la URL proporcionada.*

![Frontend conectado al Backend sin errores Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/software-deployment-evidence-for-sprint-review/Captura%20de%20pantalla%204.png)

*Al ingresar a esta URL completa, obtendremos la vista de la documentación de Swagger, lo que nos permite verificar que el backend está activo, funcional y listo para recibir peticiones a sus endpoints.*

![Frontend conectado al Backend sin errores Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/software-deployment-evidence-for-sprint-review/Captura%20de%20pantalla%205.png)

#### 5.2.4.8. Team Collaboration Insights during Sprint

Durante el Sprint 4, el equipo adoptó explícitamente una estrategia de *Bug Fixing & Polishing Sprint*, deteniendo el desarrollo de nuevas funcionalidades complejas (*code freeze*) para concentrarse en estabilidad, correcciones y pulido visual. Esto se reflejó en la colaboración: los commits se orientaron a refactors pequeños, ajustes de UI, manejo de errores y mejoras en documentación.

A nivel de coordinación, las reuniones de *Daily Scrum* se utilizaron para priorizar los bugs abiertos en Jira, revisar el estado de los errores de severidad 3 y 4, y decidir qué issues debían resolverse antes del corte de Sprint. Además, se reforzó el rol de *Quality Keeper* para revisar *pull requests* críticos y asegurar que las correcciones no introdujeran regresiones.

**Evidencia de colaboración en GitHub:**

- Commits de corrección de errores y mejoras de UI distribuidos entre todos los miembros del equipo.
- Pull requests revisados por al menos un compañero antes de integración a la rama principal.
- Actividad concentrada en las ramas principales de Frontend y Backend durante la primera semana de diciembre.

*GitHub Insights – Commits por día durante el Sprint 4:*

![GitHub commits Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/team-collaboration-insights-during-sprint/imagecommitbackeed.png)

![GitHub commits Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/team-collaboration-insights-during-sprint/imagecommitfronted.png)

*GitHub Network Graph – Flujo de ramas y fusiones durante el Sprint 4:*

![GitHub network Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/team-collaboration-insights-during-sprint/networkgrafich-1.png)

![GitHub network Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/team-collaboration-insights-during-sprint/networkgrafich-2.png)

![GitHub network Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/team-collaboration-insights-during-sprint/networkgrafich-3.png)

![GitHub network Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/team-collaboration-insights-during-sprint/networkgrafich-4.png)

![GitHub network Sprint 4](../assets/img/chapter-V/sprints/sprint-backlog-IV/team-collaboration-insights-during-sprint/networkgrafich-5.png)

En conjunto, estas evidencias muestran que todos los integrantes participaron en la estabilización de VEYRA y que la colaboración se orientó a dejar una versión consistente y lista para producción al cierre del Sprint 4.

## 5.3. Validation Interviews

### 5.3.1. Diseño de Entrevistas

Las entrevistas de validación con usuarios finales son esenciales para recopilar retroalimentación sobre la solución VEYRA. Estas entrevistas se diseñaron para validar si la aplicación cumple con los requisitos del usuario, identifica problemas de usabilidad y recopila sugerencias de mejora.

Se ejecutaron entrevistas con representantes de ambos segmentos objetivos del proyecto: **Administradores de casas de reposo** y **Familiares de adultos mayores**.

#### Preguntas para el Segmento: Administrador de Casa de Reposo

1. ¿Cuáles son los principales desafíos que enfrenta en la gestión de su casa de reposo?
2. ¿Cómo actualmente gestiona la información de los residentes y su medicación?
3. ¿Qué funcionalidades considera más importantes en una aplicación de gestión?
4. ¿Cuál es su experiencia previa con aplicaciones o sistemas de software?
5. ¿Qué tan fácil le resulta usar interfaces digitales?
6. ¿Cuáles serían los beneficios principales que busca obtener de VEYRA?
7. ¿Qué aspecto de la interfaz le parece más confuso o difícil de entender?
8. ¿Cuán probable es que recomendara esta aplicación a otros administradores?
9. ¿Qué mejoras sugiere para la próxima versión?

#### Preguntas para el Segmento: Familiar de Adulto Mayor

1. ¿Con qué frecuencia desearía recibir actualizaciones sobre el estado de su familiar?
2. ¿Qué información le gustaría tener acceso a través de la aplicación?
3. ¿Qué tan cómodo se siente usando aplicaciones móviles?
4. ¿Cuáles son sus preocupaciones principales respecto a la privacidad de los datos?
5. ¿Cómo válida actualmente si el cuidado recibido es de calidad?
6. ¿Qué funcionalidades considera esenciales en VEYRA?
7. ¿Cómo describiría su experiencia general con la interfaz de la aplicación?
8. ¿Qué aspectos de la aplicación le generan dudas o desconfianza?
9. ¿Qué cambios recomendaría antes de usar la aplicación regularmente?

### 5.3.2. Registro de Entrevistas

Las entrevistas de validación se llevaron a cabo con usuarios de ambos segmentos objetivos. A continuación se presenta el registro detallado de las entrevistas realizadas, incluyendo información del entrevistado, capturas de video y análisis de respuestas.

#### Entrevista 1 - Administrador de Casa de Reposo (Segmento 1)

|                          |                                            |
|--------------------------|--------------------------------------------|
| **Nombre Completo**      | María Elena Gutiérrez Rodríguez            |
| **Edad**                 | 52 años                                    |
| **Distrito**             | San Isidro, Lima                           |
| **Ocupación**            | Administradora de Casa de Reposo           |
| **Fecha de Entrevista**  | 15/11/2025                                 |
| **Duración**             | 22 minutos                                 |
| **URL Microsoft Stream** | [Incluir URL del video de la entrevista 1] |
| **Timing**               | 00:00 - 22:00                              |

**Screenshot del video:**

![Interview Administrator 1](../images/interview-administrator-1.jpg)

**Resumen de Respuestas:**

María Elena expresó que los principales desafíos en su gestión diaria incluyen el control de medicamentos de múltiples residentes, la coordinación con familiares y el mantenimiento de registros organizados. Actualmente, utiliza un sistema de hojas de cálculo manuales, lo cual requiere mucho tiempo y es propenso a errores. Considera que la aplicación VEYRA sería tremendamente beneficiosa para automatizar estos procesos.

Tiene experiencia intermedia con software empresarial. Le resultó intuitiva la navegación principal de VEYRA, aunque sugiere mejorar la visualización de la sección de medicamentos con más iconografía y colores. Valora especialmente la funcionalidad de registro de medicación y las notificaciones a familiares.

Calificó la aplicación como "muy prometedora" e indicó una alta probabilidad de adoptarla para su institución. Recomendó agregar reportes mensuales en PDF descargables y mejorar la compatibilidad móvil para acceso desde dispositivos personales.

---

#### Entrevista 2 - Administrador de Casa de Reposo (Segmento 1)

|                          |                                            |
|--------------------------|--------------------------------------------|
| **Nombre Completo**      | Carlos Eduardo Morales Sánchez             |
| **Edad**                 | 48 años                                    |
| **Distrito**             | Miraflores, Lima                           |
| **Ocupación**            | Gerente de Operaciones - Casa de Reposo    |
| **Fecha de Entrevista**  | 16/11/2025                                 |
| **Duración**             | 18 minutos                                 |
| **URL Microsoft Stream** | [Incluir URL del video de la entrevista 2] |
| **Timing**               | 22:00 - 40:00                              |

**Screenshot del video:**

![Interview Administrator 2](../images/interview-administrator-2.jpg)

**Resumen de Respuestas:**

Carlos indicó que el mayor desafío es mantener comunicación efectiva entre el personal y los familiares. Resaltó la importancia de tener un registro claro de cambios en la medicación y el estado de salud de los residentes. Tiene buena experiencia con tecnología empresarial.

La interfaz de VEYRA le pareció clara y bien organizada. Sin embargo, señaló la necesidad de mejorar el sistema de reportes y agregar más opciones de filtrado en la sección de residentes. Le gustó especialmente la funcionalidad de historial de medicamentos.

Sugiere integrar un módulo de facturación en versiones futuras y mejorar la documentación de uso. Indicó que implementaría VEYRA en su institución si se realizan estos ajustes.

---

#### Entrevista 3 - Familiar de Adulto Mayor (Segmento 2)

|                          |                                            |
|--------------------------|--------------------------------------------|
| **Nombre Completo**      | Ana Rosa Figueroa Díaz                     |
| **Edad**                 | 38 años                                    |
| **Distrito**             | Surco, Lima                                |
| **Ocupación**            | Profesional / Familiar de Residente        |
| **Fecha de Entrevista**  | 17/11/2025                                 |
| **Duración**             | 19 minutos                                 |
| **URL Microsoft Stream** | [Incluir URL del video de la entrevista 3] |
| **Timing**               | 40:00 - 59:00                              |

**Screenshot del video:**

![Interview Familiar 1](../images/interview-familiar-1.jpg)

**Resumen de Respuestas:**

Ana Rosa expresó su preocupación principal sobre la calidad del cuidado recibido por su madre en la casa de reposo. Desearía tener acceso a información diaria sobre el estado de salud, medicamentos administrados y actividades realizadas.

Tiene experiencia básica con aplicaciones móviles. La interfaz de VEYRA le pareció amigable, aunque expresó preocupación sobre la privacidad de los datos. Valora especialmente la funcionalidad de notificaciones y el acceso al historial de medicamentos.

Sugiere mejorar la sección de reportes de salud y agregar gráficos visuales sobre el progreso de la medicación. Indicó que usaría VEYRA regularmente para monitorear a su madre.

---

#### Entrevista 4 - Familiar de Adulto Mayor (Segmento 2)

|                          |                                            |
|--------------------------|--------------------------------------------|
| **Nombre Completo**      | Roberto Javier Fernández Acosta            |
| **Edad**                 | 55 años                                    |
| **Distrito**             | La Molina, Lima                            |
| **Ocupación**            | Ingeniero / Familiar de Residente          |
| **Fecha de Entrevista**  | 18/11/2025                                 |
| **Duración**             | 20 minutos                                 |
| **URL Microsoft Stream** | [Incluir URL del video de la entrevista 4] |
| **Timing**               | 59:00 - 79:00                              |

**Screenshot del video:**

![Interview Familiar 2](../images/interview-familiar-2.jpg)

**Resumen de Respuestas:**

Roberto tiene amplia experiencia con aplicaciones web y móviles. Expresó que su preocupación principal es garantizar que su padre reciba la medicación correcta en los horarios adecuados. Valora la transparencia en la comunicación con la casa de reposo.

La interfaz de VEYRA le pareció intuitiva. Como ingeniero, apreciò la arquitectura técnica de la aplicación y sugirió mejoras en la seguridad y cifrado de datos. Le gustaría poder generar reportes personalizados y configurar alertas para cambios en la medicación.

Indicó alta probabilidad de usar VEYRA y recomendó mejorar la documentación técnica y agregar opciones de exportación de datos en múltiples formatos.

### 5.3.3. Evaluaciones según heurísticas.

## UX Heuristics & Principles Evaluation
### Usability – Inclusive Design – Information Architecture

**CARRERA:** Ingeniería de Software

**CURSO:** Desarrollo de Aplicaciones Open Source

**NRC:** 7338

**PROFESOR:** Ángel Augusto Velasquez Nuñez

**AUDITOR:** El equipo de Veyra

**CLIENTE(S):** Administradores de Casas de Reposo y Familiares

**TAREAS A EVALUAR:**

El alcance de esta evaluación incluye la revisión de las siguientes tareas:

- Revisión de la consistencia de lenguaje (Inglés/Español)
- Validación de los flujos de registro y acceso
- Comprobar si el diseño transmite confianza y profesionalismo
- Validar si la información presentada resulta atractiva y relevante
- Evaluar la gestión de errores en vistas de tabla
- Revisión de la usabilidad de formularios de inventario
- Evaluación de la carga de información crítica (habitaciones)
- Revisión de la claridad de los botones de acción (CTAs)

**ESCALA DE SEVERIDAD:**

Los errores serán puntuados tomando en cuenta la siguiente escala de severidad:

| Nivel | Descripción                                                                                                                                                                                          |
|-------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1     | Problema superficial: puede ser fácilmente superado por el usuario ó ocurre con muy poca frecuencia. No necesita ser arreglado a no ser que exista disponibilidad de tiempo.                         |
| 2     | Problema menor: puede ocurrir un poco más frecuentemente o es un poco más difícil de superar para el usuario. Se le debería asignar una prioridad baja para resolverlo de cara al siguiente release. |
| 3     | Problema mayor: ocurre frecuentemente o los usuarios no son capaces de resolverlos. Es importante que sean corregidos y se les debe asignar una prioridad alta.                                      |
| 4     | Problema muy grave: un error de gran impacto que impide al usuario continuar con el uso de la herramienta. Es imperativo que sea corregido antes del lanzamiento.                                    |

**TABLA RESUMEN:**

| #  | Problema                                                                                                                                                            | Escala de severidad | Heurística/Principio violada(o)                                    |
|----|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|--------------------------------------------------------------------|
| 1  | Los mensajes de confirmación de carga no siempre aparecen, dejando al usuario con duda sobre si la acción se completó.                                              | 2                   | Usability: Visibility of system status                             |
| 2  | Jerga técnica en la sección de reportes ("Fetch entities", "Null Pointer") confunde a los usuarios administradores sin perfil técnico.                              | 2                   | Usability: Match between system and the real world                 |
| 3  | No hay opción de deshacer cambios inmediatamente después de registrar un medicamento erróneo en el inventario.                                                      | 3                   | Usability: User control and freedom                                |
| 4  | Iconografía inconsistente entre la sección de "Residentes" y "Personal" para acciones similares (editar/borrar).                                                    | 1                   | Usability: Consistency and standards                               |
| 5  | No hay una ventana de confirmación (modal) al presionar el botón de eliminar un perfil de residente, lo que puede causar pérdida de datos accidental.               | 3                   | Usability: Error prevention                                        |
| 6  | El menú desplegable de "Tipos de Medicamentos" tiene muchas opciones sin agrupar, obligando al usuario a recordar nombres exactos en lugar de reconocer categorías. | 2                   | Usability: Recognition rather than recall                          |
| 7  | No existen atajos de teclado para acciones frecuentes como "Guardar" o "Nuevo Registro", reduciendo la eficiencia para usuarios expertos.                           | 2                   | Usability: Flexibility and efficiency of use                       |
| 8  | Demasiada información y columnas irrelevantes en la vista principal del dashboard dificultan la lectura rápida de métricas clave.                                   | 2                   | Usability: Aesthetic and minimalist design                         |
| 9  | Falta documentación en pantalla (tooltips) para explicar campos complejos como "Dosificación por intervalo".                                                        | 3                   | Usability: Help and documentation                                  |
| 10 | Los mensajes de error en el login (ej: "Error 401") no sugieren si el problema fue la contraseña o el usuario, impidiendo la recuperación rápida.                   | 2                   | Usability: Help users recognize, diagnose, and recover from errors |

#### Descripción Detallada de Problemas Críticos

**Problema 1: Confusión de rol en formulario de registro y mezcla de idiomas.**

**Severidad: 3**

**Heurística/Principio violada(o):** Usability: Visibility of system status y Consistency and standards.

**Problema:** El contexto de la navegación lateral indica "Staff", pero el botón de acción dice "Register Resident" (Registrar Residente), confundiendo al usuario sobre qué rol está registrando. Además, el formulario utiliza una mezcla de inglés y español para las etiquetas de los campos (`dni*`, `birthdate*`, `phone number*`).

![image of problem 1](../assets/img/chapter-V/evaluations-according-to-heuristics/problem1.png)

**Recomendación:** Corregir la consistencia del sistema. Si la sección es "Staff", el botón debe ser "Register Staff" o "Registrar Personal". Estandarizar el idioma de todos los campos a español para mantener la coherencia lingüística en la interfaz y mejorar la experiencia del usuario.

---

**Problema 2: Error de carga de datos críticos de Habitaciones.**

**Severidad: 4**

**Heurística/Principio violada(o):** Usability: Help users recognize, diagnose, and recover from errors.

**Problema:** La vista de "Rooms" (Habitaciones) muestra un error técnico grave: "Resource not found: Failed to fetch entities", que impide la carga de información fundamental. El mensaje técnico no es útil para el usuario, no explica qué sucedió y no ofrece una solución. Adicionalmente, los encabezados de la tabla presentan inconsistencia lingüística.

![image of problem 2](../assets/img/chapter-V/evaluations-according-to-heuristics/problem2.png)

**Recomendación:** Reemplazar el error técnico por un mensaje amigable y orientador, como "No se pudieron cargar las habitaciones. Por favor, intente recargar la página o contacte a soporte." Asegurar que las columnas de la tabla tengan una nomenclatura consistente (ej. "Número", "Tipo", "Estado").

---

**Problema 3: Botón de acción con etiqueta de código en inventario.**

**Severidad: 3**

**Heurística/Principio violada(o):** Usability: Match between system and the real world y Consistency and standards.

**Problema:** El botón de acción principal al final del formulario de inventario muestra la etiqueta de código "medication.add". Este error impide la usabilidad, rompe la confianza y es una inconsistencia grave. También persiste la mezcla de idiomas en los botones, como "Cancel".

![image of problem 3](../assets/img/chapter-V/evaluations-according-to-heuristics/problem3.png)

**Recomendación:** Corregir la etiqueta del botón de acción principal a un texto claro y legible, como "Añadir Medicamento" o "Guardar". Estandarizar el idioma de todos los botones de acción a español (ej. "Cancelar").

---

**Problema 4: Llamadas a la acción (CTAs) con etiquetas de desarrollo en Login.**

**Severidad: 4**

**Heurística/Principio violada(o):** Usability: Match between system and the real world y Aesthetic and minimalist design.

**Problema:** La página de inicio de sesión muestra etiquetas de código como `auth.already-have-account`, `-> auth.sign-in` y `AUTH.OR-CREATE-ACCOUNT` en lugar del texto destinado al usuario. Esto es un error de alto impacto que impide la tarea fundamental de acceso al sistema y afecta la credibilidad.

![image of problem 4](../assets/img/chapter-V/evaluations-according-to-heuristics/problem4.png)

**Recomendación:** Corregir las etiquetas de localización/texto a frases amigables y claras, como "¿Ya tienes una cuenta?", el botón debe decir "Iniciar Sesión", y el separador "O crear una cuenta".

---

**Problema 5: "0" como valor inicial y mezcla de idiomas en Inventario.**

**Severidad: 2**

**Heurística/Principio violada(o):** Usability: Error Prevention y Consistency and standards.

**Problema:** El uso del valor "0" como valor inicial en campos de entrada numérica (`Quantity*`, `Unit Cost*`, etc.) puede confundir al usuario, quien podría no borrarlo o pensar que es un placeholder. La inconsistencia en los títulos de las secciones (`Stock Status`, `Value`) en inglés es un problema constante.

![image of problem 5](../assets/img/chapter-V/evaluations-according-to-heuristics/problem5.png)

**Recomendación:** Asegurarse de que los campos de entrada de datos estén vacíos o utilicen un placeholder de texto para evitar confusiones. Estandarizar la nomenclatura de las secciones a español (ej. "Estado de Stock" y "Valoración").

---

## 5.4. Video About-the-Product
El video "About the Product" presenta de manera clara y atractiva la propuesta de valor de VEYRA, los problemas que resuelve y cómo funciona la solución para ambos segmentos objetivos.

#### Información General del Video

|                          |                                                        |
|--------------------------|--------------------------------------------------------|
| **Título del Video**     | VEYRA: Comprehensive Care Management for Nursing Homes |
| **Duración**             | 2 minutos 0 segundos                                   |
| **Fecha de Grabación**   | 19/11/2025                                             |
| **URL YouTube**          | https://youtu.be/DCPqVW0C2Po                           |
| **URL Microsoft Stream** | https://shorturl.at/W0vMy                              |

**Screenshot del video:**

![About the Product Video](../assets/img/chapter-V/about-the-product/AboutTheProduct-image.png)

#### Contenido del Video

El video está estructurado en las siguientes secciones:

1. **Introducción (0:00 - 0:30):** Presentación del problema - Complejidad en la gestión de casas de reposo y preocupaciones de familiares sobre el cuidado de sus seres queridos.
2. **Propuesta de Solución (0:30 - 1:45):** Presentación de VEYRA como la solución integral para la gestión de residentes, medicamentos, empleados y comunicación con familiares.
3. **Funcionalidades Principales (1:45 - 3:15):** Demostración de las características clave:
   - Gestión de residentes y datos de salud
   - Control de medicamentos y recordatorios
   - Portal para familiares
   - Generación de reportes
4. **Beneficios (3:15 - 4:00):** Énfasis en beneficios para ambos segmentos - Eficiencia operacional, transparencia y tranquilidad para familiares.
5. **Llamada a la Acción (4:00 - 4:32):** Invitación a visitar la Landing Page y conocer más sobre VEYRA.

#### Inscripción en Landing Page

El video "About the Product" está embebido en la Landing Page en la sección de "Acerca del Producto", permitiendo que visitantes del sitio vean una introducción visual de VEYRA antes de registrarse o solicitar más información.

**URL de la Landing Page donde está el video:** https://novaperu-tech.github.io/NovaPeru-Tech-LandingPage

---

## Conclusiones

### Conclusiones y recomendaciones

Al finalizar el ciclo de desarrollo y validación de la solución **Veyra**, el equipo ha llegado a las siguientes conclusiones, contrastando los resultados obtenidos con los planteamientos iniciales del proceso Lean UX:

**1. Validación de Problem Statements y Supuestos (Assumptions):**

Inicialmente, se estableció como *Problem Statement* que los administradores de casas de reposo sufrían de ineficiencia operativa debido a la gestión manual. Tras las pruebas de validación, se confirmó que la digitalización de expedientes y el control de inventarios reducen significativamente la carga administrativa, validando nuestra suposición de que el mercado objetivo está dispuesto a migrar a soluciones digitales si estas son intuitivas. Sin embargo, el supuesto sobre la baja alfabetización digital de los familiares fue desafiado; las entrevistas demostraron que este segmento demanda una alta interactividad y notificaciones en tiempo real, lo que nos obligó a priorizar la experiencia móvil.

**2. Contrastación de Hipótesis (Hypothesis Statements):**

- **Hipótesis de Valor para Administradores:** Se planteó que "Si proporcionamos un dashboard centralizado, los administradores podrán reducir errores de medicación". Los resultados del Sprint 3 y las pruebas de usabilidad confirmaron esta hipótesis, ya que las alertas de inventario y horarios fueron las funcionalidades mejor valoradas.
- **Hipótesis de Valor para Familiares:** Creíamos que "El acceso a un reporte semanal aumentaría la confianza". La validación indicó que el reporte semanal es insuficiente; los usuarios requieren actualizaciones diarias o en tiempo real (IoT), lo que valida la necesidad de integrar las bandas de monitoreo como característica *core* y no opcional.

**3. Cumplimiento de Criterios de Éxito:**

Se logró desplegar la solución en un entorno productivo (Azure y Vercel) cumpliendo con los criterios de aceptación técnicos. Sin embargo, las métricas de éxito relacionadas con la "Autonomía del usuario" mostraron que ciertas funciones avanzadas (como la configuración de alertas IoT) requieren una curva de aprendizaje mayor a la esperada, sugiriendo la necesidad de mejorar el *onboarding*.

**Recomendaciones (Roadmap):**

Basados en los hallazgos y limitaciones actuales, se recomienda para las siguientes etapas del proyecto:

- **Implementación de Facturación Electrónica:** Durante las entrevistas, el 60% de los administradores solicitó la integración con SUNAT para emitir comprobantes directamente desde la plataforma.
- **Desarrollo de Aplicación Nativa Móvil:** Dado el alto uso de dispositivos móviles por parte de los familiares, se recomienda migrar el módulo de familiares a una app nativa (React Native/Flutter) para mejorar la gestión de notificaciones push.
- **Refinamiento del Módulo IoT:** Ampliar la compatibilidad de las bandas de monitoreo para incluir dispositivos de terceros genéricos, reduciendo la barrera de entrada de hardware para las casas de reposo.

## Video About-the-Team

El video "About the Team" presenta al equipo de desarrollo de NovaPeru-Tech, destacando las habilidades, roles y contribuciones de cada miembro en el proyecto VEYRA. Este video complementa la documentación del proyecto mostrando el lado humano detrás del desarrollo de la solución.

#### Información General del Video

|                          |                                           |
|--------------------------|-------------------------------------------|
| **Título del Video**     | NovaPeru-Tech: Meet the Team Behind VEYRA |
| **Duración**             | 8 minutos 59 segundos                     |
| **Fecha de Grabación**   | 19/11/2015                                |
| **URL YouTube**          | https://youtu.be/-tBBZ8lwbts              |
| **URL Microsoft Stream** | https://shorturl.at/jAp77                 |

**Screenshot del video:**

![Veyra About the Team](../assets/img/chapter-V/about-the-team/AboutTheTeam-image.png)

#### Contenido del Video

El video incluye presentaciones individuales de cada miembro del equipo, destacando:

- Nombre completo y rol en el proyecto
- Responsabilidades principales durante el desarrollo
- Tecnologías y herramientas utilizadas
- Aprendizajes clave del proyecto VEYRA
- Expectativas para futuras iteraciones

#### Miembros del Equipo

| Nombre Completo                  | Rol Principal                  | Contribuciones Destacadas                                   |
|----------------------------------|--------------------------------|-------------------------------------------------------------|
| Calvo Yalan, Renato Guillermo    | Backend and Frontend Developer | Implementación de servicios REST, arquitectura del Backend  |
| Armas Sánchez, Oscar Javier      | Backend and Frontend Developer | Configuración de Azure, Vercel y GitHub Pages               |
| Ramirez Carrasco, Ariana Lizeth  | Backend and Frontend Developer | Diseño de interfaces, implementación de componentes Angular |
| Roman Lopez, Miguel Angel Junior | Backend and Frontend Developer | Desarrollo de vistas, integración con API Backend           |
| Ruiz Madrid, Billy Jake          | Backend and Frontend Developer | Diseño de diagramas C4, Frontend, Backend y DataBase        |
| Quiroz Caceres, Adrian Alonso    | Backend and Frontend Developer | Implementación de arquitectura del Frontend                 |

---

## Bibliografía

- Adzic, G. (s.f.). *Impact Mapping*. Recuperado de https://www.impactmapping.org/
- Angular. (s.f.). *Angular Coding Style Guide*. Recuperado de https://angular.io/guide/styleguide
- Brandolini, A. (s.f.). *Introducing EventStorming*. Recuperado de https://www.eventstorming.com/
- CareerFoundry. (s.f.). *What are User Flows in User Experience (UX) Design?*. Recuperado de https://careerfoundry.com/en/blog/ux-design/what-are-user-flows/
- Cohn, M. (s.f.). *User Stories*. Mountain Goat Software. Recuperado de https://www.mountaingoatsoftware.com/agile/user-stories
- Cone, M. (s.f.). *The Markdown Guide*. Recuperado de https://www.markdownguide.org/
- Conventional Commits. (s.f.). *Conventional Commits*. Recuperado de https://www.conventionalcommits.org/
- Cucumber. (s.f.). *Gherkin Reference*. Recuperado de https://cucumber.io/docs/gherkin/reference/
- Driessen, V. (2010). *A successful Git branching model*. nvie.com. Recuperado de https://nvie.com/posts/a-successful-git-branching-model/
- DZone. (s.f.). *Acceptance Criteria in Scrum: Explanation, Examples, and Template*. Recuperado de https://dzone.com/articles/acceptance-criteria-in-software-explanation-exampl
- Evans, E. (2004). *Domain-Driven Design: Tackling Complexity in the Heart of Software*. Addison-Wesley Professional. Recuperado de https://www.oreilly.com/library/view/domain-driven-design-tackling/0321125215/
- Fowler, M. (2006). *Ubiquitous Language*. Recuperado de https://martinfowler.com/bliki/UbiquitousLanguage.html
- Google. (s.f.). *Google HTML/CSS Style Guide*. Recuperado de https://google.github.io/styleguide/htmlcssguide.html
- Google. (s.f.). *Google JavaScript Style Guide*. Recuperado de https://google.github.io/styleguide/jsguide.html
- Google. (s.f.). *Google TypeScript Style Guide*. Recuperado de https://google.github.io/styleguide/tsguide.html
- Google. (s.f.). *Google Java Style Guide*. Recuperado de https://google.github.io/styleguide/javaguide.html
- Gothelf, J., & Seiden, J. (2021). *Lean UX: Designing Great Products with Agile Teams* (3rd ed.). O'Reilly Media. Recuperado de https://www.oreilly.com/library/view/lean-ux-2nd/9781491953594/
- HubSpot. (s.f.). *Full List of Meta Tags, Why They Matter for SEO & How to Write Them*. Recuperado de https://blog.hubspot.com/marketing/meta-tags
- IBM Design. (s.f.). *Empathy Map*. Enterprise Design Thinking. Recuperado de https://www.ibm.com/design/thinking/page/toolkit/activity/empathy-map
- IBM Design. (s.f.). *As-is Scenario Map*. Enterprise Design Thinking. Recuperado de https://www.ibm.com/design/thinking/page/toolkit/activity/as-is-scenario-map
- Martin, R. C. (2017). *Clean Architecture: A Craftsman's Guide to Software Structure and Design*. Prentice Hall. Recuperado de https://www.oreilly.com/library/view/clean-architecture-a/9780134494272/
- Mendel, J. (s.f.). *Seriously, what's your (startup's) problem?*. Medium. Recuperado de https://medium.com/@jakemendel/seriously-whats-your-startup-s-problem-b3a884c54ab4
- Nielsen Norman Group. (1994). *10 Usability Heuristics for User Interface Design*. Recuperado de https://www.nngroup.com/articles/ten-usability-heuristics/
- Nielsen Norman Group. (2016). *The Four Dimensions of Tone of Voice*. Recuperado de https://www.nngroup.com/articles/tone-of-voice-dimensions/
- Preston-Werner, T. (s.f.). *Semantic Versioning 2.0.0*. Recuperado de https://semver.org/
- Progressa Lean. (s.f.). *5W+2H - Técnica de análisis de problemas*. Recuperado de https://www.progressalean.com/5w2h-tecnica-de-analisis-de-problemas/
- Refactoring.Guru. (s.f.). *Design Patterns*. Recuperado de https://refactoring.guru/es/design-patterns
- Spring. (s.f.). *Spring Boot Reference Documentation*. Recuperado de https://docs.spring.io/spring-boot/docs/current/reference/html/
- UXPressia. (s.f.). *User vs. Buyer Persona: Differences and free template*. Recuperado de https://uxpressia.com/blog/user-persona-vs-buyer-persona-difference
- Vernon, V. (2016). *Domain-Driven Design Distilled*. Addison-Wesley Professional. Recuperado de https://www.oreilly.com/library/view/domain-driven-design-distilled/9780134434964/
- Vernon, V. (s.f.). *Domain-Driven Design Reference*. Recuperado de https://domainlanguage.com/ddd/reference/

---

## Anexos

#### Anexo A: Enlaces de Despliegue y Repositorios

A continuación se listan los enlaces a los entornos de producción y los repositorios de código fuente utilizados durante todo el ciclo de vida del proyecto.

| Recurso                                    | URL                                                           |
|--------------------------------------------|---------------------------------------------------------------|
| **Landing Page (GitHub Pages)**            | https://novaperu-tech.github.io/NovaPeru-Tech-LandingPage/    |
| **Frontend Web Application (Vercel Prod)** | https://nova-peru-tech-frontend-v1-2w9r.vercel.app            |
| **Backend API Services (Azure Prod)**      | https://veyrav01.azurewebsites.net                            |
| **API Documentation (Swagger UI)**         | https://veyrav01.azurewebsites.net/swagger-ui/index.html      |
| **Repositorio Landing Page**               | https://github.com/NovaPeru-Tech/NovaPeru-Tech-LandingPage    |
| **Repositorio Frontend**                   | https://github.com/NovaPeru-Tech/NovaPeruTech-Frontend        |
| **Repositorio Backend**                    | https://github.com/NovaPeru-Tech/NovaPeruTech-Backend         |
| **Repositorio Project Report**             | https://github.com/NovaPeru-Tech/NovaPeru-Tech-Project-Report |

#### Anexo B: Videos de Exposiciones

Registro histórico de todas las exposiciones y videos promocionales presentados durante el ciclo académico 202520.

| Entrega / Hito                               | Plataforma       | URL                          |
|----------------------------------------------|------------------|------------------------------|
| **Video de Exposición TB1 (Sprint 1)**       | YouTube          | https://youtu.be/PONdZOKZofI |
| **Video de Exposición TB1 (Sprint 1)**       | Microsoft Stream | http://bit.ly/4h2grbc        |
| **Video de Exposición TP1 (Sprint 2)**       | YouTube          | https://youtu.be/_7f8dKl5zGs |
| **Video de Exposición TP1 (Sprint 2)**       | Microsoft Stream | https://shorturl.at/UfvsR    |
| **Video de Exposición TB2 (Sprint 3)**       | YouTube          | https://youtu.be/Ju2k-SoNUYo |
| **Video de Exposición TB2 (Sprint 3)**       | Microsoft Stream | [INSERTAR URL REAL AQUÍ]     |
| **Video de Exposición Final TF1 (Sprint 4)** | YouTube          | [INSERTAR URL REAL AQUÍ]     |
| **Video de Exposición Final TF1 (Sprint 4)** | Microsoft Stream | [INSERTAR URL REAL AQUÍ]     |

#### Anexo C: Videos del Proyecto

|                               | Plataforma       | URL                          |
|-------------------------------|------------------|------------------------------|
| **Video "About the Product"** | YouTube          | https://youtu.be/DCPqVW0C2Po |
| **Video "About the Product"** | Microsoft Stream | https://shorturl.at/W0vMy    |
| **Video "About the Team"**    | YouTube          | https://youtu.be/-tBBZ8lwbts |
| **Video "About the Team"**    | Microsoft Stream | https://shorturl.at/jAp77    |