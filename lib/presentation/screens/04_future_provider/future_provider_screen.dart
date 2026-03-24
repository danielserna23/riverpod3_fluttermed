import 'package:flutter/material.dart';
import 'package:riverpod_3/presentation/widgets/custom_riv.dart';

import '../../widgets/widgets.dart';

class FutureProviderScreen extends StatelessWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
