# Git


# Isusue °9
## Conceptos basicos
Git es un proyecto de código abierto y maduro y con un activo manntenimiento desarrolado originalmente por Linus Torvals. Funciona bajo cualquier plataforma.
-Rendimiento: Los algoritmos implementados en Git aprovechan el profundo conocimiento sobre los atributos comunes de los auténticos árboles de archivos de código fuente, cómo suelen modificarse con el paso del tiempo y cuáles son los patrones de acceso. 
-Seguridad: La principal prioridad es conservar la integridad del código fuente gestionado. El contenido de los archivos y las verdaderas relaciones entre estos y los directorios, las versiones, las etiquetas y las confirmaciones, están protegidos con un algoritmo de hash criptográficamente seguro llamado "SHA1".
-Flexibilidad: es flexible en varios aspectos, en la capacidad para varios tipos de flujos de trabajo de desarrollo no lineal, en su eficiencia en proyectos tanto grandes como pequeños y en su compatibilidad con numerosos sistemas y protocolos.
-Directorio de trabajo(working directory): es una copia de una version del proyecto. 
-Área de preparación(staging area): es un archivo que se encuentra dentro del directorio de Git y que contiene información acerca de lo que va a ir en la próxima confirmación.
-Directorio de Git(Local repository): es el lugar donde se almacenan los metadatos y la base de datos de objetos del proyecto. Es lo que se copia cuando se clona un repositorio desde otra fuente. 
-Repositorio remoto(remote repository): es el repositorio que se encuentra en un servidor remoto y con el que eventualmente se sincronizan los trabajos entre los diferentes integrantes del equipo. 

# Isusue °10
## Comandos basicos

# Isusue °11
## Vejatas de git
Git ofrece varias ventajas frente a otros sistemas tradicionales:

Sistema distribuido, sin un punto central de fallo, que permite el trabajo incluso sin conexión.
Superrápido y ligero, optimizado para hacer operaciones de control muy rápidas.
Crear ramas y mezclarlas es rápido y poco propenso a problemas, al contrario que en otros sistemas tradicionales.
La integridad de la información está asegurada gracias a su modelo de almacenamiento, que permite predecir este tipo de problemas. En sistemas tradicionales este era un problema grave.
Permite flujos de trabajo muy flexibles.
El concepto de área de preparación o staging permite versionar los cambios como nos convenga, no todo o nada.
¡Es gratis! y de código abierto.

# Isusue °12
## Flujo de trabajo de git
  Un flujo de trabajo de Git es una fórmula o una recomendación sobre cómo usar Git para llevar a cabo el trabajo de forma homogénea y productiva. Los flujos de trabajo de Git animan a los desarrolladores y a los equipos de DevOps a sacar partido a Git de forma eficaz y estable. Git ofrece a los usuarios una amplia flexibilidad para gestionar los cambios. Dado que Git se centra en la flexibilidad.
Para garantizar que todo el equipo se encuentre en sintonía, se debe desarrollar o seleccionar un flujo de trabajo de Git. Hay varios flujos de trabajo de Git publicados que pueden ser adecuados para tu equipo. Aquí hablaremos sobre algunas de estas opciones de flujo de trabajo de Git.
Cuando evalúas un flujo de trabajo para tu equipo, lo más importante es que tengas en cuenta la cultura de tu equipo. Quieres que el flujo de trabajo mejore la eficacia de tu equipo, no que sea una carga que limite la productividad. Estas son algunas cosas que debes tener en cuenta a la hora de evaluar un flujo de trabajo de Git:

¿Este flujo de trabajo se escala acorde al tamaño del equipo?
¿Es fácil deshacer los errores y los fallos con este flujo de trabajo?
¿Este flujo de trabajo impone al equipo excesos cognitivos nuevos e innecesarios?

Flujos de trabajo en GIT

Flujo básico
Se usa para desarrollos unipersonales o para desarrollos en los que se puede aprobar la versión del software de forma local y luego subirla a la rama remota Máster. En este flujo, normalmente una sola persona hace cambios sobre el código y realiza pruebas localmente. Luego adiciona los cambios al Staging Area, + hace commit, y posteriormente, push para adicionar los cambios al repositorio remoto.

