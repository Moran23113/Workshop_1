import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            context.pop();


          }, child: const Text('Atras')),
          const Text('Si ve este mensaje signfica que el tester drawer funciona :D'),
  

        ],
      ),
],
      ),
    );
  }
}