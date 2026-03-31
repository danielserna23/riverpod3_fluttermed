import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CounterNotifierScreen extends StatelessWidget {
  const CounterNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifier'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: const Center(child: Center(child: CustomCounter(count: 0))),
    );
  }
}
