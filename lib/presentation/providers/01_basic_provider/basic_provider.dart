import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/helpers/random_generator.dart';

/// Proveedor de solo lectura que expone un nombre aleatorio generado en cada
/// suscripción.
///
/// Utiliza `.autoDispose` para liberar el estado automáticamente cuando no hay
/// oyentes activos, evitando retención innecesaria de memoria.
///
final nameBasicProvider = Provider.autoDispose<String>(
  (ref) => RandomGenerator.getRandomName(),
);
