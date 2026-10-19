import 'dart:io';

// Taller 1 - Algoritmo 1: Validación de Mayoría de Edad
// Desarrollado por: Deimer Marulanda

void main() {
  print('>>> SISTEMA DE CONTROL DE ACCESO - EDAD <<<');

  stdout.write('Por favor ingrese su nombre: ');
  String? nombre = stdin.readLineSync();

  stdout.write('Por favor ingrese su edad en años: ');
  int? edad = int.tryParse(stdin.readLineSync() ?? '');

  if (nombre == null || nombre.trim().isEmpty || edad == null) {
    print('Datos inválidos. Por favor reinicie el programa.');
    return;
  }

  print('\n-----------------------------');
  print('Ciudadano: ${nombre.trim()}');
  print('Edad registrada: $edad');
  if (edad >= 18) {
    print('Dictamen: Es MAYOR de edad (Cumple con los requisitos).');
  } else {
    print('Dictamen: Es MENOR de edad (No cumple con los requisitos).');
  }
  print('-----------------------------');
}