Flujo centralizado o flujo estilo SVN
Este flujo es muy común y es usado especialmente por desarrolladores haciendo la transición a Git desde un sistema de versionamiento centralizado como Subversion o CVS. Git no permite que se haga un push a la rama remota Máster (el símil del trunk en SVN) si alguien anteriormente ya ha hecho un push.

Flujo de rama de funcionalidad
Se sacan ramas para funcionalidades específicas a partir de la rama Máster. Una vez finalizada la funcionalidad, se integra a la rama Máster y se ejecuta un despliegue. Como consecuencia, nadie debe trabajar directamente sobre la rama Máster.

Si te encuentras haciendo alguna vez git push origin master … piénsalo dos veces, pues algo debes estar haciendo mal.
Además de esto, es un hábito recomendado integrar continuamente los nuevos cambios realizados por los demás integrantes del equipo e integrados a la rama Master, a nuestra rama de funcionalidad. Esto garantiza que tenemos nuestra rama actualizada y previene posibles conflictos y largas integraciones cuando integremos nuestra rama de funcionalidad de nuevo a Master.

Flujo Github
Este flujo es similar al flujo anterior, con la diferencia que para poder integrar la rama de funcionalidad en la que se está trabajando, se debe pasar por un Administrador de Integración quien es a su vez el encargado de integrar los cambios a la rama protegida Master.
Este flujo se utiliza a menudo en proyectos Open Source o en GitHub, en donde las personas tienen repositorios propios (públicos) en los cuales crean copias exactas de los repositorios a los cuales quieren contribuir (fork). Luego de esto, clonan sus repositorios públicos en repositorios privados/locales para hacer las modificaciones (se repite el flujo básico) y posteriormente se solicita al Administrador de Integración, a través de un Pull Request o Merge Request, que integre los cambios a la rama protegida del repositorio al cual se quiere contribuir.

Flujo GitFlow
Este flujo define un manejo más estricto de las ramas y agrega una rama de larga duración o long-running llamada Develop (que al igual que Master debe ser protegida) y algunas ramas de soporte como Feature, Release y Hotfix.
Las ramas Feature se sacan de la rama Develop y deben contener el desarrollo específico de una funcionalidad. En ambientes de desarrollo ágiles y equipos scrum, es común que se use una rama de funcionalidad por historia de usuario. Luego de terminado el desarrollo de la funcionalidad, ésta pasa a ser integrada nuevamente a Develop. Este paso, en la definición oficial del flujo, se hace a través de un merge (que se recomienda además sea con la opción –no-ff), pero en caso de estar trabajando con herramientas como Gitlab o GitHub, deben realizarse a través de un Pull/Merge request. Esto permite hacer una revisión de código antes de realizar la integración a la rama destino.
Las ramas de Release deben ser sacadas de Develop e integradas a las ramas Develop y Master. Éstas ramas contienen un conjunto de funcionalidades (o ramas de Feature) que serán liberadas en producción con un nombre específico de la versión que se liberará, por ejemplo release-1.2.
Una vez integradas a Master y Develop, ¡estas ramas deben morir! Luego de ello, se debe hacer el respectivo Tag en la rama Master, indicando que en ese punto se incluyeron nuevas funcionalidades con la versión especificada en la rama de Release.

Las ramas Hotfix deben ser sacadas de la rama Master (a partir de un Tag) e integradas a las ramas Develop y Master (si hay una rama de Release en la que aún se esté trabajando, se debe integrar en ella también). Son ramas útiles para realizar cambios en código que ya se encuentra en producción y que tienen que ser integrados inmediatamente, como la corrección de un bug crítico.
Luego de haber integrado la rama de Hotfix a las ramas necesarias, se debe eliminar.

Flujo personalizado
En conclusión y después de haber revisado algunos flujos utilizados en la industria, cabe mencionar que el mejor flujo es el que se adapta a las necesidades puntuales de la organización o equipo de trabajo. Dicho esto, no se debe tener miedo de mutilar, agregar o incluso renombrar partes de uno de ellos, siempre y cuando se haga respetando los criterios de calidad de nuestro software.
Hasta aquí, hemos visto un resumen de los flujos de trabajo en Git y su importancia dentro de los equipos de trabajo.
      
