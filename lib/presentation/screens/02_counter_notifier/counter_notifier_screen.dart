import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class CounterNotifierScreen extends ConsumerWidget {
  const CounterNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDark = true;

    return Scaffold(
      appBar: AppBar(title: const Text('Notifier')),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
                size: 100,
              ),
            ),
            const CustomCounterR(),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
