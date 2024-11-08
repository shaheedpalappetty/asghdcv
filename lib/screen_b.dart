import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.go('/screenA');
          },
        ),
        automaticallyImplyLeading: true,
        title: const Text(
          'Screen B',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/screenA');
          },
          child: const Text('Go back to Screen A'),
        ),
      ),
    );
  }
}
