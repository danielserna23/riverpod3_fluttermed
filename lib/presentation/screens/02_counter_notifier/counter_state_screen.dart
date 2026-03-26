import 'package:flutter/material.dart';

import '../../../config/helpers/random_generator.dart';
import '../../widgets/widgets.dart';

class CounterStateScreen extends StatefulWidget {
  const CounterStateScreen({super.key});

  @override
  State<CounterStateScreen> createState() => _CounterStateScreenState();
}

class _CounterStateScreenState extends State<CounterStateScreen> {
  int counter = 0;
  String name = RandomGenerator.getRandomName();

  void increment() {
    setState(() {
      counter++;
    });
  }

  void changeName() {
    setState(() {
      name = RandomGenerator.getRandomName();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Se construye el build ===========================');

    return Scaffold(
      appBar: AppBar(title: const Text('State')),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const CustomRiv(size: 150, rivUrl: 'assets/dart_flutter.riv'),
            CustomCounter(count: counter, addCount: increment),
            CustomText(name: name),
            const Spacer(flex: 2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: changeName,
      ),
    );
  }
}
