import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moca/ui/activities/activities_screen.dart';
import 'package:moca/ui/search/search_screen.dart';

final _router = GoRouter(
  initialLocation: '/activities',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SearchScreen()),
    GoRoute(
      path: '/activities',
      builder: (context, state) => const ActivitiesScreen(),
    ),
  ],
);

final routerProvider = Provider<GoRouter>((ref) => _router);
