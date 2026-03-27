import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/02_counter_notifier/counter_notifier_provider.dart';

class CustomCounter extends StatelessWidget {
  final int count;
  final VoidCallback? addCount;
  const CustomCounter({super.key, required this.count, this.addCount});

  @override
  Widget build(BuildContext context) {
    print('Contador se construye *************');
    return TextButton.icon(
      onPressed: addCount,
      label: Text('$count', style: const TextStyle(fontSize: 100)),
      icon: const Icon(Icons.add, size: 50),
    );
  }
}

class CustomCounterR extends ConsumerWidget {
  final VoidCallback? addCount;
  const CustomCounterR({super.key, this.addCount});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);
    print('Contador se construye *************');
    return TextButton.icon(
      onPressed: addCount,
      label: Text('$counter', style: TextStyle(fontSize: 100)),
      icon: const Icon(Icons.add, size: 50),
    );
  }
}
