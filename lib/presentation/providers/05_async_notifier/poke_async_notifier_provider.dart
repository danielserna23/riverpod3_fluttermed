import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/helpers/pokemon_information.dart';

// ============================================================
// NOTA: StateNotifierProvider — No recomendado (legacy)
//
// Requiere gestionar manualmente AsyncValue<T> como estado,
// lo que genera boilerplate innecesario (loading / data / error).
// Fue reemplazado por AsyncNotifierProvider, que delega dicha
// gestión al framework de forma declarativa.
// ============================================================
// final pokeNameProvider =
//     StateNotifierProvider.autoDispose<PokeNameNotifier, AsyncValue<String>>((
//       ref,
//     ) {
//       return PokeNameNotifier();
//     });

// class PokeNameNotifier extends StateNotifier<AsyncValue<String>> {
//   int _currentId = 0;
//   PokeNameNotifier() : super(const AsyncLoading()) {
//     getPokemonName();
//   }

//   Future<void> getPokemonName() async {
//     _currentId++;
//     state = const AsyncValue.loading();

//     try {
//       final pokeName = await PokemonInformation.getPokemonName(_currentId);
//       state = AsyncValue.data(pokeName);
//     } catch (e, st) {
//       state = AsyncValue.error(e, st);
//     }
//   }
// }

/// Proveedor asíncrono que expone el nombre del Pokémon correspondiente al
/// ID interno actual, gestionado por [PokeNameNotifier].
///
/// Usa `.autoDispose` para liberar recursos cuando no hay oyentes activos.
/// El estado es un [AsyncValue<String>] que representa los tres ciclos:
/// carga, dato y error.
final pokeNameProvider =
    AsyncNotifierProvider.autoDispose<PokeNameNotifier, String>(
      PokeNameNotifier.new,
    );

/// Notifier asíncrono que obtiene nombres de Pokémon de forma secuencial.
///
/// Mantiene un contador [_currentId] que se incrementa con cada llamada a
/// [getPokemonName], permitiendo iterar sobre distintos Pokémon sin
/// restablecer el proveedor manualmente.
class PokeNameNotifier extends AsyncNotifier<String> {
  /// ID del Pokémon que se consultará en la próxima petición.
  int _currentId = 1;

  /// Carga inicial: obtiene el nombre del primer Pokémon al montar el proveedor.
  @override
  Future<String> build() {
    return PokemonInformation.getPokemonName(_currentId);
  }

  /// Incrementa el ID y solicita el nombre del siguiente Pokémon.
  ///
  /// Utiliza [AsyncValue.guard] para capturar excepciones y convertirlas
  /// automáticamente en [AsyncValue.error], evitando bloques try/catch manuales.
  Future<void> getPokemonName() async {
    _currentId++;
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(
      () => PokemonInformation.getPokemonName(_currentId),
    );
  }
}
