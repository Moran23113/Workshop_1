import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pagina_testerdrawer.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pagina 1'),
        ),
        drawer: Drawer(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.push('/pagina_testerdrawer');
              },
              child: const Text('Calculadora'),
            ),
          ],
        )));
  }
}
