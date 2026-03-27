import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/05_async_notifier/poke_async_notifier_provider.dart';
import '../../widgets/widgets.dart';

class AsyncNotifierScreen extends ConsumerWidget {
  const AsyncNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokeNameAsync = ref.watch(pokeNameProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Async Notifier')),
      body: Center(
        child: Column(
          children: [
            CustomRiv(rivUrl: 'assets/pokeball.riv'),
            pokeNameAsync.when(
              data: (name) => CustomText(name: name),
              error: (Object error, StackTrace stackTrace) => Text('Error'),
              loading: () => CircularProgressIndicator(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: ref.read(pokeNameProvider.notifier).getPokemonName,
      ),
    );
  }
}
