import 'dart:io';


bool esMayor(int edad) => edad >= 18;

void main() {
  print('--- Verificación de Mayoría de Edad ---');

  // Lectura del nombre
  String nombre = '';
  do {
    stdout.write('Escriba el nombre completo: ');
    nombre = stdin.readLineSync()?.trim() ?? '';
    if (nombre.isEmpty) {
      print('Aviso: Debe ingresar un nombre válido.');
    }
  } while (nombre.isEmpty);

  // Lectura de la edad
  int? edad;
  while (edad == null || edad < 0) {
    stdout.write('Escriba la edad: ');
    String entrada = stdin.readLineSync()?.trim() ?? '';
    edad = int.tryParse(entrada);
    if (edad == null || edad < 0) {
      print('Aviso: Ingrese una edad numérica válida.');
    }
  }

  // Validación y salida
  String estado = esMayor(edad) ? 'Mayor de edad' : 'Menor de edad';
  print('\n[RESULTADO]');
  print('Usuario: $nombre');
  print('Edad: $edad años');
  print('Estado legal: $estado');
}
