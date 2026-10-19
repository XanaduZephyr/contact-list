import 'dart:io';
// El Aprendiz 2 definirá los atributos de esta clase
class Contacto {
  String nombre;
  String telefono;
  Contacto(this.nombre, this.telefono);
}
void main() {
  List<Contacto> agenda = [];
  bool ejecutando = true;
  while (ejecutando) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');
    String? opcion = stdin.readLineSync();
    switch (opcion) {
      case '1':
        print('\n--- Agregar Nuevo Contacto ---');
        stdout.write('Ingrese el nombre: ');
        String? nombre = stdin.readLineSync();
        stdout.write('Ingrese el teléfono: ');
        String? telefono = stdin.readLineSync();

        if (nombre != null && nombre.trim().isNotEmpty &&
            telefono != null && telefono.trim().isNotEmpty) {
          agenda.add(Contacto(nombre.trim(), telefono.trim()));
          print('Contacto "$nombre" agregado exitosamente.');
        } else {
          print('Error: El nombre y el teléfono no pueden estar vacíos.');
        }
        break;

      case '2':
        print('\n--- Lista de Contactos ---');
        if (agenda.isEmpty) {
          print('La agenda está vacía.');
        } else {
          for (int i = 0; i < agenda.length; i++) {
            print('${i + 1}. Nombre: ${agenda[i].nombre} | Teléfono: ${agenda[i].telefono}');
          }
        }
        break;

      case '3':
        print('\n--- Buscar Contacto ---');
        stdout.write('Ingrese el nombre a buscar: ');
        String? criterio = stdin.readLineSync();

        if (criterio != null && criterio.trim().isNotEmpty) {
          var encontrados = agenda.where(
            (c) => c.nombre.toLowerCase().contains(criterio.toLowerCase().trim())
          ).toList();

          if (encontrados.isEmpty) {
            print('No se encontró ningún contacto con ese nombre.');
          } else {
            print('Contactos encontrados:');
            for (var c in encontrados) {
              print('- Nombre: ${c.nombre} | Teléfono: ${c.telefono}');
            }
          }
        } else {
          print('Error: Debe ingresar un texto para buscar.');
        }
        break;

      case '4':
        print('\n--- Eliminar Contacto ---');
        stdout.write('Ingrese el nombre del contacto a eliminar: ');
        String? nombreEliminar = stdin.readLineSync();

        if (nombreEliminar != null && nombreEliminar.trim().isNotEmpty) {
          int cantidadInicial = agenda.length;
          agenda.removeWhere(
            (c) => c.nombre.toLowerCase() == nombreEliminar.toLowerCase().trim()
          );

          if (agenda.length < cantidadInicial) {
            print('Contacto "$nombreEliminar" eliminado exitosamente.');
          } else {
            print('No se encontró ningún contacto con ese nombre para eliminar.');
          }
        } else {
          print('Error: Debe ingresar un nombre válido.');
        }
        break;

      case '5':
        print('Saliendo de la agenda...');
        ejecutando = false;
        break;

      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}
