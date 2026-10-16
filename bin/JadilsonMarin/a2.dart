import 'dart:io';

/// Modelo que representa un movimiento rectilíneo uniforme (MRU).
class MovimientoRectilineoUniforme {
  final double velocidad; // Velocidad constante en metros por segundo (m/s).
  final double tiempo; // Tiempo en segundos (s).

  MovimientoRectilineoUniforme({required this.velocidad, required this.tiempo});

  /// Calcula la distancia recorrida aplicando la fórmula D = V * T.
  double calcularDistancia() {
    return velocidad * tiempo;
  }

  /// Muestra en pantalla los datos y la distancia recorrida.
  void mostrarResultado() {
    print('Velocidad: $velocidad m/s');
    print('Tiempo: $tiempo s');
    print('Distancia recorrida (D = V * T): ${calcularDistancia()} m');
  }
}

/// Solicita un número decimal por consola y valida el formato y el rango.
double leerDecimal(String mensaje, {double valorMinimo = 0}) {
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
    if (numero < valorMinimo) {
      print('Dato no válido: el valor no puede ser negativo.');
      continue;
    }
    return numero;
  }
}

void main() {
  print('=== Algoritmo 2: Distancia recorrida en MRU ===');

  final double velocidad = leerDecimal(
    'Ingrese la velocidad constante (m/s): ',
  );
  final double tiempo = leerDecimal('Ingrese el tiempo (segundos): ');

  final MovimientoRectilineoUniforme movimiento = MovimientoRectilineoUniforme(
    velocidad: velocidad,
    tiempo: tiempo,
  );
  movimiento.mostrarResultado();
}
