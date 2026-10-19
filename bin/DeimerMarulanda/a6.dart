import 'dart:io';

// Taller 1 - Algoritmo 6: Sucesión Fibonacci hasta el 100
// Desarrollado por: Deimer Marulanda

void main() {
  print('>>> SERIE FIBONACCI (VALORES <= 100) <<<');

  int anterior = 1;
  int actual = 1;

  stdout.write('Secuencia: $anterior, $actual');

  while (true) {
    int suma = anterior + actual;
    if (suma > 100) {
      break;
    }
    stdout.write(', $suma');
    anterior = actual;
    actual = suma;
  }

  print('\nGeneración de serie culminada.');
}
