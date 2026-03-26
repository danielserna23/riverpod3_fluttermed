import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final devsNameAsync = ref.watch(devsNamesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Provider')),
      body: devsNameAsync.when(
        data: (names) => ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            final name = names[index];
            return ListTile(title: Text(name));
          },
        ),
        error: (_, __) => const Center(child: Text('No cargó ningún nombre')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
