
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class Pagina3 extends StatelessWidget {
   Pagina3(this.info,{super.key});
   final txt2 = TextEditingController();
   var info="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recibido de pagina 2'),
      ),
      body: Column(
        children: [

          Center(
            child: Text(this.info),
          ),
Padding(padding: EdgeInsets.all(8.0),),
          
              TextField(
                controller: txt2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Texto de vuelta',
                ),
              ),
              ElevatedButton(
              onPressed: () {
                Navigator.pop(context,txt2.text);
              },
              child: const Text('Devolver'),),
        ],
      ),
    );
  }
}
