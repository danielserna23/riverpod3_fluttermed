import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/01_basic_provider/basic_provider.dart';
import '../../widgets/widgets.dart';

class BasicProvidertScreen extends ConsumerWidget {
  const BasicProvidertScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameBasicProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Basic Provider')),
      body: Center(
        child: Column(
          children: [
            CustomRiv(rivUrl: 'assets/cat.riv'),
            CustomText(name: name),
          ],
        ),
      ),
    );
  }
}
