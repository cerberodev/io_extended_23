import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:io_extended_23/counter/counter.dart';
import 'package:io_extended_23/gmail/gmail.dart';
import 'package:io_extended_23/home/home.dart';
import 'package:io_extended_23/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'counter',
              builder: (BuildContext context, GoRouterState state) {
                return const CounterPage();
              },
            ),
            GoRoute(
              path: 'gmail',
              builder: (BuildContext context, GoRouterState state) {
                return const GmailPage();
              },
            ),
          ],
        ),
      ],
    );

    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
