import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context){
    const primary = Color(0xFF7C3AED); // Morado claro para botones

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: primary,
      unselectedItemColor: Colors.white70,
      showUnselectedLabels: true,

      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: " B. Calientes"),

        BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label: "B. Frias"),

        BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: "Desayunos"),

        BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: "Pasteleria"),

        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: "Sandwiches"),

      ]
    );
  }
}