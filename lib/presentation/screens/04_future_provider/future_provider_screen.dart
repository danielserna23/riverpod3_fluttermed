import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../widgets/widgets.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsync = ref.watch(pokemonNameProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Future Provider')),
      body: Center(
        child: Column(
          children: [
            const CustomRiv(rivUrl: 'assets/pokeball.riv'),
            pokemonAsync.when(
              data: (pokemon) => CustomText(name: pokemon),
              error: (_, __) => const Text('No se pudo cargar el dato'),
              loading: () => const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          ref.watch(pokemonIdProvider.notifier).update((state) => state + 1);
        },
      ),
    );
  }
}
