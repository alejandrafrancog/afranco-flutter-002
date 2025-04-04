import 'package:flutter/material.dart';
import 'acerca_de.dart';
import 'contacto.dart';

class PantallaInicio extends StatefulWidget {
  @override
  _PantallaInicioState createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  int _contador = 0; // Variable de estado

  @override
  void initState() {
    super.initState();
    print('initState: Se inicializa el estado');
  }

  @override
  Widget build(BuildContext context) {
    print('build: Se reconstruye la interfaz');
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio (Contador: $_contador)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido a nuestra aplicación!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Contador: $_contador',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Aumentar Contador'),
              onPressed: _incrementarContador,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Ir a Acerca de'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaAcercaDe()),
                    );
                  },
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  child: Text('Ir a Contacto'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaContacto()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _incrementarContador() {
    setState(() {
      _contador++;
      print('setState: Contador aumentado a $_contador');
    });
  }

  @override
  void dispose() {
    print('dispose: Se liberan recursos');
    super.dispose();
  }
}
