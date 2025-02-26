Hice el módulo de no bloqueo, que realiza las asignaciones con el operador `<=`.
Este operador "recuerda" el valor que se le asigna a una variable y asigna todas las variables de manera simultanea al final del time step.

El módulo utiliza una entrada de reloj, y realiza todo su funcionamiento interno cada que el reloj tiene un flanco positivo.

El módulo asigna la salida de ZFlag (bandera cero) a un operador ternario, que asigna 1 si el contenido es 0, y viceversa.
