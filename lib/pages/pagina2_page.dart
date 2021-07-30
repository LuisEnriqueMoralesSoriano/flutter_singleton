import 'package:estados_app/bloc/usuario/usuario_bloc.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Página 2')),
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
                      profesiones: ['Fullstack Developer']);

                  usuarioBloc.add(ActivarUsuario(newUser));
                }),
            MaterialButton(
                child: Text(
                  'Cambiar edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  usuarioBloc.add(CambiarEdad(30));
                }),
            MaterialButton(
                child: Text(
                  'Añadir Profesión',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  usuarioBloc.add(AgregarProfesion('Oracle SOA Developer'));
                })
          ],
        ),
      ),
    );
  }
}
