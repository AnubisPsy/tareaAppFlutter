import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Botón Tocado'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                child: Center(child: Text('Tocar')),
              ),
            ),
            GestureDetector(
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Doble Tocar'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.green,
                child: Center(child: Text('Doble Tocar')),
              ),
            ),
            GestureDetector(
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Mantener Pulsado'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.orange,
                child: Center(child: Text('Mantener Pulsado')),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Mensaje de Confirmación'),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                // Navegar a la página de inicio
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Acerca de'),
              onTap: () {
                // Navegar a la página "Acerca de"
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Configuración'),
              onTap: () {
                // Navegar a la página de configuración
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
