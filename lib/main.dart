import 'package:flutter/material.dart';
import 'package:moca/config/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = routerProvider;

    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Container(child: child);
      },
    );
  }
}
