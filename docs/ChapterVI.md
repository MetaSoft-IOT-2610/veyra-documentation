# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

En este punto del informe se describe las decisiones y los principios que ayudarán al equipo a garantizar la coherencia durante el desarrollo de la solución.

### 6.1.1. Software Development Environment Configuration

En este apartado se proporcionan los enlaces a las aplicaciones y productos de software creados durante el ciclo del proyecto utilizando los programas correspondientes.

Con ese fin, se organizará en las siguientes secciones:

- Project Management
- Requirements Management
- Product UX/UI Design
- Software Development
- Software Testing
- Software Documentation

Asimismo, se clasificarán los elementos de estas secciones como rutas de referencia (para software basado en modelos SaaS) o rutas de descarga (para productos que se ejecuten en las computadoras de los miembros del equipo) para cada uno de los productos de software.

**Project Management**

Esta disciplina se fundamenta en la administración de proyectos y busca principalmente la mejora de procesos y su entorno con el propósito de lograr los resultados esperados.

Durante el ciclo digital del proyecto, se llevará a cabo la implementación de un producto de software basado en el modelo SaaS, el cual funcionará a través de un navegador web; no obstante, no se desarrollará una versión de la aplicación móvil correspondiente.

**Requirements Management:**

Este proceso se enfoca en asegurar que una organización documente, verifique y satisfaga las necesidades y expectativas de sus clientes, así como las de las partes interesadas internas o externas.

**Jira Software:** Esta es una plataforma que facilita la gestión de historias de usuario, organizándolas en epopeyas y evaluando su importancia en el programa según su prioridad y puntos de historia. Se utiliza debido a su capacidad para permitir que cada miembro del equipo tenga una vista en tiempo real de los avances en cada proyecto, contribuyendo con diferentes secciones o ajustando el flujo del proyecto según sea necesario. Sitio web: https://www.atlassian.com/software/jira

![Jira Software](/assets/img/chapter-VI/jira-software.png)

**Product UX/UI Design**

Esta herramienta facilita la creación digital de modelos que se integran en la vida del consumidor. En este caso, estamos desarrollando un modelo de sitio web compatible tanto con computadoras como con dispositivos móviles.

Para lograrlo, utilizamos varias herramientas de diseño y colaboración, que incluyen:

**Uxpressia:** Uxpressia es una plataforma en línea especializada en el mapeo de la trayectoria del cliente. Nos ayuda a crear mapas de impacto y perfiles de usuario, como User Personas, Empathy Maps y Journey Maps. Sitio web: https://uxpressia.com/

![Uxpressia](/assets/img/chapter-VI/uxpressia.png)

**MIRO:** MIRO es una pizarra digital colaborativa en línea que se adapta a diversas actividades colaborativas, como investigación, ideación, creación de lluvias de ideas y mapas mentales. Es una herramienta versátil que facilita el trabajo en equipo. Sitio web: https://miro.com/

![MIRO](/assets/img/chapter-VI/miro.png)

**Figma:** Figma es una herramienta de prototipado web y un editor de gráficos vectoriales. A diferencia de otras herramientas, Figma se ejecuta en línea, lo que permite crear modelos que funcionan tanto en navegadores web como en navegadores móviles. Sitio web: https://www.figma.com/

![Figma](/assets/img/chapter-VI/figma.png)

**Lucid Chart:** Esta es una aplicación de diagramación en línea que permite a los usuarios colaborar y trabajar juntos en tiempo real para crear una variedad de diseños, incluidos diagramas UML, mapas mentales, prototipos de software y otros tipos de diagramas. Sitio web: https://www.lucidchart.com/

![Lucid Chart](/assets/img/chapter-VI/lucidchart.png)

**Overflow:** Overflow es una herramienta de diagramación que ofrece la posibilidad de colaborar en tiempo real. Utilizamos esta herramienta para crear diagramas de Userflows. Sitio web: https://overflow.io/

![Overflow](/assets/img/chapter-VI/overflow.png)

Estas herramientas nos ayudan a dar vida a nuestros diseños digitales y a garantizar que nuestros productos sean accesibles y atractivos en diferentes plataformas.

**Software Development:**

El desarrollo de software es una metodología aplicada en la creación de productos de software. Esta metodología se utiliza para establecer un proceso que guía el desarrollo del software, y cada uno de sus pasos describe un enfoque específico para las distintas actividades que ocurren durante el proceso.

Aquí te presentamos algunas herramientas y tecnologías clave que utilizaremos en el proyecto:

**GitHub:** GitHub es una plataforma de repositorio comunitario que se utiliza para almacenar y gestionar los avances de proyectos realizados por grupos de personas. Puedes acceder al repositorio del proyecto en https://github.com/

![GitHub](/assets/img/chapter-VI/GitHub.png)

**Visual Studio Code:** Visual Studio Code es un editor de código fuente ligero y potente desarrollado por Microsoft. Está orientado al desarrollo web y soporta múltiples lenguajes de programación mediante extensiones. En nuestro proyecto, se utiliza principalmente para el desarrollo del frontend con HTML, CSS y TypeScript, así como para la edición de archivos de configuración y scripts. Descarga: https://code.visualstudio.com/

![Visual Studio Code](/assets/img/chapter-VI/Visual-Studio-Code-IDE.png)

