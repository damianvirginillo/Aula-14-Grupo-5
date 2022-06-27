# Python

# Issues 5°

## Origen de Python

### ¿Qué es Python?
Python es un lenguaje de programación de alto nivel, interpretado, orientado a objetos y de uso generalizado con semántica dinámica, que se utiliza para la programación de propósito general.
Aunque puede que conozcas a la pitón como una gran serpiente, el nombre del lenguaje de programación Python proviene de una vieja serie de comedia de la BBC llamada Monty Python's Flying Circus.
En el apogeo de su éxito, el equipo de Monty Python estaba realizando sus escenas en vivo para audiencias en todo el mundo, incluso en el Hollywood Bowl.
Dado que Monty Python es considerado uno de los dos nutrientes fundamentales para un programador (el otro es la pizza), el creador de Python nombró el lenguaje en honor al programa de televisión.

### ¿Quién creó Python?
Una de las características sorprendentes de Python es el hecho de que en realidad es el trabajo de una persona. Por lo general, los grandes lenguajes de programación son desarrollados y publicados por grandes compañías que emplean a muchos profesionales, y debido a las normas de derechos de autor, es muy difícil nombrar a cualquiera de las personas involucradas en el proyecto. Python es una excepción.
No existen muchos lenguajes de programación cuyos autores sean conocidos por su nombre. Python fue creado por Guido van Rossum, nacido en 1956 en Haarlem, Países Bajos. Por supuesto, Guido van Rossum no desarrolló y evolucionó todos los componentes de Python.

### Un proyecto de programación por hobby
Las circunstancias en las que se creó Python son un poco desconcertantes. Según Guido van Rossum:
En diciembre de 1989, estaba buscando un proyecto de programación de "pasatiempo" que me mantendría ocupado durante la semana de Navidad. Mi oficina (...) estaría cerrada, pero tenía una computadora en casa y no mucho más en mis manos. Decidí escribir un intérprete para el nuevo lenguaje de scripting en el que había estado pensando últimamente: un descendiente de ABC que atraería a los hackers de Unix/C. Elegí Python como el título de trabajo para el proyecto, estando en un estado de ánimo ligeramente irreverente (y un gran fanático de Monty Python's Flying Circus). 
-Guido van Rossum


# Issues 6°

## Familias de Python

### Existen dos tipos principales de Python, llamados Python 2 y Python 3.
Python 2 es una versión anterior del Python original. Su desarrollo se ha estancado intencionalmente, aunque eso no significa que no haya actualizaciones. Por el contrario, las actualizaciones se emiten de forma regular, pero no pretenden modificar el idioma de manera significativa. Prefieren arreglar cualquier error recién descubierto y agujeros de seguridad. La ruta de desarrollo de Python 2 ya ha llegado a un callejón sin salida, pero Python 2 en sí todavía está muy vivo.
Python 3 no es solo una versión mejorada de Python 2, es un lenguaje completamente diferente, aunque es muy similar a su predecesor. Cuando se miran a distancia, parecen ser el mismo, pero cuando se observan de cerca, se notan muchas diferencias.

### Python alias CPython
Además de Python 2 y Python 3, existe más de una versión de cada uno.
En primer lugar, están los Pythons que se mantienen por las personas reunidas en torno a PSF (Python Software Foundation), una comunidad que tiene como objetivo desarrollar, mejorar, expandir y popularizar Python y su entorno.
También se consideran Pythons de referencia, ya que cualquier otra implementación del lenguaje debe seguir todos los estándares establecidos por el PSF.
Guido van Rossum utilizó el lenguaje de programación "C" para implementar la primera versión de su lenguaje y esta decisión aún está vigente. Todos los Pythons que provienen del PSF están escritos en el lenguaje "C".
Esta es la razón por la que la implementación de PSF a menudo se denomina CPython. Este es el Python más influyente entre todos los Pythons del mundo.

### Cython
Cython es una de las posibles soluciones al rasgo de Python más doloroso: la falta de eficiencia. Los cálculos matemáticos grandes y complejos pueden ser fácilmente codificados en Python (mucho más fácil que en "C" o en cualquier otro lenguaje tradicional), pero la ejecución del código resultante puede requerir mucho tiempo.
Cython pretende: traducir automáticamente el código de Python (limpio y claro, pero no demasiado rápido) al código "C" (complicado y hablador, pero ágil).

### Jython
Otra versión de Python se llama Jython.
"J" es de "Java". Imagina un Python escrito en Java en lugar de C. Esto es útil, por ejemplo, si desarrollas sistemas grandes y complejos escritos completamente en Java y deseas agregarles cierta flexibilidad de Python. El tradicional CPython puede ser difícil de integrar en un entorno de este tipo, ya que C y Java viven en mundos completamente diferentes y no comparten muchas ideas comunes.
Jython puede comunicarse con la infraestructura Java existente de manera más efectiva. Es por esto que algunos proyectos lo encuentran útil y necesario.

### PyPy y RPython
Es el logotipo de PyPy - un Python dentro de un Python. En otras palabras, representa un entorno de Python escrito en un lenguaje similar a Python llamado RPython (Restricted Python). En realidad, es un subconjunto de Python.
El código fuente de PyPy no se ejecuta de manera interpretativa, sino que se traduce al lenguaje de programación C y luego se ejecuta por separado.
Esto es útil porque si deseas probar cualquier característica nueva que pueda ser o no introducida en la implementación de Python, es más fácil verificarla con PyPy que con CPython. Esta es la razón por la que PyPy es más una herramienta para las personas que desarrollan Python que para el resto de los usuarios.




# Issues 7°

## Ventajas y desventajas en Python

### Python es un lenguaje interpretado, esto le aplica las siguientes ventajas:

### - La Ejecución del código traducido suele ser más rápida.
### - Solo el programador debe tener el compilador, el usuario final puede usar el código sin él.
### - El código traducido se almacena en lenguaje máquina, ya que es muy dificl de entender, es probable mantener en secreto los inventos o trucos del programador.

### Y también las siguientes desventajas:

### - La compilación en si misma puede llevar mucho tiempo; es posible que no se pueda ejecutar el código inmediatamente después de cualquier modificación.
### - Se deben tener tantos compiladores como plataformas de hardware en las que se deseé que el código se ejecute.
    

# Issues 8°

## Funciones principales

### print() -------> Permite imprimir en pantalla lo que esta dentro de los parentesis. La utilización de comillas permite imprimir el textual dentro de ellas.
### input() -------> Es la función que permite la interacción del usuario con el programa, sirve para introducir datos por teclado, voz, imagen, etc.
### int() ---------> Transforma las cadenas ingresadas por el usuario en números enteros para poder ser usados en operaciones matemáticas por ejemplo.
### if ------------> Es una instrución condicional, es decir que solo se ejecutará si la expresión que la acompaña se verfica como verdadera (true).
### While ---------> A diferencia de -if- que ejecuta la instrucción solo una vez si es -true-, while la va a ejecutar siempre que se evalue como -true-. El cuerpo del bucle vuelve a iniciar una vez completado.
### for -----------> Permite definir la cantidad de iteraciones del ciclo. Se acompaña de la variable de control -i- y de la función range() la cual permitará asignarle valores enteros como argumento que serán los que adoptara la variable de control.
### break ---------> Cuando se cumple la condición, termina el bucle drásticamente sin completar las iteraciones y continúa con la primera instrucción fuera del bucle.
### continue ------> Cuando se cumple la condición, salta en esa iteración, llega al final del bucle y empieza en la siguiente y termina conlas iteraciones faltantes.
