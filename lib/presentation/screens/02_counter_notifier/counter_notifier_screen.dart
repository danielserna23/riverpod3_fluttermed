import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CounterNotifierScreen extends StatelessWidget {
  const CounterNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            const CustomCounter(count: 0),
            const CustomText(name: 'Nombre'),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