**WebStorm:** WebStorm es un entorno de desarrollo de JetBrains, una empresa especializada en software, orientado al desarrollo web en JavaScript. Esta herramienta proporciona facilidades para probar sitios web en navegadores como Google Chrome. En nuestro proyecto, utilizaremos WebStorm para trabajar con lenguajes como HTML, CSS y JavaScript. Descarga: https://www.jetbrains.com/webstorm/

![WebStorm](/assets/img/chapter-VI/WebStorm-IDE.png)

**IntelliJ IDEA:** IntelliJ IDEA es un entorno de desarrollo integrado (IDE) desarrollado por JetBrains, ampliamente utilizado para el desarrollo con Java, Kotlin y otros lenguajes de la JVM. En nuestro proyecto, se emplea para el desarrollo de los servicios backend y las APIs REST que soportan la lógica de negocio de la plataforma. Descarga: https://www.jetbrains.com/idea/

![IntelliJ IDEA](/assets/img/chapter-VI/IntelliJ-IDEA-IDE.png)

**PyCharm:** PyCharm es un IDE especializado en el desarrollo con Python, también desarrollado por JetBrains. Proporciona herramientas avanzadas de depuración, testing y análisis de código. En nuestro proyecto, se utiliza para el desarrollo de scripts de procesamiento de datos y la integración con los servicios de IoT. Descarga: https://www.jetbrains.com/pycharm/

![PyCharm](/assets/img/chapter-VI/PyCharm-IDE.png)

**CLion:** CLion es un IDE multiplataforma de JetBrains orientado al desarrollo en C y C++. En nuestro proyecto, se emplea para el desarrollo del firmware de los dispositivos IoT encargados de la captura y transmisión de los signos vitales de los residentes. Descarga: https://www.jetbrains.com/clion/

![CLion](/assets/img/chapter-VI/CLion-IDE.png)

**HTML:** HTML es un lenguaje de marcado que se utiliza en el desarrollo de sitios web para crear hipertextos y enlazar a otros documentos. Este lenguaje proporciona herramientas para diseñar sitios web y se puede combinar eficazmente con CSS y JavaScript. En nuestro proyecto, utilizaremos HTML para implementar la estructura de la página web. Referencia: https://developer.mozilla.org/en-US/docs/Web/HTML

**CSS:** CSS es un lenguaje de diseño destinado al entorno web, que posibilita la mejora de la interfaz de usuario previamente diseñada al añadir elementos como colores y tamaños, entre otros. Además, es posible crear un estilo en CSS y compartirlo en el sitio web creado en HTML. Este lenguaje será empleado en la implementación del diseño de nuestra plataforma web. Referencia: https://developer.mozilla.org/en-US/docs/Web/CSS

**JavaScript:** Es un lenguaje de programación que es interpretado por otros programas. Funciona bajo el paradigma de programación orientada a objetos (POO), utilizando prototipos en lugar de clases para la implementación. Este lenguaje permite crear dinámicas para los usuarios a través de la lógica de programación y será utilizado en la creación de las interacciones dinámicas en la plataforma web. Referencia: https://developer.mozilla.org/en-US/docs/Web/JavaScript

Estas herramientas y tecnologías desempeñarán un papel fundamental en la creación exitosa de nuestro producto de software.

**Software Testing:**

Se trata de la acción de evaluar los elementos y el funcionamiento del software sometido a prueba mediante procesos de validación y verificación.

**Lenguaje Gherkin:** Este lenguaje, conocido como DSL (Lenguaje Específico de Dominio), está diseñado específicamente para abordar problemas particulares. Además de poder ser interpretado en código, permite agregar historias de usuario del programa junto con sus componentes correspondientes, como Característica, Escenario, Ejemplo, Esquema de Escenario, Dado, Cuando, Entonces y Y. Referencia: https://cucumber.io/docs/gherkin/

**Software Documentation**

Se refiere a textos escritos o ilustraciones que acompañan al software de computadora o están integrados en su código fuente. Esta documentación tiene como objetivo explicar cómo funciona el software o cómo utilizarlo.

**GitHub:** Para la documentación del proyecto, se utiliza GitHub como plataforma de repositorio donde se almacena y versiona el informe en formato Markdown. Esto permite que todos los miembros del equipo colaboren en la redacción y actualización de la documentación de manera simultánea, manteniendo un historial de cambios completo. Sitio web: https://github.com/

![GitHub](/assets/img/chapter-VI/GitHub.png)


### 6.1.2. Source Code Management

A continuación, se describe la gestión del código fuente, también conocida por las siglas SCM (Source Code Management). Su función principal es rastrear los cambios que realizará el equipo durante el desarrollo de su proyecto en el repositorio de código fuente. Se utilizará como un sistema de control de versiones que lepermitirá realizar un seguimiento de los cambios realizados por miembros o desarrolladores individuales del proyecto. Además, es importante tener en cuenta que usaremos GitHub como nuestro sistema de control de versiones.

1. [ ] URL de la organización: MetaSoft-IOT-2610 - https://github.com/MetaSoft-IOT-2610

2. [ ] URL del repositorio de la Landing Page: veyra-landing-page - https://github.com/MetaSoft-IOT-2610/veyra-landing-page

3. [ ] URL del repositorio del Front-End: veyra-web-app - https://github.com/SV51-MetaSoft-App-Web/veyra-web-app

4. [ ] URL del repositorio del Back-End: veyra-backend - https://github.com/MetaSoft-IOT-2610/veyra-backend

**GitFlow**

