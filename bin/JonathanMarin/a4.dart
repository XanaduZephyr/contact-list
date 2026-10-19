import 'dart:io';
import 'dart:math';


double leerLado(String nombreLado) {
  while (true) {
    stdout.write('Valor del $nombreLado: ');
    String input = stdin.readLineSync()?.trim().replaceAll(',', '.') ?? '';
    double? medida = double.tryParse(input);
    if (medida != null && medida > 0) {
      return medida;
    }
    print('El lado debe ser una longitud positiva.');
  }
}

void main() {
  print('--- Calculadora Geométrica: Triángulo Rectángulo ---');

  double cateto1 = leerLado('Cateto adyacente (a)');
  double cateto2 = leerLado('Cateto opuesto (b)');

  // H = √(a² + b²)
  double hipotenusa = sqrt((cateto1 * cateto1) + (cateto2 * cateto2));

  print('\n[RESULTADOS]');
  print('Medida Cateto 1 : $cateto1');
  print('Medida Cateto 2 : $cateto2');
  print('Hipotenusa final: ${hipotenusa.toStringAsFixed(4)}');
}
