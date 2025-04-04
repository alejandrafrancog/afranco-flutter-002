import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Text(
          '¡Bienvenido a nuestra aplicación!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
