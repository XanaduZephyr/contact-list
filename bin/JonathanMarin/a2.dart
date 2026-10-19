import 'dart:io';


double pedirNumeroPositivo(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    String entrada = stdin.readLineSync()?.trim().replaceAll(',', '.') ?? '';
    double? valor = double.tryParse(entrada);
    if (valor != null && valor >= 0) {
      return valor;
    }
    print('Error: Debe ingresar una cifra numérica positiva.');
  }
}

void main() {
  print('--- Sistema de Cálculo Física: MRU ---');

  double velocidad = pedirNumeroPositivo('Digite la rapidez o velocidad (m/s): ');
  double tiempo = pedirNumeroPositivo('Digite el tiempo transcurrido (s): ');

  // Fórmula: d = v * t
  double distancia = velocidad * tiempo;

  print('\n=== Resumen del Desplazamiento ===');
  print('Velocidad aplicada: ${velocidad.toStringAsFixed(2)} m/s');
  print('Tiempo empleado   : ${tiempo.toStringAsFixed(2)} s');
  print('Distancia total   : ${distancia.toStringAsFixed(2)} metros');
}
