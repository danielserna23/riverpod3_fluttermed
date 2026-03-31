import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class CounterNotifierScreen extends ConsumerWidget {
  const CounterNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDark = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifier'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
              size: 40,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(children: [Spacer(), CustomCounterR(), Spacer(flex: 2)]),
      ),
    );
  }
}
