import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:io_extended_23/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      key: const Key('homePage'),
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/counter');
              },
              child: const Text('Go to the Counter screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/gmail'),
              child: const Text('Go to the Gmail screen'),
            ),
          ],
        ),
      ),
    );
  }
}
