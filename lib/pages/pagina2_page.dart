import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
          title: usuarioService.existeUsuario
              ? Text('Nombre: ${usuarioService.usuario.nombre}')
              : Text('Página 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text(
                  'Establecer Usuario',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  final newUser = new Usuario(
                      nombre: 'Luis Enrique',
                      edad: 31,
                      profesiones: [
                        'FullStack Developer',
                        'Jugador Profesional'
                      ]);
                  usuarioService.usuario = newUser;
                }),
            MaterialButton(
                child: Text(
                  'Cambiar edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  usuarioService.cambiarEdad(35);
                }),
            MaterialButton(
                child: Text(
                  'Añadir Profesión',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  usuarioService.agregarProfesion();
                })
          ],
        ),
      ),
    );
  }
}
