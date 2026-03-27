import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../widgets/widgets.dart';

class CounterNotifierScreen extends ConsumerWidget {
  const CounterNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Se construye el build ===========================');
    final isDark = true;

    return Scaffold(
      appBar: AppBar(title: const Text('Notifier')),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Consumer(
              builder: (context, ref, child) {
                return IconButton(
                  onPressed: () {},
                  icon: Icon(
                    isDark
                        ? Icons.dark_mode_outlined
                        : Icons.light_mode_outlined,
                    size: 100,
                  ),
                );
              },
            ),
            CustomCounterR(
              addCount: () {
                ref.read(counterStateProvider.notifier).increment();
              },
            ),
            const CustomText(name: 'Nombre'),
            const Spacer(flex: 2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {},
      ),
    );
  }
}
