import 'package:flutter/material.dart';
import 'package:workshop_1/pages/pagina3.dart';
import 'package:go_router/go_router.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  var resultado = '------>Esperando Respuesta...<------';

  @override
  Widget build(BuildContext context) {
    final txt = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade700,
        title: const Text(
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decorationColor: Colors.red,
              decorationThickness: 5,
              color: Colors.black,
            ),
            'Test envio de informacion'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: txt,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Texto de prueba',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                var result = await context.push('/pagina3', extra: txt.text);
                setState(() {
                  if (result != null && result is String) {
                    resultado = result;
                  }
                });
              },
              child: Text('enviar')),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(resultado),
        ],
      ),
    );
  }
}
