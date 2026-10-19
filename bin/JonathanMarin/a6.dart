

void main() {
  print('--- Generador de Secuencia Numérica (Máximo 100) ---');

  int maximo = 100;
  List<int> terminos = [];

  int a = 1;
  int b = 1;

  while (a <= maximo) {
    terminos.add(a);
    int siguiente = a + b;
    a = b;
    b = siguiente;
  }

  print('Valores obtenidos que no superan el tope ($maximo):');
  for (int i = 0; i < terminos.length; i++) {
    print('Término ${i + 1}: ${terminos[i]}');
  }

  print('\nSecuencia en línea: ${terminos.join(", ")}');
}
