import 'package:flutter/material.dart';

class PantallaContacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Información de contacto:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Email: contacto@ejemplo.com'),
            Text('Teléfono: 555-1234'),
            Text('Dirección: Calle Falsa 123'),
          ],
        ),
      ),
    );
  }
}
