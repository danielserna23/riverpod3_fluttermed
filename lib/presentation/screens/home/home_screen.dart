import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Riverpod')),
      body: ListView(
        children: const [
          CustomRiv(rivUrl: 'assets/flutter-dash.riv'),
          CustomTile(
            title: 'Counter Notifier',
            subTitle: 'Menejo del Notifier de Riverpod',
            location: '/counter_notifier',
          ),
          CustomTile(
            title: 'Flutter Conf Medellín',
            subTitle: 'Combinación de Providers en riverpod',
            location: '/developers',
          ),
          CustomTile(
            title: 'Async Notifier',
            subTitle: 'Nueva forma de manejar los Async',
            location: '/async_notifier',
          ),
          CustomTile(
            title: 'Future Provider',
            subTitle: 'Mantener el estado de un future y su retorno',
            location: '/future_provider',
          ),

          CustomTile(
            title: 'Stream Provider',
            subTitle: 'Mantener el estado de un Stream y sus emisiones',
            location: '/stream_provider',
          ),
        ],
      ),
    );
  }
}
