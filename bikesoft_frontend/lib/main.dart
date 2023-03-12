import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Color textColor = Colors.black; // Inicializamos el color de texto en negro

  void _changeColor() {
    setState(() {
      // Generamos un color aleatorio para el texto
      textColor = Color.fromRGBO(
        // Valores RGB entre 0 y 255
        // Random.nextInt(256) devuelve un número aleatorio entre 0 y 255
        // El primer parámetro es la cantidad de rojo, el segundo la cantidad de verde, el tercero la cantidad de azul
        // La función Color.fromRGBO construye un Color a partir de estos valores
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1, // Opacidad al 100%
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primera app en Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola, Flutter'),
        ),
        body: Center(
          child: Text(
            'Bienvenido a mi aplicación',
            style: TextStyle(
              fontSize: 30,
              color: textColor, // Usamos el color de texto dinámico
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _changeColor, // Asignamos la función al botón
          child: Icon(Icons.color_lens),
        ),
      ),
    );
  }
}
