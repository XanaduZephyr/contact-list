import 'dart:io';

// Taller 1 - Algoritmo 5: Conversión Celsius a Fahrenheit
// Desarrollado por: Deimer Marulanda

void main() {
  print('>>> CONVERSIÓN DE TEMPERATURA: CELSIUS A FAHRENHEIT <<<');

  stdout.write('Ingrese la temperatura en grados Celsius (°C): ');
  double? celsius = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '');

  if (celsius == null) {
    print('Debe ingresar un valor numérico.');
    return;
  }

  // F = (C * 1.8) + 32
  double fahrenheit = (celsius * 1.8) + 32;

  print('\nTemperatura original : $celsius °C');
  print('Temperatura convertida: ${fahrenheit.toStringAsFixed(2)} °F');
}
