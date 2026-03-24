import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/basic_provider',
        builder: (context, state) => const BasicProvidertScreen(),
      ),
      GoRoute(
        path: '/counter_state',
        builder: (context, state) => const CounterStateScreen(),
      ),
      GoRoute(
        path: '/counter_notifier',
        builder: (context, state) => const CounterNotifierScreen(),
      ),
      GoRoute(
        path: '/developers',
        builder: (context, state) => const DevelopersListScreen(),
      ),
      GoRoute(
        path: '/future_provider',
        builder: (context, state) => const FutureProviderScreen(),
      ),
      GoRoute(
        path: '/async_notifier',
        builder: (context, state) => const AsyncNotifierScreen(),
      ),
      GoRoute(
        path: '/stream_provider',
        builder: (context, state) => const StreamProviderScreen(),
      ),
    ],
  );
});
