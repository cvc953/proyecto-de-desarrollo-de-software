import 'package:ap/favoritos.dart';
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

  final List<Widget> _pages = [Home(), Favoritos(), Login()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navegacionbar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces),
            label: 'tareas en curso',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
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
