import 'package:flutter/material.dart';
import 'acerca_de.dart';
import 'contacto.dart';

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido a nuestra aplicación!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Ir a Acerca de'),
              onPressed: () {
                // Navegación a pantalla Acerca de
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaAcercaDe()),
                );
              },
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text('Ir a Contacto'),
              onPressed: () {
                // Navegación a pantalla Contacto
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaContacto()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
