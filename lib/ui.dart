import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
        title: Center(child: Text('Home')),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.blueAccent,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(Icons.add),
            label: 'Agregar tarea',
            onTap: () => print('Agregar tarea'),
          ),
          SpeedDialChild(
            child: Icon(Icons.edit),
            label: 'Editar tarea',
            onTap: () => print('Editar tarea'),
          ),
        ],
      ),
      //floatingActionButton: FloatingActionButton(
      //onPressed: nuevatarea,
      //backgroundColor: Colors.blueAccent,
      //child: const Icon(Icons.add),
      // ),
    );
  }

  void nuevatarea() {}
}
