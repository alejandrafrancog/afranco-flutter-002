import 'package:flutter/material.dart';
import 'views/inicio.dart'; // Importamos la pantalla de inicio

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Organizada',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PantallaInicio(), // Pantalla inicial
    );
  }
}
