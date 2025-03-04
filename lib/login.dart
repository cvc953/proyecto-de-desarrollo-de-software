import 'package:ap/BotonInicio.dart';
import 'package:ap/LoginInput.dart';
import 'package:ap/google.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(Icons.email_rounded, size: 80),
              SizedBox(height: 10),
              //Text('bienvenido', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              LoginInput(
                controller: username,
                hintText: 'Usuario',
                obscureText: false,
              ),

              LoginInput(
                controller: password,
                hintText: 'Contraseña',
                obscureText: true,
              ),
              SizedBox(height: 10),
              Text(
                '¿olvidaste tu contraseña?',
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(height: 20),

              Botoninicio(onTap: inicio),
              SizedBox(height: 20),

              Text('o', style: TextStyle(color: Colors.grey[600])),
              SizedBox(height: 20),

              Google(),

              SizedBox(height: 60),

              Text(
                '¿no tienes cuenta?',
                style: TextStyle(color: Colors.grey[600]),
              ),
              Text('Registrate', style: TextStyle(color: Colors.blueAccent)),
            ],
          ),
        ),
      ),
    );
  }

  void inicio() {}
}
