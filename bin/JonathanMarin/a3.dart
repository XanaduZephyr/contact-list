import 'dart:io';


class FichaEmpleado {
  String nombre;
  double horas;
  double valorHora;

  FichaEmpleado(this.nombre, this.horas, this.valorHora);

  double get salarioNeto => horas * valorHora;
}

double solicitarValor(String etiqueta) {
  while (true) {
    stdout.write('$etiqueta: ');
    String? linea = stdin.readLineSync()?.trim().replaceAll(',', '.');
    double? valor = double.tryParse(linea ?? '');
    if (valor != null && valor > 0) {
      return valor;
    }
    print('Entrada inválida. Debe ser un número mayor a 0.');
  }
}

void main() {
  print('====================================');
  print('   MÓDULO DE LIQUIDACIÓN MENSUAL    ');
  print('====================================');

  stdout.write('Nombre del colaborador: ');
  String colaborador = stdin.readLineSync()?.trim() ?? 'Sin Nombre';

  double horasMes = solicitarValor('Cantidad de horas laboradas');
  double tarifa = solicitarValor('Tarifa por hora trabajada (\$)');

  FichaEmpleado empleado = FichaEmpleado(colaborador, horasMes, tarifa);

  print('\n------------ COMPROBANTE ------------');
  print('Colaborador     : ${empleado.nombre}');
  print('Horas en el mes : ${empleado.horas}');
  print('Tarifa acordada : \$${empleado.valorHora.toStringAsFixed(2)}');
  print('-------------------------------------');
  print('TOTAL DEVENGADO : \$${empleado.salarioNeto.toStringAsFixed(2)}');
  print('-------------------------------------');
}
