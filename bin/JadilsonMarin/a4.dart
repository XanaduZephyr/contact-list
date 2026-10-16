import 'dart:io';
import 'dart:math';

/// Modelo que representa un triángulo rectángulo a partir de sus catetos.
class TrianguloRectangulo {
  final double catetoA;
  final double catetoB;

  TrianguloRectangulo({required this.catetoA, required this.catetoB});

  /// Calcula la hipotenusa: H = sqrt(pow(a, 2) + pow(b, 2)).
  double calcularHipotenusa() {
    return sqrt(pow(catetoA, 2) + pow(catetoB, 2));
  }

  /// Muestra en pantalla los catetos y la hipotenusa calculada.
  void mostrarResultado() {
    print('Cateto a: $catetoA');
    print('Cateto b: $catetoB');
    print('Hipotenusa: ${calcularHipotenusa()}');
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
    if (numero <= valorMinimo) {
      print('Dato no válido: el lado debe ser mayor que $valorMinimo.');
      continue;
    }
    return numero;
  }
}

void main() {
  print('=== Algoritmo 4: Hipotenusa de un triángulo rectángulo ===');

  final double catetoA = leerDecimal('Ingrese el lado a: ');
  final double catetoB = leerDecimal('Ingrese el lado b: ');

  final TrianguloRectangulo triangulo = TrianguloRectangulo(
    catetoA: catetoA,
    catetoB: catetoB,
  );
  triangulo.mostrarResultado();
}
