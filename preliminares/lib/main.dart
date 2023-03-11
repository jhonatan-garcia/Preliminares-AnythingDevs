import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items = [
    'Elemento 1',
    'Elemento 2',
    'Elemento 3',
    'Elemento 4',
    'Elemento 5',
    'Elemento 6',
    'Elemento 7',
    'Elemento 8',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi aplicación'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menú'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Servicios'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Inventario'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Reportes'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}