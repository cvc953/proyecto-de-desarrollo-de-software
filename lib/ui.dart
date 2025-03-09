import 'package:ap/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  bool states = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.deepPurple,
        title: Center(child: Text('Tareas')),
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(child: Icon(Icons.home, size: 80)),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('cuentas'),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: nuevatarea,
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }

  void nuevatarea() {}
}
