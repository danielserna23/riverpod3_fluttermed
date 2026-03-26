import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../config/helpers/pokemon_information.dart';

final pokeNameProvider =
    StateNotifierProvider.autoDispose<PokeNameNotifier, AsyncValue<String>>((
      ref,
    ) {
      return PokeNameNotifier();
    });

class PokeNameNotifier extends StateNotifier<AsyncValue<String>> {
  int _currentId = 0;
  PokeNameNotifier() : super(const AsyncLoading()) {
    getPokemonName();
  }

  Future<void> getPokemonName() async {
    _currentId++;
    state = const AsyncValue.loading();

    try {
      final pokeName = await PokemonInformation.getPokemonName(_currentId);
      state = AsyncValue.data(pokeName);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
