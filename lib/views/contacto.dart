import 'package:flutter/material.dart';

class PantallaContacto extends StatefulWidget {
  @override
  _PantallaContactoState createState() => _PantallaContactoState();
}

class _PantallaContactoState extends State<PantallaContacto> {
  final TextEditingController _mensajeController = TextEditingController();
  String _mensaje = '';

  @override
  void initState() {
    super.initState();
    print('Contacto - initState: Inicializando pantalla de contacto');
    _mensajeController.addListener(_actualizarMensaje);
  }

  @override
  Widget build(BuildContext context) {
    print('Contacto - build: Construyendo interfaz');
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
            SizedBox(height: 30),
            TextField(
              controller: _mensajeController,
              decoration: InputDecoration(
                labelText: 'Escribe tu mensaje',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Enviar Mensaje'),
              onPressed: () {
                print('Mensaje a enviar: $_mensaje');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Mensaje enviado: $_mensaje')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _actualizarMensaje() {
    setState(() {
      _mensaje = _mensajeController.text;
    });
  }

  @override
  void dispose() {
    print('Contacto - dispose: Mensaje final: $_mensaje');
    _mensajeController.dispose(); // Importante liberar el controlador
    super.dispose();
  }
}
