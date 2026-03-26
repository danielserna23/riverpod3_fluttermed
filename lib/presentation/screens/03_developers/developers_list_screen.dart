import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../widgets/widgets.dart';

class DevelopersListScreen extends ConsumerWidget {
  const DevelopersListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Conf Medellín')),
      body: const _DevelopersListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: ref.read(devsListProvider.notifier).addDeveloper,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _DevelopersListView extends ConsumerWidget {
  const _DevelopersListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final devsFilter = ref.watch(devsFilterProvider);
    final devsList = ref.watch(devsListProvider);
    return Column(
      children: [
        const ListTile(
          title: Text('Listado de invitados'),
          subtitle: Text('Estas son las personas invitadas a Flutter Medellín'),
        ),
        const CustomRiv(size: 100, rivUrl: 'assets/flutter-dash-ticket.riv'),
        SegmentedButton(
          segments: const [
            ButtonSegment(value: DevsFilter.all, icon: Text('Todos')),
            ButtonSegment(value: DevsFilter.attended, icon: Text('Asistieron')),
            ButtonSegment(value: DevsFilter.absentee, icon: Text('Ausentes')),
          ],
          selected: <DevsFilter>{devsFilter},
          onSelectionChanged: (value) {
            ref.read(devsFilterProvider.notifier).toogleFilter(value);
          },
        ),
        const SizedBox(height: 5),

        Expanded(
          child: ListView.builder(
            itemCount: devsList.length,
            itemBuilder: (context, index) {
              final dev = devsList[index];
              return SwitchListTile(
                title: Text(dev.developerName),
                value: dev.attended,
                onChanged: (value) {
                  ref.read(devsListProvider.notifier).toogleAttended(dev.id);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