GitFlow es un modelo alternativo para la creación de ramas en Git que se ha convertido en una herramienta esencial para muchos desarrolladores en los últimos años. Este flujo de trabajo de control de versiones, desarrollado y popularizado por Vicent Driessen, desempeña un papel crucial en la gestión de las versiones de un código, facilitando la creación ordenada de nuevas características (Features) y correcciones de problemas urgentes (Hotfixes).

![GitFlow](/assets/img/chapter-VI/GitFlow.png)

Como se mencionó previamente, GitFlow opera con ramas o "branches". A continuación, se detallan las ramas que se utilizarán en el flujo de trabajo de nuestro proyecto.

* **Main Branches:**
    * **Main/Master:** Esta es la rama principal desde la cual se ramifican todas las demás. Contendrá la versión más reciente junto con las versiones anteriores creadas por los desarrolladores. Aquí se mantendrá el historial oficial de las versiones publicadas.
    * **Develop:** Esta rama puede ser creada a partir de la rama principal (Main) y contendrá todas las características (Features) estables. A través de esta rama, el equipo podrá integrar las funcionalidades de manera efectiva.

* **Support Branches**
A diferencia de las ramas principales, estas ramas secundarias tienen una vida útil limitada, ya que se eliminan al fusionarse con sus ramas primarias.
    * **Feature:**
        * Se ramifica de: develop
        * Debe fusionarse de nuevo en: develop
        * Se utilizan para desarrollar las nuevas funciones que se integrarán en la próxima versión. Es importante destacar que esta rama existe únicamente mientras está en proceso de desarrollo. Sin embargo, una vez que el desarrollador haya completado esa función, se fusionará nuevamente con la rama "develop".

* **Convenciones para nombrar los Features:**
    * **Feture Branch:** feature/name
    **Example:**
        1. feature/welcome
        2. feature/about
        3. feture/myfeture
    * **Conventional Commits**
    El commit debe seguir la siguiente estructura:
    **\<type> [optional scope]: \<description>**
    **[optional body]**
    **[optional footer(s)]**
        * **Type:**
            1. **feat:** Cuando se agrega un nuevo feature.
            2. **fix:** Cuando corriges un error.
            3. **build:** Cuando afectan los componentes de compilación como la herramienta de compilación, las dependencias o la versión del proyecto.
            4. **chore:** Modificaciones privadas del código.
            5. **docs:** Commits que afectan solo a la documentación.
            6. **refactor:** Commits que reescriben o reestructuran el código, pero no cambia el comportamiento.
            7. **perf:** Commits especiales que mejoran el rendimiento.
            8. **style:** Commits que no afectan el programa (espacios en blanco, formato, puntos o comas faltantes).
            9. **test:** Commits que agregan pruebas.
        * **Scope**
        Ofrece información contextual adicional. Aunque es opcional, es beneficioso incluirlo para proporcionar a los desarrolladores una descripción más detallada del commit.
        **\<description>**
        Es una parte obligatoria del formato de los commits. Siempre debemos usar lenguaje en modo imperativo y evitar escribir en mayúsculas
        **[optional body]**
        El cuerpo es opcional y, cuando se utiliza, debe explicar la motivación detrás del cambio y contrastarlo con el comportamiento anterior. Es ideal para mencionar identificadores de problemas y sus relaciones.
        **[optional footer(s)]**
        Esta sección es opcional y puede incluir información sobre cambios significativos. Puede hacer referencia al problema por su identificación y, en esta sección, se incluyen los cambios importantes precedidos por "BREAKING CHANGES:" seguido de uno o dos saltos de línea.
        **Ejemplos:**
            1. feat(welcome): add welcome section
            2. build(release): bump version to 1.0.0
            3. style: remove empty line
            4. feat(sign up): add the button to sign up
            5. feat!: email the costumer when product is shipped
            6. feat: remove ticket list endpoint
            refers to JIRA-1337
            BREAKING CHANGES: ticket enpoints no longer supports list all entites.

Como se mencionó previamente, la gestión de nuestro código fuente se llevará a cabo mediante GitHub. Todos los IDEs utilizados en el proyecto — Visual Studio Code, WebStorm, IntelliJ IDEA, PyCharm y CLion — cuentan con soporte nativo para Git y deben vincularse al repositorio de la organización. La configuración del controlador de versiones se realiza una sola vez por IDE y es equivalente en todos ellos: se activa la integración con Git, se asocia la cuenta de GitHub y se establecen las credenciales del usuario. Los pasos que se detallan a continuación están ilustrados con WebStorm, pero el procedimiento es análogo en los demás entornos de desarrollo del equipo.

* **Activar el controlador de versiones del IDE**
Dado que utilizaremos GitHub para gestionar nuestro código, la opción que debe estar 
habilitada o seleccionada es aquella que indique que el sistema de control se realizará
mediante Git. Para hacer esto, siga los siguientes pasos:

  1. Diríjase a la pestaña "VCS" en WebStorm.
  2. Luego, seleccione la opción "Enable Version Control Integration".


![activar-el-controlador-de-versiones-1.png](/assets/img/chapter-VI/activar-el-controlador-de-versiones-1.png)

Ahora se debe seleccionar el sistema de control a través de Git y, por último aceptar los cambios.

![activar-el-controlador-de-versiones-2.png](/assets/img/chapter-VI/activar-el-controlador-de-versiones-2.png)

* **Aregar una cuenta de GitHub, siga estos pasos:**
  1. Diríjase a la sección de configuración en su aplicación.
  2. Dentro de la pestaña 'File', busque y seleccione la opción 'Settings'.
  3. En la configuración, busque la sección de version control.
  4. Agregue su cuenta de GitHub para obtener acceso a los repositorios.


