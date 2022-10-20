//Avreriguar si es stateful o stateless
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soy un texto'),
      ),
      //Tenemos la parte central el contenido en si de mi pagina
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hola mundo',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/onepunchman/images/c/c0/Anime_-_Saitama.jpg/revision/latest/scale-to-width-down/350?cb=20200308230733&path-prefix=es',
            height: 300,
            fit: BoxFit.cover,
          )
        ],
      )),

      bottomNavigationBar: BottomAppBar(
        child: Container(
            //Me devuelve el alto de la pantalla del dispositivo actual
            // 5% OJO que hay que controlar la altura de las cosas

            height: MediaQuery.of(context).size.height * 0.05),
      ),
    );
  }
}
