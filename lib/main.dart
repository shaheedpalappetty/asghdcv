import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:listview/screen_a.dart';
import 'package:listview/screen_b.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(initialLocation: '/screenA', routes: [
      GoRoute(
        path: '/screenA',
        builder: (context, state) => const ScreenA(),
      ),
      GoRoute(
        path: '/screenB',
        builder: (context, state) => const ScreenB(),
      )
    ]);
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
