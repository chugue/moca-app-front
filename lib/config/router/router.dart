import 'package:go_router/go_router.dart';
import 'package:moca/ui/search/search_screen.dart';

final routerProvider = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SearchScreen()),
  ],
);
