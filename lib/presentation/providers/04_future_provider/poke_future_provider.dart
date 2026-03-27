import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../config/helpers/pokemon_information.dart';

final pokemonNameProvider = FutureProvider.autoDispose<String>((ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  return pokemonName;
});

//Task: Transforma este StateProvider
//en un NotifierProvider para un mejor manejo del estado

final pokemonIdProvider = StateProvider.autoDispose<int>((ref) => 1);
