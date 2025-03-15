import 'package:ap/LoginInput.dart';
import 'package:ap/ui.dart';
import 'package:flutter/material.dart';
import 'package:ap/paginaprincipal.dart';

class Registro extends StatelessWidget {
  Registro({super.key});

  final email = TextEditingController();
  final password = TextEditingController();
  final password2 = TextEditingController();

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
              LoginInput(
                controller: email,
                hintText: AutofillHints.email,
                obscureText: false,
              ),

              LoginInput(
                controller: password,
                hintText: 'Contraseña',
                obscureText: true,
              ),

              LoginInput(
                controller: password2,
                hintText: 'Repetir contraseña',
                obscureText: true,
              ),

              SizedBox(height: 20),

              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(
                    child: Text(
                      'Registrate',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  if (password2 == password) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Paginaprincipal(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Las contraseñas no coinciden'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Aceptar'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
