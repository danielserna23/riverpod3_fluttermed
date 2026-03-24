import 'package:flutter/material.dart';
import 'package:riverpod_3/presentation/widgets/custom_riv.dart';
import 'package:riverpod_3/presentation/widgets/widgets.dart';

class BasicProvidertScreen extends StatelessWidget {
  const BasicProvidertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic Provider')),
      body: const Center(
        child: Column(
          children: [
            CustomRiv(rivUrl: 'assets/cat.riv'),
            CustomText(name: 'Nombres'),
          ],
        ),
      ),
    );
  }
}
