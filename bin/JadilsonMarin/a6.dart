class SerieNumerica {
  final int limite;

  SerieNumerica({required this.limite});

  /// Genera la serie con valores menores o iguales al límite.
  /// La serie inicia en 1 y cada término es la suma de los dos anteriores.
  List<int> generarSerie() {
    final List<int> serie = <int>[];
    int terminoAnterior = 0;
    int terminoActual = 1;

    while (terminoActual <= limite) {
      serie.add(terminoActual);
      final int terminoSiguiente = terminoAnterior + terminoActual;
      terminoAnterior = terminoActual;
      terminoActual = terminoSiguiente;
    }
    return serie;
  }

  /// Imprime en pantalla los valores de la serie.
  void imprimirSerie() {
    final List<int> serie = generarSerie();
    if (serie.isEmpty) {
      print('No hay valores de la serie menores o iguales a $limite.');
      return;
    }
    print('Serie hasta $limite:');
    print(serie.join(' '));
  }
}

void main() {
  print('=== Algoritmo 6: Serie numérica hasta 100 ===');

  const int limite = 100;
  final SerieNumerica serie = SerieNumerica(limite: limite);
  serie.imprimirSerie();
}
