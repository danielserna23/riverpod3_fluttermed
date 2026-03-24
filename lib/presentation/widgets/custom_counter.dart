import 'package:flutter/material.dart';

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

class CustomCounterR extends StatelessWidget {
  final VoidCallback? addCount;
  const CustomCounterR({super.key, this.addCount});

  @override
  Widget build(BuildContext context) {
    print('Contador se construye *************');
    return TextButton.icon(
      onPressed: addCount,
      label: const Text('0', style: const TextStyle(fontSize: 100)),
      icon: const Icon(Icons.add, size: 50),
    );
  }
}
