import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future Provider')),
      body: const Center(
        child: Column(
          children: [
            CustomRiv(rivUrl: 'assets/pokeball.riv'),
            CustomText(name: 'Pokémon'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {},
      ),
    );
  }
}
