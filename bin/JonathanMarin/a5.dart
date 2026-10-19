import 'dart:io';


double celsiusAFahrenheit(double celsius) {
  // Fórmula: (°C * 9/5) + 32
  return (celsius * (9.0 / 5.0)) + 32.0;
}

void main() {
  print('--- Conversor de Escalas Termométricas ---');

  double? tempC;
  while (tempC == null) {
    stdout.write('Ingrese la temperatura en grados Celsius (°C): ');
    String linea = stdin.readLineSync()?.trim().replaceAll(',', '.') ?? '';
    tempC = double.tryParse(linea);
    if (tempC == null) {
      print('Por favor introduzca un número decimal válido.');
    }
  }

  double tempF = celsiusAFahrenheit(tempC);

  print('\nReporte de Conversión:');
  print('$tempC °C equivalen exactamente a ${tempF.toStringAsFixed(2)} °F');
}
