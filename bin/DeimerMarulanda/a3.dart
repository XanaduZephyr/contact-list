import 'dart:io';

// Taller 1 - Algoritmo 3: Liquidación de Sueldo
// Desarrollado por: Deimer Marulanda

class Nomina {
  final String trabajador;
  final double horas;
  final double valorHora;

  Nomina(this.trabajador, this.horas, this.valorHora);

  double get devengado => horas * valorHora;

  void generarRecibo() {
    print('\n=======================================');
    print('         PLANILLA DE LIQUIDACIÓN       ');
    print('=======================================');
    print('Trabajador      : $trabajador');
    print('Horas en el mes : $horas');
    print('Valor unitario  : \$$valorHora');
    print('---------------------------------------');
    print('TOTAL A PAGAR   : \$$devengado');
    print('=======================================');
  }
}

void main() {
  print('>>> SISTEMA DE GESTIÓN DE PLANILLA <<<');

  stdout.write('Nombre del empleado: ');
  String empleado = stdin.readLineSync()?.trim() ?? 'Empleado Anónimo';

  stdout.write('Total de horas laboradas: ');
  double? horas = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '');

  stdout.write('Tarifa por hora: ');
  double? tarifa = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '');

  if (horas == null || tarifa == null) {
    print('Entrada inválida.');
    return;
  }

  Nomina recibo = Nomina(empleado, horas, tarifa);
  recibo.generarRecibo();
}
