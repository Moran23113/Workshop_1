import 'package:flutter/material.dart';
import 'package:workshop_1/pages/PAGINA_PRINCIPAL.dart';
import 'package:workshop_1/pages/pagina3.dart';
import 'pages/pagina1.dart';
import 'pages/pagina2.dart';
import 'package:go_router/go_router.dart';
import 'pages/pagina_testerdrawer.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(

        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const PaginaPrincipal();
        },
      ),
      GoRoute(
        path: '/pagina2',
        builder: (BuildContext context, GoRouterState state) {
          return const Pagina2();
        },
      ),
      GoRoute(
        path: '/pagina3',
        builder: (BuildContext context, GoRouterState state) {
          var txt2 = state.extra as String;
          return  Pagina3(txt2);

        },
      ),
      GoRoute(path: 
        '/pagina_testerdrawer',
        builder: (BuildContext context, GoRouterState state) {
          return  PaginaTesterdrawer();
        },),
        GoRoute(path: 
        '/pagina1',
        builder: (BuildContext context, GoRouterState state) {
          return  Pagina1();
        },)
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Probando Tabs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
    );
  }
}
