import 'dart:io';

// Taller 1 - Algoritmo 2: Cálculo de Distancia (MRU)
// Desarrollado por: Deimer Marulanda

void main() {
  print('>>> CÁLCULO CINEMÁTICO - MOVIMIENTO RECTILÍNEO UNIFORME <<<');

  stdout.write('Ingrese el valor de la rapidez constante (m/s): ');
  double? v = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '');

  stdout.write('Ingrese el tiempo transcurrido en el trayecto (s): ');
  double? t = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '');

  if (v == null || t == null || v < 0 || t < 0) {
    print('Error: Se deben ingresar valores numéricos no negativos.');
    return;
  }

  // d = v * t
  double distancia = v * t;

  print('\n[RESULTADO MRU]');
  print('Distancia recorrida: $distancia m');
}
