import 'package:flutter/material.dart';

import '../../providers/03_developers/developers_provider.dart';
import '../../widgets/custom_riv.dart';

class DevelopersListScreen extends StatelessWidget {
  const DevelopersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Conf Medellín')),
      body: const _DevelopersListView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class _DevelopersListView extends StatelessWidget {
  const _DevelopersListView();

  @override
  Widget build(BuildContext context) {
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
          selected: const <DevsFilter>{DevsFilter.all},
          onSelectionChanged: (value) {},
        ),
        const SizedBox(height: 5),

        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return SwitchListTile(
                title: const Text('Developer name'),
                value: true,
                onChanged: (value) {},
              );
            },
          ),
        ),
      ],
    );
  }
}
