import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  final String info;
  final txt2 = TextEditingController();
   Pagina3(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recibido de pagina 2'),
      ),
      body: Column(
        children: [

          Center(
            child: Text(info),
          ),
Padding(padding: EdgeInsets.all(8.0),),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context,txt2.text);
              },
              child: const Text('Volver')),
              TextField(
                controller: txt2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Texto de vuelta',
                ),
              )
        ],
      ),
    );
  }
}
