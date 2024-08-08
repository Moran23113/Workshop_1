import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';

class PaginaTesterdrawer extends StatefulWidget {
  const PaginaTesterdrawer({super.key});

  @override
  State<PaginaTesterdrawer> createState() => _PaginaTesterdrawerState();
}

class _PaginaTesterdrawerState extends State<PaginaTesterdrawer> {
  TextEditingController x = TextEditingController();
  TextEditingController y = TextEditingController();
  TextEditingController z = TextEditingController();
  int op = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(30.0)),
          Column(
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: x,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Primer Numero',
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(30.0)),
              SizedBox(
                width: 200,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: y,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Segundo Numero',
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(30.0)),
              SizedBox(
                width: 150,
                child: DropdownButton(
                  value: op,
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text('Suma'),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text('Resta'),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: Text('Multiplicacion'),
                    ),
                    DropdownMenuItem(
                      value: 4,
                      child: Text('Division'),
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      op = value as int;
                    });
                  },
                ),
              ),
              Padding(padding: EdgeInsets.all(30.0)),
              SizedBox(
                width: 200,
                child: TextField(
                  readOnly: true,
                  controller: z,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Respuesta',
                  ),
                ),
              ),
              const Center(),
              Padding(padding: EdgeInsets.all(30.0)),
              ElevatedButton(
                  onPressed: () {
                    if (op == 1) {
                      z.text =
                          (int.parse(x.text) + int.parse(y.text)).toString();
                    } else if (op == 2) {
                      z.text =
                          (int.parse(x.text) - int.parse(y.text)).toString();
                    } else if (op == 3) {
                      z.text =
                          (int.parse(x.text) * int.parse(y.text)).toString();
                    } else if (op == 4) {
                      z.text =
                          (int.parse(x.text) / int.parse(y.text)).toString();
                    }
                  },
                  child: const Text('Calcular')),
            ],
          ),
        ],
      ),
    ));
  }
}
