import 'package:flutter/material.dart';

BottomNavigationBar DogCardViewBottomNavigationBar() {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: ' ',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ' ')
    ]);
  }