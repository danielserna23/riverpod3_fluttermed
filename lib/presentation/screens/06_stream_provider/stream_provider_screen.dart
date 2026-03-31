import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Provider')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ListTile(title: Text('Nombres'));
        },
      ),
    );
  }
}
