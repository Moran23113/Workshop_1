import 'package:flutter/material.dart';
import 'package:workshop_1/pages/pagina3.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Pagina2State();
  
}

class _Pagina2State extends State<Pagina2> {
      var resultado = 'Esperando Respuesta...';

  @override
  Widget build(BuildContext context) {
    final txt = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test envio de informacion'),
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
                onPressed: ()  async {
                  var result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Pagina3(txt.text)));

                          setState(() {
                            resultado = result;
                          });
                },
                child: Text('enviar')),


                Text(resultado),

              
          ],
        ),
      );
  }
}
