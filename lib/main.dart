import 'package:flutter/material.dart';
import 'pages/pagina1.dart';
import 'pages/pagina2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DefaultTabController(
        length: 2, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.looks_one_sharp)),
              Tab(icon: Icon(Icons.looks_two_sharp)),
            ],
          ),
          title: const Text('Probando Tabs'),
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
