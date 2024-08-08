// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:workshop_1/pages/pagina1.dart';
import 'package:workshop_1/pages/pagina2.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.looks_one_outlined)),
                Tab(icon: Icon(Icons.looks_two_outlined)),
              ],
            ),
            title: const Text('Navegar'),
          ),
          body: const TabBarView(
            children: [
              Pagina1(),
              Pagina2(),
            ],
          ),
        ),
      ),
    );
  }
}
