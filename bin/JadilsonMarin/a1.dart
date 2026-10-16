import 'dart:io';

/// Modelo que representa una persona con su nombre y su edad.
class Persona {
  final String nombre;
  final int edad;

  Persona({required this.nombre, required this.edad});

  /// Retorna true cuando la edad es igual o mayor a 18 años.
  bool esMayorDeEdad() {
    return edad >= 18;
  }

  /// Muestra en pantalla los datos de la persona y el resultado de la validación.
  void mostrarResultado() {
    if (esMayorDeEdad()) {
      print('$nombre es mayor de edad');
    } else {
      print('$nombre es menor de edad');
    }
    print('Nombre: $nombre - Edad: $edad años');
  }
}

/// Solicita un texto por consola y valida que no esté vacío.
String leerTexto(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    final String? entrada = stdin.readLineSync();
    if (entrada == null) {
      print('No se recibieron datos por consola. Fin del programa.');
      exit(0);
    }
    final String texto = entrada.trim();
    if (texto.isEmpty) {
      print('Dato no válido: el campo no puede quedar vacío.');
      continue;
    }
    return texto;
  }
}

/// Solicita un número entero por consola y valida el formato y el rango.
int leerEntero(String mensaje, {int valorMinimo = 0}) {
  while (true) {
    final String entrada = leerTexto(mensaje);
    final int? numero = int.tryParse(entrada);
    if (numero == null) {
      print('Dato no válido: debe digitar un número entero.');
      continue;
    }
    if (numero < valorMinimo) {
      print('Dato no válido: el valor debe ser mayor o igual a $valorMinimo.');
      continue;
    }
    return numero;
  }
}

void main() {
  print('=== Algoritmo 1: Mayor o menor de edad ===');

  final String nombre = leerTexto('Ingrese su nombre: ');
  final int edad = leerEntero('Ingrese su edad: ');

  final Persona persona = Persona(nombre: nombre, edad: edad);
  persona.mostrarResultado();
}
