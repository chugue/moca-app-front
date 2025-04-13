import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moca/ui/activities/activities_screen.dart';
import 'package:moca/ui/search/search_screen.dart';
import '../../ui/search/screens/search_detail_screen.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SearchScreen()),
      GoRoute(
        path: '/search-detail',
        builder: (context, state) => const SearchDetailScreen(),
      ),
      GoRoute(
        path: '/activities',
        builder: (context, state) => const ActivitiesScreen(),
      ),
    ],
  ),
);