![aregar-una-cuenta-de-GitHub-1.png](/assets/img/chapter-VI/aregar-una-cuenta-de-GitHub-1.png)

![aregar-una-cuenta-de-GitHub-2.png](/assets/img/chapter-VI/aregar-una-cuenta-de-GitHub-2.png)

* **Configurar el nombre de usuario de Git:** Una vez que hayas establecido el sistema de control de versiones que se vinculará con tu IDE, deberás ingresar la cuenta que utilizarás. Para hacerlo, sigue estos pasos:
  1. Realiza un commit en tu proyecto. Durante este proceso, se te solicitará que ingreses tu nombre de usuario de Git.
  2. Después de haberlo añadido, todos los cambios se guardarán en el repositorio especificado en esa plataforma, siempre y cuando des la orden correspondiente.
  3. Para configurar tu nombre de usuario de Git, primero selecciona la opción 'commit' que se encuentra dentro de la pestaña 'Git'.


![configurar-el-nombre-de-usuario-de-Git-1.png](/assets/img/chapter-VI/configurar-el-nombre-de-usuario-de-Git-1.png)


* **Guardar el progreso en GitHub:** Con todo configurado en WebStorm, ahora puedes subir tu código a GitHub sin problemas. Simplemente dirígete a la opción 'GitHub' que se encuentra en la pestaña 'Git' y comparte el proyecto.


![guardar-el-progreso-en-GitHub-1.png](/assets/img/chapter-VI/guardar-el-progreso-en-GitHub-1.png)


![guardar-el-progreso-en-GitHub-2.png](/assets/img/chapter-VI/guardar-el-progreso-en-GitHub-2.png)

* **Configurar la propiedad del repositorio en GitHub:** Ahora, solo necesitas configurar la ubicación del repositorio. El código ya debería estar guardado en GitHub, pero solo estará presente en tu propia cuenta. Para cambiar la propiedad y transferirla a la organización deseada, sigue estos pasos:
  1. Ingresa al repositorio creado en GitHub.
  2. Selecciona la pestaña 'settings'
  3. Dirigite al apartado de 'DangerZone'
  4. Luego da click en 'transfer'
  5. Finalmente elegimos el nuevo lugar para guardar el repositorio.


![configurar-la-propiedad-del-repositorio-en-GitHub-1.png](/assets/img/chapter-VI/configurar-la-propiedad-del-repositorio-en-GitHub-1.png)

![configurar-la-propiedad-del-repositorio-en-GitHub-2.png](/assets/img/chapter-VI/configurar-la-propiedad-del-repositorio-en-GitHub-2.png)

![configurar-la-propiedad-del-repositorio-en-GitHub-3.png](/assets/img/chapter-VI/configurar-la-propiedad-del-repositorio-en-GitHub-3.png)

![configurar-la-propiedad-del-repositorio-en-GitHub-4.png](/assets/img/chapter-VI/configurar-la-propiedad-del-repositorio-en-GitHub-4.png)


* **Configurar control remoto en Git:** Por último, dado que el repositorio ahora está bajo la propiedad de la empresa y depende de ella, es necesario acceder al control remoto del código. Para hacerlo, simplemente ingresa al repositorio creado y copia la URL del repositorio.

![configurar-control-remoto-en-Git-1.png](/assets/img/chapter-VI/configurar-control-remoto-en-Git-1.png)

Ahora, en el IDE, dirígete a la pestaña 'Git' y elige la opción 'Manage Remotes'.

![configurar-control-remoto-en-Git-2.png](/assets/img/chapter-VI/configurar-control-remoto-en-Git-2.png)

Finalmente, como último paso, debes pegar el enlace copiado en el campo de dirección que solicita el IDE para el control remoto en Git.

![configurar-control-remoto-en-Git-3.png](/assets/img/chapter-VI/configurar-control-remoto-en-Git-3.png)

Si has seguido correctamente todos los pasos y directrices mencionados, entonces has completado la configuración con éxito. Ahora, solo necesitas realizar un commit y los cambios que hayas efectuado se guardarán en el repositorio de GitHub, ya sea que hayas realizado modificaciones en el código, creado nuevas ramas u otras acciones.


### 6.1.3. Source Code Style Guide & Conventions

En esta sección, se presentarán las pautas, convenciones, estilos y principios que se aplicarán a cada uno de los lenguajes utilizados en la creación de nuestra aplicación. La observancia de este conjunto de directrices reviste una importancia fundamental, ya que tiene el propósito de mantener la calidad estructural del software, mejorar la legibilidad del código fuente y simplificar el mantenimiento del mismo.

Dado que en este proyecto se emplearán varios lenguajes — **HTML** y **CSS** para el marcado y estilo de la interfaz web, **TypeScript** para el desarrollo frontend, **Java** para los servicios backend, **C++** para el firmware de los dispositivos IoT, **Python** para el procesamiento de datos e integración de sensores, y **Flutter/Dart** para la aplicación móvil — así como **Gherkin** para los archivos `.feature` de pruebas, a continuación se detallan las reglas y convenciones que el equipo adoptará. Para todos los lenguajes se aplica **nomenclatura en inglés**.


**Nomenclatura General**

