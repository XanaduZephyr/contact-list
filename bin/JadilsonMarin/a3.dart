import 'dart:io';

/// Modelo que representa la planilla de un empleado.
class PlanillaEmpleado {
  final String nombreEmpleado;
  final double horasLaboradas;
  final double tarifaHora;

  PlanillaEmpleado({
    required this.nombreEmpleado,
    required this.horasLaboradas,
    required this.tarifaHora,
  });

  /// Calcula el total devengado en el mes (horas laboradas * tarifa por hora).
  double calcularTotalDevengado() {
    return horasLaboradas * tarifaHora;
  }

  /// Imprime la planilla del empleado con los datos solicitados.
  void imprimirPlanilla() {
    print('Nombre del empleado: $nombreEmpleado');
    print('Horas laboradas en el mes: $horasLaboradas');
    print('Tarifa por hora: $tarifaHora');
    print('Total devengado: ${calcularTotalDevengado()}');
  }
}

/// Solicita un texto por consola y valida que no esté vacío.
String leerTexto(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    final String? entrada = stdin.readLineSync();
    if (entrada == null) {
      print('No se recibieron datos por consola. Fin del programa.');
      exit(0);
    }
    final String texto = entrada.trim();
    if (texto.isEmpty) {
      print('Dato no válido: el campo no puede quedar vacío.');
      continue;
    }
    return texto;
  }
}

/// Solicita un número decimal por consola y valida el formato y el rango.
double leerDecimal(String mensaje, {double valorMinimo = 0}) {
  while (true) {
    final String entrada = leerTexto(mensaje).replaceAll(',', '.');
    final double? numero = double.tryParse(entrada);
    if (numero == null) {
      print('Dato no válido: debe digitar un número.');
      continue;
    }
    if (numero < valorMinimo) {
      print('Dato no válido: el valor debe ser mayor que $valorMinimo.');
      continue;
    }
    return numero;
  }
}

void main() {
  print('=== Algoritmo 3: Planilla de un empleado ===');

  final String nombreEmpleado = leerTexto('Ingrese el nombre del empleado: ');
  final double horasLaboradas = leerDecimal(
    'Ingrese la cantidad de horas laboradas en el mes: ',
  );
  final double tarifaHora = leerDecimal('Ingrese la tarifa por hora: ');

  final PlanillaEmpleado planilla = PlanillaEmpleado(
    nombreEmpleado: nombreEmpleado,
    horasLaboradas: horasLaboradas,
    tarifaHora: tarifaHora,
  );
  planilla.imprimirPlanilla();
}
