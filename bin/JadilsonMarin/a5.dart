import 'dart:io';

/// Modelo que representa una temperatura y sus conversiones.
class Temperatura {
  final double gradosCelsius;

  Temperatura({required this.gradosCelsius});

  /// Convierte la temperatura a grados Fahrenheit: F = (C * 1.8) + 32.
  double convertirAFahrenheit() {
    return (gradosCelsius * 1.8) + 32;
  }

  /// Muestra en pantalla la temperatura ingresada y su equivalente.
  void mostrarResultado() {
    print('Temperatura en grados Celsius: $gradosCelsius °C');
    print('Temperatura en grados Fahrenheit: ${convertirAFahrenheit()} °F');
  }
}

/// Solicita un número decimal por consola y valida el formato.
double leerDecimal(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    final String? entrada = stdin.readLineSync();
    if (entrada == null) {
      print('No se recibieron datos por consola. Fin del programa.');
      exit(0);
    }
    final String texto = entrada.trim().replaceAll(',', '.');
    if (texto.isEmpty) {
      print('Dato no válido: el campo no puede quedar vacío.');
      continue;
    }
    final double? numero = double.tryParse(texto);
    if (numero == null) {
      print('Dato no válido: debe digitar un número.');
      continue;
    }
    return numero;
  }
}

void main() {
  print('=== Algoritmo 5: Conversión de grados Celsius a Fahrenheit ===');

  final double gradosCelsius = leerDecimal(
    'Ingrese la temperatura en grados Celsius: ',
  );

  final Temperatura temperatura = Temperatura(gradosCelsius: gradosCelsius);
  temperatura.mostrarResultado();
}
