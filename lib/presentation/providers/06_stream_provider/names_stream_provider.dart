import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/helpers/random_generator.dart';

/// Proveedor de flujo que acumula nombres de desarrolladores emitidos en tiempo
/// real por [RandomGenerator.randomNameStream].
///
/// Cada vez que el stream fuente emite un nuevo nombre, se genera una copia
/// inmutable de la lista con el nombre agregado al final y se emite como nuevo
/// estado, garantizando que los widgets observadores reconstruyan de forma
/// eficiente solo ante cambios reales.
///
/// Comportamiento:
/// - Emite una lista vacía de forma inmediata como estado inicial, evitando que
///   la UI permanezca en estado de carga cuando aún no hay nombres disponibles.
/// - Usa `.autoDispose` para cancelar la suscripción al stream y liberar memoria
///   en cuanto no haya oyentes activos.
///
/// Fuente de datos: [RandomGenerator.randomNameStream].
final devsNamesProvider = StreamProvider.autoDispose<List<String>>((
  ref,
) async* {
  // Estado inicial vacío para evitar el ciclo de carga en la primera emisión.
  var names = <String>[];
  yield names;

  // Escucha el stream fuente y acumula cada nombre en una nueva lista inmutable.
  await for (final name in RandomGenerator.randomNameStream()) {
    names = [...names, name];
    yield names;
  }
});