Para los nombres de variables, objetos, elementos y funciones que se utilicen en el proyecto, se emplearán términos en inglés que estén relacionados con lo que representan. Cada lenguaje impone su propia convención de capitalización, que se detalla en la sección correspondiente. Como referencia general, se siguen las recomendaciones de Google Style Guides (https://google.github.io/styleguide/).

```
// CSS class names: lowercase with hyphens
.gallery {}
.video-player {}
.login-form {}
```

**Sangría**

Para HTML y CSS se aplica un espaciado de **2 espacios** por nivel de indentación. Para TypeScript y Java se aplican **2 espacios** (Google Style Guide). Para Python se usan **4 espacios** (PEP 8). Para C++ se usan **2 espacios** (Google C++ Style Guide). Para Dart/Flutter se usan **2 espacios** (Effective Dart). En ningún caso se utiliza la tecla "Tabulación".

``` html
<!DOCTYPE html>
<html>
  <head>
    <title>Document Title</title>
  </head>
  <body>
    <h1>Main Heading</h1>
    <p>Paragraph content inside the document body.</p>
  </body>
</html>
```

**Especificaciones generales**

A continuación, detallaremos las reglas específicas necesarias para comprender el código de nuestra aplicación en cada lenguaje.

**HTML:**

HTML, acrónimo de HyperText Markup Language en inglés, es un lenguaje de marcado que se utiliza para definir la estructura de una página web. También incluye funcionalidades que permiten controlar el comportamiento de diferentes elementos del contenido de la página, como cambiar el tamaño del texto o aplicar formato cursiva, entre otros. En nuestro proyecto, emplearemos HTML5. Las convenciones adoptadas siguen la **Google HTML/CSS Style Guide** (https://google.github.io/styleguide/htmlcssguide.html) y la **W3Schools HTML Style Guide** (https://www.w3schools.com/html/html5_syntax.asp).

* **Declare Document Type**
  La declaración del tipo de documento debe realizarse en la primera línea del código. Según las recomendaciones de la Google HTML/CSS Style Guide, se prefiere la sintaxis de HTML5 para todos los documentos HTML. Para declararla, simplemente copia lo siguiente:

``` html
<!DOCTYPE html>
```

* **Blank Lines**
  Cada vez que comiences un nuevo bloque, lista o tabla de gran longitud, es recomendable dejar una línea en blanco después del elemento anterior para mejorar la legibilidad y la presentación del código, de acuerdo con la W3Schools HTML Style Guide:

``` html
<!DOCTYPE html>
<html>
<head>
<title>Animales Exóticos</title>
</head>
<body>
<h1>Lemur de Madagascar</h1>
<p>El lémur de Madagascar es un primate endémico de la isla de Madagascar en el Océano Índico.</p>

<h1>Pangolín</h1>
<p>El pangolín es un mamífero cubierto de escamas que se encuentra en regiones de África y Asia.</p>

<h1>Ocelote</h1>
<p>El ocelote es un felino salvaje que habita en América del Sur y Central, conocido por su pelaje moteado.</p>
</body>
</html>
```

Esta práctica de dejar una línea en blanco mejora la estructura y legibilidad del código HTML.

* **Quote attribute Values**
  Para los valores de los atributos, es común utilizar comillas dobles alrededor de ellos, aunque esta característica no sea obligatoria. Según la W3Schools HTML Style Guide, esto mejora la legibilidad del código y es una práctica común entre los desarrolladores. Aquí tienes un ejemplo:

``` html
<table class="striped">
```

Este enfoque de usar comillas dobles alrededor de los valores de los atributos es ampliamente aceptado y recomendado en la comunidad de desarrollo web.

* **Never Skip the \<title> Element**
  El elemento `<title>` permite que las páginas aparezcan en la lista de resultados al realizar búsquedas en un navegador web. Además, este elemento es responsable de proporcionar el nombre de la página cuando se agrega a marcadores o favoritos. A continuación, se muestra un ejemplo de su uso:

``` html
<title>Guía de Estilo HTML y Convenciones de Codificación</title>
```

Este elemento es esencial para mejorar la identificación y accesibilidad de una página web.

* **HTML Line-Wrapping**
  A pesar de que en un documento HTML no exista un límite estricto en la cantidad de palabras por línea, no se recomienda generar líneas de código excesivamente largas. De hecho, hacerlo dificulta la legibilidad del código. Para continuar en la siguiente línea, se deben utilizar al menos cuatro espacios para distinguir elementos secundarios. Aquí tienes un ejemplo basado en la Google HTML/CSS Style Guide:

``` html
<button mat-icon-button color='primary' class="menu-button"
(click)="openMenu()">
<mat-icon>menu</mat-icon>
</button>
```

Este estilo de formateo ayuda a mantener un código más legible y facilita la identificación de los elementos y su jerarquía en la estructura del documento HTML.

**CSS:**

CSS, conocido por sus siglas en inglés, Cascading Style Sheets (Hojas de Estilo en Cascada), es un lenguaje que se enfoca en definir y mejorar la presentación de un documento basado en HTML. Las convenciones adoptadas siguen la **Google HTML/CSS Style Guide** (https://google.github.io/styleguide/htmlcssguide.html).

* **Shorthand Properties**
  Se recomienda utilizar abreviaturas de propiedades y declarar los campos de los elementos en la menor cantidad de líneas posible, según la Google HTML/CSS Style Guide. Esto aumenta la eficiencia del código y lo hace más legible. Además, se debe evitar agregar unidades después del valor cero. Aquí tienes un ejemplo:

``` css
border-top: 0;
font: 100%/1.6 palatino, georgia, serif;
padding: 0 1em 0;
```

Siguiendo estas recomendaciones, se puede lograr un código CSS más conciso y fácil de entender.

* **Declaration Stops**
  Es importante incluir un punto y coma al final de cada declaración en CSS, al igual que en la mayoría de los lenguajes de programación. Siguiendo la Google HTML/CSS Style Guide, esta práctica contribuye a mantener la coherencia en el código. A continuación, se muestra un ejemplo:

``` css
html {
  background: #fff;
  color: #404;
}
```

El uso consistente de puntos y comas al final de las declaraciones CSS ayuda a prevenir errores y mejora la claridad del código.

* **Property Name Stops**
  Es necesario incluir un espacio entre los dos puntos que siguen al nombre de una propiedad y el valor correspondiente. Siempre se debe colocar un solo espacio después de los dos puntos, pero no antes. A continuación, se muestra un ejemplo siguiendo la Google HTML/CSS Style Guide:

``` css
html {
  background: #fff;
  color: #404;
}
```

Mantener esta consistencia en la colocación de espacios ayuda a que el código CSS sea más legible y fácil de entender.

* **Declaration Block Separation**
  Es esencial utilizar un espacio separador después del nombre de un selector de elemento y antes de la llave que inicia un bloque de declaración CSS. Además, la llave de apertura del bloque debe estar en la misma línea que el selector. Aquí tienes un ejemplo siguiendo la Google HTML/CSS Style Guide:

``` css
html {
  background: #fff;
  color: #404;
}
```

El cumplimiento de estas directrices ayuda a mantener la consistencia y la legibilidad en el código CSS.

* **CSS quotation Marks**
  No se deben utilizar comillas dobles (`"`) en el código CSS; en su lugar, se permiten y deben emplearse comillas simples (`'`) únicamente para selectores de atributos y valores de propiedades.
  Ejemplo conforme a la Google HTML/CSS Style Guide:

``` css
html {
  font-family: 'open sans', arial, sans-serif;
}
```

Este ejemplo demuestra el uso de comillas simples para encerrar el valor del atributo `font-family` en CSS, lo cual es una práctica común y aceptada.

**TypeScript:**

TypeScript es un superconjunto tipado de JavaScript desarrollado por Microsoft. En este proyecto se utiliza para el desarrollo del frontend de la aplicación web. Las convenciones adoptadas siguen la **Google TypeScript Style Guide** (https://google.github.io/styleguide/tsguide.html).

* **Naming Conventions**
  - Variables y funciones: `lowerCamelCase`
  - Clases e interfaces: `UpperCamelCase`
  - Constantes y valores de enum: `CONSTANT_CASE`
  - Archivos: `lower-kebab-case.ts`

```typescript
// Variables and functions: lowerCamelCase
let residentAge: number = 75;
function calculateBmi(weight: number, height: number): number {
  return weight / (height * height);
}

// Classes: UpperCamelCase
class VitalSignsMonitor {
  private heartRate: number = 0;

  getHeartRate(): number {
    return this.heartRate;
  }
}

// Constants: CONSTANT_CASE
const MAX_ALERT_THRESHOLD = 120;
```

* **Type Annotations**
  Siempre se debe especificar el tipo de retorno de las funciones y el tipo de las variables cuando no puede inferirse automáticamente.

```typescript
function getResidentById(id: string): Resident | undefined {
  return residents.find(r => r.id === id);
}
```

* **Imports**
  Se prefieren las importaciones con nombre (`import { Something }`) sobre las importaciones por defecto. Se usan rutas absolutas con alias de módulo.

```typescript
import { ResidentService } from '@/services/resident.service';
import { VitalSign } from '@/models/vital-sign.model';
```

* **Semicolons and Quotes**
  Se utilizan punto y coma al final de cada instrucción y comillas simples para strings.

```typescript
const patientName: string = 'John Doe';
const isActive: boolean = true;
```

* **Control Structures**
  Las llaves son obligatorias en todas las estructuras de control, incluso para bloques de una sola línea.

```typescript
if (heartRate > MAX_ALERT_THRESHOLD) {
  triggerAlert(heartRate);
}
```

**Java:**

Java es el lenguaje utilizado para el desarrollo de los servicios backend y las APIs REST de la plataforma. Las convenciones adoptadas siguen la **Google Java Style Guide** (https://google.github.io/styleguide/javaguide.html).

* **Naming Conventions**
  - Clases e interfaces: `UpperCamelCase`
  - Métodos y variables: `lowerCamelCase`
  - Constantes: `UPPER_SNAKE_CASE`
  - Paquetes: todo en minúsculas sin separadores

```java
// Package: lowercase
package com.veyra.nursing.service;

// Class: UpperCamelCase
public class ResidentService {

  // Constant: UPPER_SNAKE_CASE
  private static final int MAX_RESIDENTS = 500;

  // Method and variable: lowerCamelCase
  public Resident findResidentById(String residentId) {
    return residentRepository.findById(residentId).orElse(null);
  }
}
```

* **Indentation and Braces**
  Sangría de 2 espacios. La llave de apertura va al final de la misma línea. No se omiten las llaves aunque el bloque sea de una sola instrucción.

```java
if (resident.isActive()) {
  monitorVitalSigns(resident);
} else {
  archiveRecord(resident.getId());
}
```

* **Javadoc**
  Todos los métodos públicos y clases públicas deben tener Javadoc que explique su propósito.

```java
/**
 * Registers a new resident in the system.
 *
 * @param resident the resident entity to register
 * @return the persisted resident with its generated ID
 */
public Resident registerResident(Resident resident) {
  return residentRepository.save(resident);
}
```

* **Import Organization**
  No se usan importaciones con comodín (`import java.util.*`). Se listan las importaciones de manera explícita, ordenadas: clases de terceros primero, luego clases estándar de Java.

```java
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;
```

**C++:**

C++ es el lenguaje utilizado para el desarrollo del firmware de los dispositivos IoT encargados de la captura de signos vitales. Las convenciones adoptadas siguen la **Google C++ Style Guide** (https://google.github.io/styleguide/cppguide.html).

* **Naming Conventions**
  - Clases y structs: `UpperCamelCase`
  - Variables y funciones: `snake_case`
  - Constantes y macros: `kConstantName` o `MACRO_NAME`
  - Archivos: `lower_snake_case.cc` / `lower_snake_case.h`

```cpp
// Class: UpperCamelCase
class VitalSensorReader {
 public:
  // Function: snake_case
  float read_heart_rate();

 private:
  // Variable: snake_case
  int sample_rate_;
};

// Constant: kCamelCase
const int kMaxSamplesPerSecond = 100;
```

* **Indentation**
  Sangría de 2 espacios. Sin tabulaciones.

```cpp
void VitalSensorReader::transmit_data(const SensorPacket& packet) {
  if (packet.is_valid()) {
    serial_port_.write(packet.serialize());
  }
}
```

* **Header Files**
  Todos los archivos de cabecera deben incluir un guard de inclusión usando `#pragma once` o una macro de guarda.

```cpp
#pragma once

#include <cstdint>

class HeartRateSensor {
 public:
  uint16_t read();
};
```

* **References and Pointers**
  Los parámetros de entrada se pasan por referencia `const`; los de salida, por puntero.

```cpp
void process_reading(const SensorData& input, AlertPayload* output);
```

* **Comments**
  Los comentarios de una línea usan `//`. Los bloques de documentación siguen el estilo Doxygen.

```cpp
// Reads raw ADC value from the pulse oximeter sensor.
uint16_t read_spo2_raw();

/**
 * @brief Converts raw ADC reading to SpO2 percentage.
 * @param raw_value Raw ADC value from sensor.
 * @return SpO2 percentage (0–100).
 */
float convert_to_spo2(uint16_t raw_value);
```

**Python:**

Python es el lenguaje utilizado para el procesamiento de datos de sensores e integración con los servicios IoT. Las convenciones adoptadas siguen **PEP 8 – Style Guide for Python Code** (https://www.python.org/dev/peps/pep-0008/).

* **Naming Conventions**
  - Variables y funciones: `snake_case`
  - Clases: `CapWords` (UpperCamelCase)
  - Constantes: `UPPER_SNAKE_CASE`
  - Módulos y paquetes: `lowercase` o `lower_with_underscores`

```python
# Variables and functions: snake_case
resident_id = "RES-001"

def calculate_average_heart_rate(readings: list[int]) -> float:
    return sum(readings) / len(readings)

# Classes: CapWords
class SensorDataProcessor:
    MAX_BUFFER_SIZE = 256  # Constant: UPPER_SNAKE_CASE

    def process(self, raw_data: bytes) -> dict:
        pass
```

* **Indentation**
  Siempre 4 espacios por nivel. Nunca tabulaciones.

```python
def send_alert(patient_id: str, alert_type: str) -> bool:
    if not patient_id:
        raise ValueError("patient_id cannot be empty")
    return notification_service.send(patient_id, alert_type)
```

* **Maximum Line Length**
  Las líneas no deben superar los **79 caracteres** (líneas de código) ni los **72 caracteres** (comentarios y docstrings).

```python
# Correct line wrapping using implicit continuation
result = (
    first_value
    + second_value
    + third_value
)
```

* **Imports**
  Las importaciones deben estar al principio del archivo, separadas en grupos: librería estándar, librerías de terceros y módulos locales.

```python
import json
import os

import paho.mqtt.client as mqtt

from veyra.sensors import HeartRateSensor
```

* **Docstrings**
  Todas las funciones, clases y módulos públicos deben tener docstrings siguiendo el estilo PEP 257.

```python
def parse_vital_signs(payload: bytes) -> dict:
    """Parse a raw sensor payload into a vital signs dictionary.

    Args:
        payload: Raw bytes received from the IoT device.

    Returns:
        A dictionary with keys 'heart_rate', 'spo2', and 'temperature'.
    """
    pass
```

**Flutter/Dart:**

Flutter (con Dart como lenguaje) es el framework utilizado para el desarrollo de la aplicación móvil. Las convenciones adoptadas siguen **Effective Dart: Style** (https://dart.dev/effective-dart/style) y la **Flutter Style Guide** (https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo).

* **Naming Conventions**
  - Tipos (clases, enums, typedefs, extensiones): `UpperCamelCase`
  - Variables, parámetros y funciones: `lowerCamelCase`
  - Constantes y valores de enum: `lowerCamelCase`
  - Archivos y paquetes: `lowercase_with_underscores`

```dart
// File: vital_signs_screen.dart

// Class: UpperCamelCase
class VitalSignsScreen extends StatefulWidget {
  const VitalSignsScreen({super.key, required this.residentId});

  // Variable: lowerCamelCase
  final String residentId;

  @override
  State<VitalSignsScreen> createState() => _VitalSignsScreenState();
}

// Enum: UpperCamelCase, values: lowerCamelCase
enum AlertSeverity { low, medium, high, critical }
```

* **Formatting**
  Todo el código Dart se formatea con `dart format`. La longitud máxima de línea es de **80 caracteres**. Se utilizan comas al final de listas de argumentos/parámetros cuando cada elemento ocupa su propia línea (trailing commas).

```dart
// Trailing comma enables dart format to expand the list
Widget build(BuildContext context) {
  return Column(
    children: [
      ResidentCard(resident: resident),
      VitalSignsChart(data: vitalData),
      AlertBanner(severity: AlertSeverity.high),
    ],
  );
}
```

* **String Literals**
  Se prefieren las comillas simples para strings. Se usa interpolación de strings con `$variable` o `${expression}`.

```dart
final greeting = 'Welcome, $residentName';
final route = '/residents/${resident.id}/vitals';
```

* **Constructors**
  Los constructores van primero en la definición de la clase, antes de los demás métodos. Se prefiere `const` para widgets que no cambian.

```dart
class AlertBanner extends StatelessWidget {
  const AlertBanner({super.key, required this.severity});

  final AlertSeverity severity;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _getColor(severity),
      child: const Text('Alert'),
    );
  }
}
```

* **Null Safety**
  Se aprovecha el sistema de null safety de Dart. Se usa `?` para tipos que pueden ser nulos y el operador `??` para valores por defecto.

```dart
String getResidentName(Resident? resident) {
  return resident?.fullName ?? 'Unknown Resident';
}
```

**Gherkin:**

Gherkin es un Lenguaje Específico de Dominio (DSL) utilizado para escribir los casos de prueba en archivos `.feature`. Las convenciones adoptadas siguen **Gherkin Conventions for Readable Specifications** (https://cucumber.io/docs/gherkin/). Todos los bloques y nombres de escenario se escriben en inglés.

* **Discernible Given-When-Then Blocks**
  Se aplica sangría a los pasos del escenario. Los pasos con `And` llevan sangría adicional para mantener la alineación visual con el bloque al que pertenecen.

``` gherkin
Scenario: Nurse receives critical heart rate alert
  Given the resident "Carlos Ruiz" has a configured threshold of 100 bpm
  When the IoT device reports a heart rate of 130 bpm
  Then a critical alert is triggered
  And the nursing dashboard displays the alert in red
  And a push notification is sent to the assigned nurse
```

* **Step with Tables**
  Cuando un paso requiere múltiples valores de entrada, se usa una tabla de datos precedida por dos puntos.

``` gherkin
Then the system records the following vital signs:
  | Sign        | Value | Unit |
  | Heart Rate  | 130   | bpm  |
  | SpO2        | 94    | %    |
  | Temperature | 38.5  | °C   |
```

* **Reducing Noise**
  Los valores que no son relevantes para el escenario se reemplazan por valores por defecto entre comillas simples, para mantener el escenario conciso.

``` gherkin
Given the resident has a 'standard' monitoring profile
When a reading is received
Then the system processes it normally
```

* **Scenarios Separator**
  Entre escenarios se inserta una línea en blanco y, opcionalmente, un comentario separador para facilitar la lectura visual del archivo.

``` gherkin
Scenario: Alert is triggered when heart rate exceeds threshold
  Given the threshold is set to 100 bpm
  When the sensor reports 115 bpm
  Then an alert is created with severity "high"

# --------------------------

Scenario: No alert is triggered within normal range
  Given the threshold is set to 100 bpm
  When the sensor reports 78 bpm
  Then no alert is created
```

### 6.1.4. Software Deployment Configuration

## 6.2. Landing Page, Services & Applications Implementation

### 6.2.1. Sprint 1

El primer sprint se centró en sentar las bases tecnológicas de VEYRA, logrando el desarrollo de la interfaz web y la landing page. 

#### 6.2.1.1. Sprint Planning

Se realizó el sprint planning con el objetivo de definir las tareas y objetivos para el primer sprint, enfocándonos en el desarrollo de la interfaz web y la landing page. Durante la planificación, se asignaron responsabilidades a cada miembro del equipo y se estableció la meta del sprint.

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
| Sprint 1 Goal                   | Our focus is on delivering the first version of Veyra's landing page to the visitors, that clearly communicates the business value, the value proposition and service offerings to first-time visitors to the site. Also the first version of Veyra's web application with core views such as nursing, activities and communications <br> We believe it delivers a clear definition of Veyra and our goal and commitment with our customers, giving them the core views of Veyra's web application <br> This will be confirmed when visitors access to the landing page and web application. |
| Sprint 1 Velocity               | 23 Velocity                                                                                                                                                                                                                                                                                                  |
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

Para este sprint no se desarrollaron pruebas unitarias ni de integración, ya que el enfoque principal estuvo en el desarrollo de la landing page y la aplicación web.

#### 6.2.1.6. Execution Evidence for Sprint Review

Landing page:

Se desarrolló la landing page de VEYRA, la cual se publicó utilizando GitHub Pages para garantizar su accesibilidad inmediata.


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

Para este sprint se realizó el despliegue de dos artefactos: Landing page y frontend. La landing page se desplegó utilizando GitHub Pages, lo que permitió su acceso inmediato y facilitó la recopilación de feedback de los usuarios. El frontend se desplegó usando cloudflare pages.


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