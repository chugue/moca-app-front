import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerPrivider = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => SearchScreen())],
);
