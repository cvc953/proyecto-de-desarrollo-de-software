import 'package:flutter/material.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.deepPurpleAccent,
        title: Center(child: Text('Tareas en curso')),
      ),
      body: Center(child: Column(children: [])),
    );
  }
}
