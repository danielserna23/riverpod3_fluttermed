import 'package:flutter/material.dart';
import 'package:riverpod_3/presentation/widgets/custom_counter.dart';
import 'package:riverpod_3/presentation/widgets/custom_riv.dart';
import 'package:riverpod_3/presentation/widgets/custom_text.dart';

class CounterStateScreen extends StatelessWidget {
  const CounterStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State')),
      body: const Center(
        child: Column(
          children: [
            Spacer(),
            CustomRiv(size: 150, rivUrl: 'assets/dart_flutter.riv'),
            CustomCounter(count: 0),
            CustomText(name: 'Nombre'),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
