import 'package:flutter/material.dart';

class PaginaTesterdrawer extends StatelessWidget {
  const PaginaTesterdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
children: [ 
   Column(
        children: [
          const Center(),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);


          }, child: const Text('Atras')),
          const Text('Si ve este mensaje signfica que el tester drawer funciona :D'),
  

        ],
      ),
],
      ),
    );
  }
}