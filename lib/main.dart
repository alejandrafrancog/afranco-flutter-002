import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless vs Stateful',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo Stateless vs Stateful')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget Stateless
            TextoFijo(),
            SizedBox(height: 30),
            // Widget Stateful
            ContadorNumerico(),
          ],
        ),
      ),
    );
  }
}

// Ejemplo de StatelessWidget - Texto fijo que no cambia
class TextoFijo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Este texto nunca cambia',
      style: TextStyle(fontSize: 20),
    );
  }
}

// Ejemplo de StatefulWidget - Contador que puede cambiar
class ContadorNumerico extends StatefulWidget {
  @override
  _ContadorNumericoState createState() => _ContadorNumericoState();
}

class _ContadorNumericoState extends State<ContadorNumerico> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Número: $_contador',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _incrementarContador,
          child: Text('Aumentar número'),
        ),
      ],
    );
  }
}