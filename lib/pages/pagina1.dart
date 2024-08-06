import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'pagina_testerdrawer.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaginaTesterdrawer()));
                },
                child: const Text('Pagina drawer test')),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Pagina test drawer'),
      ),
      body: const Center(
        child: Text('Pagina 1'),
      ),
    );
  }
}
