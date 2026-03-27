import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../config/helpers/random_generator.dart';
import '../../../domain/developers.dart';

enum DevsFilter { all, attended, absentee }

const uuid = Uuid();

//================== Manejo de los filtros ======================

final devsFilterProvider = NotifierProvider<DevFilterNotifier, DevsFilter>(
  DevFilterNotifier.new,
);

class DevFilterNotifier extends Notifier<DevsFilter> {
  @override
  build() => DevsFilter.all;

  void toogleFilter(Set<DevsFilter> value) {
    state = value.first;
  }
}

//================== Lista de desarrolladores ======================

final devsListProvider = NotifierProvider<DevsListNotifier, List<Developer>>(
  DevsListNotifier.new,
);

class DevsListNotifier extends Notifier<List<Developer>> {
  @override
  build() => [
    Developer(
      id: uuid.v4(),
      developerName: RandomGenerator.getRandomName(),
      attended: false,
    ),
  ];

  void addDeveloper() {
    state = [
      ...state,
      Developer(
        id: uuid.v4(),
        developerName: RandomGenerator.getRandomName(),
        attended: false,
      ),
    ];
  }

  void toogleAttended(String id) {
    state = state.map((dev) {
      if (dev.id != id) return dev;

      return dev.copyWith(attended: !dev.attended);
    }).toList();
  }
}

// ============================================================
// TASK: Crea un provider que filtre la lista de programadores
// mostrando las tres formas de todos, asistentes y faltantes
// ============================================================
// final devsProvider = Provider<DevsFilter>((ref) {
  //Agrega la lógica faltante dependiendo del filtro
  //recuerda que puedes consultar los otros providers usando el ref
  //final currentFilter = ref.watch(devsFilterProvider);
// });