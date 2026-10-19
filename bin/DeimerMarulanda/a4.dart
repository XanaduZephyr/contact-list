import 'dart:io';
import 'dart:math';

// Taller 1 - Algoritmo 4: Hipotenusa de Triángulo Rectángulo
// Desarrollado por: Deimer Marulanda

void main() {
  print('>>> GEOMETRÍA: CÁLCULO DE LA HIPOTENUSA <<<');

  stdout.write('Ingrese la longitud del cateto 1: ');
  double? cateto1 = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '');

  stdout.write('Ingrese la longitud del cateto 2: ');
  double? cateto2 = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '');

  if (cateto1 == null || cateto2 == null || cateto1 <= 0 || cateto2 <= 0) {
    print('Las dimensiones de los catetos deben ser números mayores a cero.');
    return;
  }

  // Teorema de Pitágoras: h = √(a² + b²)
  double h = sqrt((cateto1 * cateto1) + (cateto2 * cateto2));

  print('\nCateto A : $cateto1');
  print('Cateto B : $cateto2');
  print('Hipotenusa calculada: ${h.toStringAsFixed(2)}');
}
