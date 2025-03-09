import 'package:ap/favoritos.dart';
import 'package:ap/calendario.dart';
import 'package:ap/login.dart';
import 'package:ap/ui.dart';
import 'package:flutter/material.dart';

class Paginaprincipal extends StatefulWidget {
  const Paginaprincipal({super.key});

  @override
  State<Paginaprincipal> createState() => _Paginaprincipal();
}

class _Paginaprincipal extends State<Paginaprincipal> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [Home(), Favoritos(), Calendario()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: _selectedIndex,
        onTap: _navegacionbar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'tareas',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces),
            label: 'tareas en curso',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'calendario',
            //backgroundColor: Colors.green,
          ),
          //BottomNavigationBarItem(
          //icon: Icon(Icons.person),
          //label: 'Cuenta',
          //backgroundColor: Colors.green,
          //),
        ],
      ),
    );
  }

  void _navegacionbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
