import 'package:flutter_riverpod/flutter_riverpod.dart';

// ============================================================
// NOTA: StateProvider — No recomendado
// La lógica del estado se mezcla con la capa de presentación,
// lo que dificulta el mantenimiento y las pruebas unitarias.
// ============================================================
// final counterStateProvider = StateProvider<int>((ref) {
//   return 5;
// });

/// Proveedor preferido: encapsula la lógica en [CounterNotifier],
/// manteniendo la vista limpia y el estado testeable de forma aislada.
final counterStateProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);

class CounterNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void increment() => state = state + 1;
}
